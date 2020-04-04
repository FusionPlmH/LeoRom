.class public Lcom/samsung/android/displaysolution/MdnieScenarioControlService;
.super Ljava/lang/Object;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;,
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;,
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;,
        Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_POLICY_UPDATED:Ljava/lang/String; = "sec.app.policy.UPDATE.burn_in_prevention"

.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final DISPLAY_COLOR_MANGED:I = 0x0

.field private static final MSC_ON:Ljava/lang/String; = "sys.mdniecontrolservice.mscon"

.field private static final PERSISTENT_PROPERTY_DISPLAY_COLOR:Ljava/lang/String; = "persist.sys.sf.native_mode"

.field private static final POLICY_ITEM:Ljava/lang/String; = "policy_item"

.field private static final POLICY_LIST:Ljava/lang/String; = "policy_list"

.field private static final POLICY_NAME:Ljava/lang/String; = "burn_in_prevention"

.field private static final SURFACE_FLINGER_TRANSACTION_DISPLAY_COLOR:I = 0x3ff

.field private static final TAG:Ljava/lang/String; = "MdnieScenarioControlService"


# instance fields
.field private ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

.field private ACL_CONTROL_THIRD_PARTY_APP_LIST:[Ljava/lang/String;

.field private ACTION_ACL_OFF_DEBOUNCE_MILLIS:I

.field private ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

.field private ACTION_BROWSER_BRIGHTNESS_DECREASE_MILLIS:I

.field private ACTION_BURN_IN_PREVENTION_FIRST_MILLIS:I

.field private ACTION_BURN_IN_PREVENTION_MILLIS:I

.field private ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

.field private ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

.field private ACTION_GAME_BURN_IN_PREVENTION_FIRST_MILLIS:I

.field private ACTION_GAME_BURN_IN_PREVENTION_MILLIS:I

.field private final ACTION_GAME_MODE_STATE_IN:Ljava/lang/String;

.field private ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

.field private final ACTION_GAME_MODE_STATE_OUT:Ljava/lang/String;

.field private ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

.field private final ACTION_MOVIE_PLAYER_STATE_IN:Ljava/lang/String;

.field private ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

.field private final ACTION_MOVIE_PLAYER_STATE_OUT:Ljava/lang/String;

.field private ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

.field private ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

.field private ACTION_PIXEL_SELF_MOVE_DEBOUNCE_MILLIS:I

.field private ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

.field private final ACTION_USER_ACTIVITY_SCREEN_DREAM:Ljava/lang/String;

.field private ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

.field private ACTION_VIDEO_APP_STATE_OUT_DEBOUNCE_MILLIS:I

.field private ANDROID_APP_LAUNCHER:[Ljava/lang/String;

.field private final AUTHORITY_URI:Landroid/net/Uri;

.field private BRIGHTNESS_DECREASE_STEP:I

.field private BROWSER_BRIGHTNESS_DECREASE_SUPPORT_VALUE:I

.field private BURN_IN_DISABLE_APP_LIST:[Ljava/lang/String;

.field private BURN_IN_PREVENTION_SUPPORT_VALUE:I

.field private BURN_IN_STEP:I

.field private BurnInPackageName:Ljava/lang/String;

.field private CAMERA_APP_LAUNCHER:[Ljava/lang/String;

.field private CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field private final DEBUG:Z

.field private DMB_APP_LAUNCHER:[Ljava/lang/String;

.field private EBOOK_APP_LAUNCHER:[Ljava/lang/String;

.field private EMAIL_APP_LAUNCHER:[Ljava/lang/String;

.field private FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

.field private FrontPackageName:Ljava/lang/String;

.field private GALLERY_APP_LAUNCHER:[Ljava/lang/String;

.field private GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

.field private GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

.field private GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

.field private GALLERY_APP_PACKAGENAME:Ljava/lang/String;

.field private GET_SYSTEM_SERVICES_MILLIS:I

.field private HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

.field private HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

.field private HDR_OFF_APP_LAUNCHER:[Ljava/lang/String;

.field private IS_CAMERA_APP_DEBOUNCE_MILLIS:I

.field private IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

.field private final MSG_ACL_FUNCTION_OFF:I

.field private final MSG_ACL_FUNCTION_ON:I

.field private final MSG_BROWSER_BRIGHTNESS_DECREASE_OFF:I

.field private final MSG_BROWSER_BRIGHTNESS_DECREASE_ON:I

.field private final MSG_BURN_IN_PREVENTION_OFF:I

.field private final MSG_BURN_IN_PREVENTION_ON:I

.field private final MSG_CHECK_MULTIWINDOW:I

.field private final MSG_FOREGROUND_APP:I

.field private final MSG_GET_SYSTEM_SERVICES:I

.field private final MSG_PIXEL_SELF_MOVE_OFF:I

.field private final MSG_PIXEL_SELF_MOVE_ON:I

.field private final MSG_RESCAN_FOREGROUND_APP:I

.field private final MSG_SET_BROWSER_MODE:I

.field private final MSG_SET_CAMERA_MODE:I

.field private final MSG_SET_DMB_MODE:I

.field private final MSG_SET_EBOOK_MODE:I

.field private final MSG_SET_EMAIL_MODE:I

.field private final MSG_SET_GALLERY_MODE:I

.field private final MSG_SET_GALLERY_OUT_MODE:I

.field private final MSG_SET_SAMSUNG_VIDEO_MODE:I

.field private final MSG_SET_SAMSUNG_VIDEO_OUT_MODE:I

.field private final MSG_SET_SNS_MODE:I

.field private final MSG_SET_UI_MODE:I

.field private final MSG_SET_VIDEO_MODE:I

.field private final MSG_SET_VIDEO_OPTION_MODE:I

.field private PIXEL_MOVE_PATTERN:I

.field private PIXEL_SELF_MOVE_MILLIS:I

.field private PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

.field private final POLICY_ITEM_URI:Landroid/net/Uri;

.field private final POLICY_LIST_URI:Landroid/net/Uri;

.field private READING_SCENARIO_PATH:Ljava/lang/String;

.field private ROUTE_TYPE_REMOTE_DISPLAY:I

.field private SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

.field private SCENARIO_VALUE:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private SELF_MOVE_DISABLE_APP_LIST:[Ljava/lang/String;

.field private final SELF_MOVE_DISABLE_SETTING:Ljava/lang/String;

.field private SNS_APP_LAUNCHER:[Ljava/lang/String;

.field private SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field private SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

.field private VIDEO_APP_LAUNCHER:[Ljava/lang/String;

.field private WRITE_HDR_PATH:Ljava/lang/String;

.field private WRITE_HDR_SUB_PATH:Ljava/lang/String;

.field private WRITE_HDR_TUNABLES_PATH:Ljava/lang/String;

.field private WRITE_PANEL_DIA:Ljava/lang/String;

.field private eventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

.field private isHDMIConnected:Z

.field private isLockScreenOn:Z

.field private mAclOffEnabled:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAppLaunchStateInDatabase:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoBrightnessMode:Z

.field private mAutoCurrentLimitOffState:Z

.field private mAutoCurrentLimitOffStateSNS:Z

.field private mAutoModeEnabled:Z

.field private mBrightnessAllAppServerState:Z

.field private mBrightnessBrowserAppServerState:Z

.field private mBrowserAppLauncher:Z

.field private mBrowserBrightnessArray:[I

.field private mBrowserBrightnessDecreaseEnabled:Z

.field private mBrowserBrightnessDefault:I

.field private mBrowserBrightnessStringArray:[Ljava/lang/String;

.field private mBrowserScenarioEnabled:Z

.field private mBurnInDisableAppEnabled:Z

.field private mBurnInPreventionACL:Z

.field private mBurnInPreventionEnabled:Z

.field private mCameraScenarioEnabled:Z

.field private mColorBlindEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

.field private mDMBScenarioEnabled:Z

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDeviceProvisioned:Z

.field private mDexModeState:Z

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

.field private mEBookScenarioIntented:Z

.field private mEbookScenarioEnabled:Z

.field private mEmailScenarioEnabled:Z

.field private mEnableCondition:Z

.field private mGalleryAppLauncher:Z

.field private mGalleryAppState:Z

.field private mGalleryOptionScenarioEnabled:Z

.field private mGalleryScenarioEnabled:Z

.field private mGameAppLauncher:Z

.field private mGameModeLauncher:Z

.field private mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHdrEffectEnabled:Z

.field private mHdrEffect_Perfomance_mode:I

.field private mHighBrightnessModeEnabled:Z

.field private mHighDynamicRangeEnabled:Z

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mIsFromCamera:Z

.field private mKeyGuardManager:Landroid/app/KeyguardManager;

.field private mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mMediaRouterManager:Landroid/media/MediaRouter;

.field private mMultiWindowEventListener:Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private mMultiWindowOn:Z

.field private mNegativeColorEnabled:Z

.field private mNotiManager:Landroid/app/NotificationManager;

.field private final mNumberBrowserBrightnessFactor:I

.field private mPbmVideoEnhancer:Z

.field private mPerfomanceMode:Z

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPlatformBrightnessValue:I

.field private mPolicyVersion:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerSavingModeEnabled:Z

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mSNSScenarioEnabled:Z

.field private mSVideoAppLauncher:Z

.field private mSVideoOptionScenarioEnabled:Z

.field private mSVideoScenarioEnabled:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenStateOn:Z

.field private mScreenWatchingReceiver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;

.field private mSelfMoveDisabled:Z

.field private mSelfMoveOffAppEnabled:Z

.field private mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

.field private mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field private mSettingCondition:Z

.field private mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

.field private mStatusbarManager:Landroid/app/StatusBarManager;

.field private mUIScenarioEnabled:Z

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseMdnieScenarioControlConfig:Z

.field private mUsePixelSelfMoveConfig:Z

.field private mVideoEnd:Z

.field private mVideoEndNotUI:Z

.field private mVideoModeCheck:Z

.field private mVideoScenarioEnabled:Z

.field private mWindowDivideOn:Z

.field private mWorkingCondition:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "content://com.samsung.android.sm.policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTHORITY_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "policy_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->POLICY_LIST_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "policy_item"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "burn_in_prevention"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->POLICY_ITEM_URI:Landroid/net/Uri;

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DEBUG:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_FOREGROUND_APP:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_RESCAN_FOREGROUND_APP:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_UI_MODE:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_BROWSER_MODE:I

    const/4 v2, 0x4

    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GALLERY_MODE:I

    const/4 v3, 0x5

    iput v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_CAMERA_MODE:I

    const/4 v3, 0x6

    iput v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_VIDEO_MODE:I

    const/4 v4, 0x7

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_SAMSUNG_VIDEO_MODE:I

    const/16 v4, 0x8

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_SAMSUNG_VIDEO_OUT_MODE:I

    const/16 v4, 0x9

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_EMAIL_MODE:I

    const/16 v4, 0xa

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_EBOOK_MODE:I

    const/16 v4, 0xb

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_DMB_MODE:I

    const/16 v4, 0xc

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_SNS_MODE:I

    const/16 v4, 0xd

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_GALLERY_OUT_MODE:I

    const/16 v4, 0xe

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_SET_VIDEO_OPTION_MODE:I

    const/16 v4, 0xf

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_GET_SYSTEM_SERVICES:I

    const/16 v5, 0x10

    iput v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_CHECK_MULTIWINDOW:I

    const/16 v5, 0x11

    iput v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_PIXEL_SELF_MOVE_ON:I

    const/16 v6, 0x12

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_PIXEL_SELF_MOVE_OFF:I

    const/16 v6, 0x13

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_BURN_IN_PREVENTION_ON:I

    const/16 v6, 0x14

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_BURN_IN_PREVENTION_OFF:I

    const/16 v6, 0x15

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_BROWSER_BRIGHTNESS_DECREASE_ON:I

    const/16 v6, 0x16

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_BROWSER_BRIGHTNESS_DECREASE_OFF:I

    const/16 v6, 0x17

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_ACL_FUNCTION_ON:I

    const/16 v6, 0x18

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->MSG_ACL_FUNCTION_OFF:I

    iput v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNumberBrowserBrightnessFactor:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPlatformBrightnessValue:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAppLaunchStateInDatabase:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffect_Perfomance_mode:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_PREVENTION_SUPPORT_VALUE:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BROWSER_BRIGHTNESS_DECREASE_SUPPORT_VALUE:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_ACL_OFF_DEBOUNCE_MILLIS:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_OUT_DEBOUNCE_MILLIS:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

    const v6, 0x116520

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_PIXEL_SELF_MOVE_DEBOUNCE_MILLIS:I

    const v6, 0xea60

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BURN_IN_PREVENTION_FIRST_MILLIS:I

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BURN_IN_PREVENTION_MILLIS:I

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_BURN_IN_PREVENTION_FIRST_MILLIS:I

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_BURN_IN_PREVENTION_MILLIS:I

    const v6, 0x927c0

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

    const v6, 0x1d4c0

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_MILLIS:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    const/16 v6, 0x1f40

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    const/16 v6, 0xbb8

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_MILLIS:I

    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ROUTE_TYPE_REMOTE_DISPLAY:I

    iput v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    iput v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_STEP:I

    iput v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    iput v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPolicyVersion:I

    const-string/jumbo v2, "screen_mode_automatic_setting"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    const-string/jumbo v2, "self_move_disable_setting"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SELF_MOVE_DISABLE_SETTING:Ljava/lang/String;

    const-string/jumbo v2, "screen_mode_setting"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    const-string v2, "ACTION_MOVIE_PLAYER_STATE_IN"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN:Ljava/lang/String;

    const-string v2, "ACTION_MOVIE_PLAYER_STATE_OUT"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT:Ljava/lang/String;

    const-string v2, "ACTION_GAME_MODE_STATE_IN"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN:Ljava/lang/String;

    const-string v2, "ACTION_GAME_MODE_STATE_OUT"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT:Ljava/lang/String;

    const-string v2, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_USER_ACTIVITY_SCREEN_DREAM:Ljava/lang/String;

    const-string v2, "/sys/class/mdnie/mdnie/scenario"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    const-string v2, "/sys/class/lcd/panel/dia"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_PANEL_DIA:Ljava/lang/String;

    const-string v2, "/sys/class/mdnie/mdnie/hdr"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_HDR_PATH:Ljava/lang/String;

    const-string v2, "/sys/class/mdnie/mdnie1/hdr"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_HDR_SUB_PATH:Ljava/lang/String;

    const-string v2, "/sys/class/lcd/panel/self_move"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    const-string v2, "/sys/module/hdr_tunables/parameters/tm_override_enable"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_HDR_TUNABLES_PATH:Ljava/lang/String;

    const-string v2, "com.sec.android.gallery3d"

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_PACKAGENAME:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BurnInPackageName:Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_MULTI_VIEW_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER_FROM_CAMERA:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SNS_APP_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_OFF_APP_LAUNCHER:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_THIRD_PARTY_APP_LIST:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SELF_MOVE_DISABLE_APP_LIST:[Ljava/lang/String;

    new-array v6, v0, [Ljava/lang/String;

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_DISABLE_APP_LIST:[Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEndNotUI:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWindowDivideOn:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPbmVideoEnhancer:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPerfomanceMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPowerSavingModeEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDeviceProvisioned:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoModeEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveDisabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEBookScenarioIntented:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSNSScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppLauncher:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoAppLauncher:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameModeLauncher:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverState:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isHDMIConnected:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameAppLauncher:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoCurrentLimitOffState:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoCurrentLimitOffStateSNS:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionACL:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveOffAppEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInDisableAppEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessAllAppServerState:Z

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessBrowserAppServerState:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    new-instance v6, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    new-instance v6, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;

    invoke-direct {v6, p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$2;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    new-instance v6, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$3;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->eventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDBHelper:Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;

    invoke-virtual {v6}, Lcom/samsung/android/displaysolution/DisplaySolutionDataBase;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplaySolutionDataBase:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "MdnieScenarioControlServiceThread"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    new-instance v6, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Looper;)V

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1120091

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x112009b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107003e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070056

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070041

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107004c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070040

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107005b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107005c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107005e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107004b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107004a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070049

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070055

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SNS_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107004e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107004f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070057

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_OFF_APP_LAUNCHER:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107003a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070039

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_THIRD_PARTY_APP_LIST:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107005a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SELF_MOVE_DISABLE_APP_LIST:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107003f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_DISABLE_APP_LIST:[Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0034

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_PREVENTION_SUPPORT_VALUE:I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0069

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0010

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_ACL_OFF_DEBOUNCE_MILLIS:I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0011

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_OUT_DEBOUNCE_MILLIS:I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0015

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0016

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0018

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0019

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_OUT_DEBOUNCE_MILLIS:I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0013

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_IN_DEBOUNCE_MILLIS:I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_MODE_STATE_OUT_DEBOUNCE_MILLIS:I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00c0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0017

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e006d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_GALLERY_FROM_CAMERA_DEBOUNCE_MILLIS:I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e006c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070070

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessStringArray:[Ljava/lang/String;

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    move v3, v0

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessStringArray:[Ljava/lang/String;

    array-length v6, v6

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessStringArray:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-direct {v3, p0, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    new-instance v3, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    new-instance v3, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v3}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    new-instance v3, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MultiWindowEventListener;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;)V

    iput-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowEventListener:Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowEventListener:Lcom/samsung/android/multiwindow/IMultiWindowEventListener;

    invoke-virtual {v3, v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-string v8, "device_provisioned"

    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v8, v0, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v8, "low_power"

    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v8, v0, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v8, "screen_mode_automatic_setting"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v8, v0, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v8, "self_move_disable_setting"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v8, v0, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v8, "screen_brightness"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v8, v0, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v8, "screen_brightness_mode"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v8, v0, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v8, "high_contrast"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v8, v0, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v8, "lcd_curtain"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v8, v0, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v8, "color_blind"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v8, v0, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v8, "ultra_powersaving_mode"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v8, v0, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v8, "high_brightness_mode_pms_enter"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingsObserver:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$SettingsObserver;

    invoke-virtual {v3, v8, v0, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "ACTION_MOVIE_PLAYER_STATE_IN"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "ACTION_MOVIE_PLAYER_STATE_OUT"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "ACTION_GAME_MODE_STATE_IN"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "ACTION_GAME_MODE_STATE_OUT"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "com.samsung.server.PowerManagerService.action.USER_ACTIVITY"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v8, "sec.app.policy.UPDATE.burn_in_prevention"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    new-instance v9, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;

    invoke-direct {v9, p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Lcom/samsung/android/displaysolution/MdnieScenarioControlService$1;)V

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v11, v0

    invoke-virtual/range {v8 .. v13}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v2, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    int-to-long v8, v8

    add-long/2addr v8, v6

    invoke-virtual {v2, v4, v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v2, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_MILLIS:I

    int-to-long v8, v4

    add-long/2addr v8, v6

    invoke-virtual {v2, v5, v8, v9}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_1
    const-string/jumbo v2, "sys.mdniecontrolservice.mscon"

    const-string v4, "false"

    invoke-static {v2, v4}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUseMdnieScenarioControlConfig:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "sys.mdniecontrolservice.mscon"

    const-string/jumbo v4, "true"

    invoke-static {v2, v4}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_MILLIS:I

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$1702(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/app/ActivityManager;)Landroid/app/ActivityManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameAppLauncher:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameAppLauncher:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_BURN_IN_PREVENTION_FIRST_MILLIS:I

    return v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    return p1
.end method

.method static synthetic access$2600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_platform_brightness_value()I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_FIRST_MILLIS:I

    return v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->updatePolicyScpm()V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/app/SemMultiWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/hardware/display/SemMdnieManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_NOTIFY_MULTIWINDOW_STATUS_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BurnInPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BURN_IN_PREVENTION_FIRST_MILLIS:I

    return v0
.end method

.method static synthetic access$3802(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverState:Z

    return p1
.end method

.method static synthetic access$3902(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/media/MediaRouter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->monitorForegroundActivity(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$4100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoMode(Z)V

    return-void
.end method

.method static synthetic access$4300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrowserMode()V

    return-void
.end method

.method static synthetic access$4400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setGalleryMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setCameraMode()V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEmailMode()V

    return-void
.end method

.method static synthetic access$4700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setEbookMode()V

    return-void
.end method

.method static synthetic access$4800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setDMBMode()V

    return-void
.end method

.method static synthetic access$4900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSNSMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setUIMode()V

    return-void
.end method

.method static synthetic access$5100(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setSVideoOptionMode()V

    return-void
.end method

.method static synthetic access$5200(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getSystemServices()V

    return-void
.end method

.method static synthetic access$5300(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->pixel_self_move(Z)V

    return-void
.end method

.method static synthetic access$5400(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->acl_function(ZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/samsung/android/displaysolution/MdnieScenarioControlService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mKeyGuardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method private acl_function(ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChangedWithBrightness(Z)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    :goto_1
    return-void
.end method

.method private browser_brightness_decrease_function(I)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    add-int/lit8 v4, p1, 0x1

    if-ge v3, v4, :cond_2

    iget v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    if-ne v4, v3, :cond_1

    const-string v4, "MdnieScenarioControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Enabled Browser Brightness Decrease Mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , MAX  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "browser_brightness_on_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    if-ge v3, p1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v4, 0x15

    invoke-virtual {v2, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BROWSER_BRIGHTNESS_DECREASE_MILLIS:I

    int-to-long v5, v5

    add-long/2addr v5, v0

    invoke-virtual {v2, v4, v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    goto :goto_1

    :cond_0
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getPolicyVersionFromScpm()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "policyVersion"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v2, "policyName=?"

    const-string v3, "burn_in_prevention"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v7

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->POLICY_LIST_URI:Landroid/net/Uri;

    const-string/jumbo v6, "policyName=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v1, v3

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    :cond_0
    if-eqz v1, :cond_2

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_2

    :goto_1
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2

    :goto_2
    nop

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_3
    return-object v0
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    const/16 v1, 0x80

    const/16 v2, 0x80

    new-array v3, v2, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v2, :cond_0

    aput-byte v6, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v5, v2

    if-lez v5, :cond_2

    new-instance v2, Ljava/lang/String;

    add-int/lit8 v7, v5, -0x1

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v4, v2

    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :goto_2
    nop

    :try_start_1
    const-string v6, "MdnieScenarioControlService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " , in : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " , value : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " , length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_5

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    goto :goto_7

    :catch_1
    move-exception v2

    const-string v6, "MdnieScenarioControlService"

    const-string v7, "File Close error"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :goto_4
    if-eqz v0, :cond_3

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v6

    const-string v7, "MdnieScenarioControlService"

    const-string v8, "File Close error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    throw v2

    :cond_4
    :goto_6
    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :cond_5
    :goto_7
    return-object v4
.end method

.method private getSystemServices()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActivityManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "mDNIe"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMdnieManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMediaRouterManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "DisplaySolution"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSemDisplaySolutionManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->registerProcessObserver()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    const-string v0, "MdnieScenarioControlService"

    const-string v1, "Success to register all of the services system."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GET_SYSTEM_SERVICES_MILLIS:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    const-string v2, "MdnieScenarioControlService"

    const-string v3, "Failure to register all of the services system."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    return-void
.end method

.method private getting_Hdmi_Connected()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayManager : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isHDMIConnected:Z

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v1

    nop

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Landroid/view/Display;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isHDMIConnected:Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isHDMIConnected:Z

    return v0
.end method

.method private getting_knox_mode_enabled()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedUser()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    return v0
.end method

.method private getting_media_resource_info()Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0, v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-virtual {v2, v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->getMediaResourceInfo(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v1

    :catch_0
    move-exception v0

    const-string v2, "MdnieScenarioControlService"

    const-string v3, "failed to getMediaResourceInfo"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-virtual {v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->release()V

    return v1
.end method

.method private getting_pbm_video_enhancer()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pbm_video_enhancer"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPbmVideoEnhancer:Z

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPbmVideoEnhancer:Z

    return v1
.end method

.method private getting_perfomance_mode_enabled()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_HIGH_PERFORMANCE_MODE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPerfomanceMode:Z

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPerfomanceMode:Z

    return v0
.end method

.method private getting_perfomance_mode_value()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sem_perfomance_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffect_Perfomance_mode:I

    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffect_Perfomance_mode:I

    return v1
.end method

.method private getting_platform_brightness_value()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPlatformBrightnessValue:I

    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPlatformBrightnessValue:I

    return v1
.end method

.method private getting_setting_value()Z
    .locals 6

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    const-string v4, "hdr_effect"

    const/4 v5, -0x2

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    const-string v2, "MdnieScenarioControlService"

    const-string v3, "Use Current User"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    const-string v4, "hdr_effect"

    invoke-static {v1, v4, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    const-string v2, "MdnieScenarioControlService"

    const-string v3, "Use Owner User"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHdrEffectEnabled:Z

    return v2
.end method

.method private mdnie_reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppLauncher:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoAppLauncher:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSNSScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    return-void
.end method

.method private monitorForegroundActivity(Ljava/lang/String;II)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    iput-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveOffAppEnabled:Z

    iput-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInDisableAppEnabled:Z

    move v14, v13

    :goto_0
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v15

    if-ge v14, v15, :cond_1

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ANDROID_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v15, v15, v14

    invoke-virtual {v1, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    move v14, v13

    :goto_2
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v15

    if-ge v14, v15, :cond_3

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v15, v15, v14

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    const/4 v11, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    move v14, v13

    :goto_4
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v15

    if-ge v14, v15, :cond_5

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CHROMEBROWSER_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v15, v15, v14

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v11, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    move v14, v13

    :goto_6
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v15

    if-ge v14, v15, :cond_7

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v15, v15, v14

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    const/4 v8, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_7
    :goto_7
    move v14, v13

    :goto_8
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v15

    if-ge v14, v15, :cond_9

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->CAMERA_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v15, v15, v14

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_8

    const/4 v10, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_9
    :goto_9
    move v14, v13

    :goto_a
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v15

    if-ge v14, v15, :cond_b

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v15, v15, v14

    invoke-virtual {v1, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v9, 0x1

    goto :goto_b

    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_b
    :goto_b
    move v14, v13

    :goto_c
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    array-length v15, v15

    if-ge v14, v15, :cond_d

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SVIDEO_APP_OPTION_LAUNCHER:[Ljava/lang/String;

    aget-object v15, v15, v14

    invoke-virtual {v1, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_c

    const/4 v12, 0x1

    goto :goto_d

    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    :cond_d
    :goto_d
    move v14, v13

    :goto_e
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v15

    if-ge v14, v15, :cond_f

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->VIDEO_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v15, v15, v14

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    const/4 v6, 0x1

    goto :goto_f

    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    :cond_f
    :goto_f
    move v14, v13

    :goto_10
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v15

    if-ge v14, v15, :cond_11

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EMAIL_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v15, v15, v14

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_10

    const/4 v5, 0x1

    goto :goto_11

    :cond_10
    add-int/lit8 v14, v14, 0x1

    goto :goto_10

    :cond_11
    :goto_11
    move v14, v13

    :goto_12
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v15

    if-ge v14, v15, :cond_13

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->EBOOK_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v15, v15, v14

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_12

    const/4 v7, 0x1

    goto :goto_13

    :cond_12
    add-int/lit8 v14, v14, 0x1

    goto :goto_12

    :cond_13
    :goto_13
    move v14, v13

    :goto_14
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v15

    if-ge v14, v15, :cond_15

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->DMB_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v15, v15, v14

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    add-int/lit8 v14, v14, 0x1

    goto :goto_14

    :cond_15
    :goto_15
    move v14, v13

    :goto_16
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SNS_APP_LAUNCHER:[Ljava/lang/String;

    array-length v15, v15

    if-ge v14, v15, :cond_17

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SNS_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v15, v15, v14

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_16

    const/4 v4, 0x1

    goto :goto_17

    :cond_16
    add-int/lit8 v14, v14, 0x1

    goto :goto_16

    :cond_17
    :goto_17
    move v14, v13

    :goto_18
    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SELF_MOVE_DISABLE_APP_LIST:[Ljava/lang/String;

    array-length v15, v15

    const/4 v13, 0x1

    if-ge v14, v15, :cond_19

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SELF_MOVE_DISABLE_APP_LIST:[Ljava/lang/String;

    aget-object v15, v15, v14

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_18

    iget-boolean v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    if-eqz v15, :cond_18

    iput-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveOffAppEnabled:Z

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v13, 0x12

    invoke-virtual {v15, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v15, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto :goto_19

    :cond_18
    add-int/lit8 v14, v14, 0x1

    const/4 v13, 0x0

    goto :goto_18

    :cond_19
    :goto_19
    const/16 v16, 0x0

    :goto_1a
    move/from16 v13, v16

    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_DISABLE_APP_LIST:[Ljava/lang/String;

    array-length v14, v14

    if-ge v13, v14, :cond_1b

    iget-object v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_DISABLE_APP_LIST:[Ljava/lang/String;

    aget-object v14, v14, v13

    invoke-virtual {v1, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1a

    const/4 v14, 0x1

    iput-boolean v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInDisableAppEnabled:Z

    goto :goto_1b

    :cond_1a
    add-int/lit8 v16, v13, 0x1

    goto :goto_1a

    :cond_1b
    :goto_1b
    iget-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v13, :cond_1d

    if-eqz v11, :cond_1d

    iget-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    if-nez v13, :cond_1c

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    iget-object v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/4 v14, 0x3

    invoke-virtual {v13, v14}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v13, v14}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    :cond_1c
    move/from16 v17, v2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v18, v8

    goto/16 :goto_1e

    :cond_1d
    iget-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v13, :cond_20

    if-eqz v8, :cond_20

    iget-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    if-nez v13, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v13, 0x1

    iput-boolean v13, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/4 v1, 0x4

    invoke-virtual {v15, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v15, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_DETAIL_VIEW_STATE_IN_DEBOUNCE_MILLIS:I

    move/from16 v17, v2

    int-to-long v1, v1

    add-long/2addr v1, v13

    move/from16 v18, v8

    const/4 v8, 0x4

    invoke-virtual {v15, v8, v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    nop

    :cond_1e
    :goto_1c
    move/from16 v19, v3

    move/from16 v20, v4

    goto/16 :goto_1e

    :cond_1f
    move/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v3

    move/from16 v20, v4

    goto/16 :goto_1e

    :cond_20
    move/from16 v17, v2

    move/from16 v18, v8

    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_21

    if-eqz v10, :cond_21

    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    if-nez v1, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/4 v13, 0x5

    invoke-virtual {v8, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->IS_CAMERA_APP_DEBOUNCE_MILLIS:I

    int-to-long v14, v14

    add-long/2addr v14, v1

    invoke-virtual {v8, v13, v14, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_1c

    :cond_21
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_23

    if-eqz v9, :cond_23

    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    if-nez v1, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v8, "MdnieScenarioControlService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "in video Real Multi Window State : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v8, :cond_22

    iget-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v13, 0x8

    invoke-virtual {v8, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_OUT_DEBOUNCE_MILLIS:I

    int-to-long v14, v14

    add-long/2addr v14, v1

    invoke-virtual {v8, v13, v14, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_1d

    :cond_22
    iget-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/4 v13, 0x7

    invoke-virtual {v8, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_MOVIE_PLAYER_STATE_IN_DEBOUNCE_MILLIS:I

    int-to-long v14, v14

    add-long/2addr v14, v1

    invoke-virtual {v8, v13, v14, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :goto_1d
    goto/16 :goto_1c

    :cond_23
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_24

    if-eqz v12, :cond_24

    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    if-nez v1, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1c

    :cond_24
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_25

    if-eqz v6, :cond_25

    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    if-nez v1, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/4 v13, 0x6

    invoke-virtual {v8, v13}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v14, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_VIDEO_APP_STATE_IN_DEBOUNCE_MILLIS:I

    int-to-long v14, v14

    add-long/2addr v14, v1

    invoke-virtual {v8, v13, v14, v15}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_1c

    :cond_25
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_26

    if-eqz v5, :cond_26

    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    if-nez v1, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1c

    :cond_26
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_27

    if-eqz v7, :cond_27

    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    if-nez v1, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1c

    :cond_27
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_28

    if-eqz v3, :cond_28

    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    if-nez v1, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1c

    :cond_28
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v1, :cond_29

    if-eqz v4, :cond_29

    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSNSScenarioEnabled:Z

    if-nez v1, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSNSScenarioEnabled:Z

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1c

    :cond_29
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    const/4 v2, 0x2

    if-nez v1, :cond_2a

    if-eqz v17, :cond_2a

    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    if-nez v1, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    const-string v1, "MdnieScenarioControlService"

    const-string/jumbo v8, "setUIMode from UI function(2)"

    invoke-static {v1, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1c

    :cond_2a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->scenario_enable_reset()V

    const-string v1, "MdnieScenarioControlService"

    const-string/jumbo v8, "setUIMode from UI function(3)"

    invoke-static {v1, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v1, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v8, v0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_SET_UI_MODE_DEBOUNCE_MILLIS:I

    move/from16 v19, v3

    move/from16 v20, v4

    int-to-long v3, v8

    add-long/2addr v3, v13

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :goto_1e
    return-void
.end method

.method private pixel_self_move(Z)V
    .locals 6

    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pixel_self_move enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mNegativeColorEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mSelfMoveDisabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveDisabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mSelfMoveOffAppEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveOffAppEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveDisabled:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveOffAppEnabled:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_PIXEL_SELF_MOVE_DEBOUNCE_MILLIS:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setPixelSelfMovePattern(I)V

    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    iput v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    const/4 v5, 0x3

    if-ne v2, v3, :cond_1

    iput v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    const/4 v3, 0x4

    if-ne v2, v5, :cond_2

    iput v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    if-ne v2, v3, :cond_4

    iput v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_MOVE_PATTERN:I

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setPixelSelfMovePattern(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private receive_screen_off_intent()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    const/16 v1, 0x13

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    const/16 v1, 0x15

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method private receive_screen_on_intent()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    if-eqz v2, :cond_0

    move v0, v1

    nop

    :cond_0
    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setUIMode()V

    return-void
.end method

.method private registerProcessObserver()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v2, "desktopmode"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDesktopModeManager : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->eventListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setting_is_changed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "failed to registerProcessObserver"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private scenario_enable_reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUIScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDMBScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSNSScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEmailScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEbookScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCameraScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryOptionScenarioEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSVideoOptionScenarioEnabled:Z

    return-void
.end method

.method private setAclMode(ZZZ)V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_ACL_OFF_DEBOUNCE_MILLIS:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->acl_function(ZZ)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_3

    invoke-direct {p0, v2, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->acl_function(ZZ)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v2, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private setAudioHDR(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->semSetAudioHDR(Z)V

    :cond_1
    return-void
.end method

.method private setBrightnessScaleFactor(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string v1, "hdr_effect_off"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling SemDisplaySolutionManager API(setMultipleScreenBrightness("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string v1, "hdr_effect_on_1"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling SemDisplaySolutionManager API(setMultipleScreenBrightness("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string v1, "hdr_effect_on_2"

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling SemDisplaySolutionManager API(setMultipleScreenBrightness("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private setBrowserMode()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "BROWSER_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setBrowserMode from Browser function"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private setCameraMode()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mIsFromCamera:Z

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "CAMERA_APP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setCameraMode from Camera function"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoEnd:Z

    :cond_2
    :goto_1
    return-void
.end method

.method private setDMBMode()V
    .locals 14

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_perfomance_mode_value()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ROUTE_TYPE_REMOTE_DISPLAY:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_Hdmi_Connected()Z

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_setting_value()Z

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_pbm_video_enhancer()Z

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    move-result v5

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_perfomance_mode_enabled()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v9

    if-ne v9, v7, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v9

    if-eqz v9, :cond_0

    move v9, v7

    goto :goto_1

    :cond_0
    move v9, v8

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    const-string v10, "MdnieScenarioControlService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hdr_effect_enable : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , perfomance_mode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " , SemFloatingFeature : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , pbm_video_enhancer : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0xf

    const/4 v11, 0x2

    if-eqz v6, :cond_a

    if-eqz v0, :cond_a

    if-eq v0, v7, :cond_a

    const/4 v12, 0x3

    if-ne v0, v12, :cond_1

    goto/16 :goto_4

    :cond_1
    if-ne v0, v11, :cond_13

    if-eqz v4, :cond_8

    iget-boolean v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v12, :cond_5

    iget-boolean v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v12, :cond_13

    iget-object v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v13, "15"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    iget-object v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v13, "VIDEO_ENHANCER_THIRD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_13

    iget-boolean v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v12, :cond_2

    invoke-direct {p0, v8, v8, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_2
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    const-string v10, "MdnieScenarioControlService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mHdmiState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " , mDexModeState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " , mMirroringState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_4

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    :goto_3
    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from DMB function(VIDEO_ENHANCER_THIRD)"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_5
    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v10, :cond_6

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v10, :cond_13

    :cond_6
    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "VIDEO_APP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v10, :cond_7

    invoke-direct {p0, v8, v8, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_7
    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from DMB function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_8
    if-nez v4, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "VIDEO_APP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v10, :cond_9

    invoke-direct {p0, v8, v8, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_9
    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from DMB function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_a
    :goto_4
    if-eqz v3, :cond_11

    iget-boolean v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v12, :cond_e

    iget-boolean v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v12, :cond_e

    iget-object v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v12, :cond_13

    iget-object v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v13, "15"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    iget-object v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v13, "VIDEO_ENHANCER_THIRD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_13

    iget-boolean v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v12, :cond_b

    invoke-direct {p0, v8, v8, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_b
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    const-string v10, "MdnieScenarioControlService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mHdmiState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " , mDexModeState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " , mMirroringState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_d

    if-eqz v9, :cond_c

    goto :goto_5

    :cond_c
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_6

    :cond_d
    :goto_5
    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    :goto_6
    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from DMB function(VIDEO_ENHANCER_THIRD)"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_e
    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v10, :cond_f

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v10, :cond_13

    :cond_f
    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "VIDEO_APP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v10, :cond_10

    invoke-direct {p0, v8, v8, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_10
    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from DMB function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_11
    if-nez v3, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "VIDEO_APP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v10, :cond_12

    invoke-direct {p0, v8, v8, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_12
    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from DMB function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_7
    return-void
.end method

.method private setEbookMode()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "eBOOK_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_0
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setEbookMode from Ebook function"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private setEmailMode()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "EMAIL_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_0
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setEmailMode from Email function"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private setGalleryMode(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_GALLERY_APP_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v3, "6"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v3, "GALLERY_APP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    if-eqz v2, :cond_2

    invoke-direct {p0, v0, v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_2
    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setGalleryMode from Gallery function"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private setGameMode(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "LOW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "11"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "GAME_LOW_APP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    goto/16 :goto_1

    :cond_0
    const-string v0, "MID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "12"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "GAME_MID_APP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    goto :goto_1

    :cond_1
    const-string v0, "HIGH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "13"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "GAME_HIGH_APP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    goto :goto_1

    :cond_2
    const-string v0, "OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "UI_APP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, v1, v1, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_4
    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v0, "OUT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setUIMode from Game function"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setGameMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") from Game function"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private setMdnieScenarioMode(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling MdnieManager API(setContentMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    const/16 v1, 0x15

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setPixelSelfMovePattern(I)V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPixelSelfMovePattern : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->PIXEL_SELF_MOVE_PATH:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    :cond_4
    :goto_0
    return-void
.end method

.method private setSNSMode(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_THIRD_PARTY_APP_LIST:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACL_CONTROL_THIRD_PARTY_APP_LIST:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v3, "4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v3, "CAMERA_APP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_2
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setSnsMode(Same Camera Mode) from Sns function"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private setSVideoMode(Z)V
    .locals 13

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_14

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_perfomance_mode_value()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    iget v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ROUTE_TYPE_REMOTE_DISPLAY:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_Hdmi_Connected()Z

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_setting_value()Z

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_pbm_video_enhancer()Z

    move-result v5

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    move-result v6

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_perfomance_mode_enabled()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v9

    if-ne v9, v8, :cond_0

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v9

    if-eqz v9, :cond_0

    move v9, v8

    goto :goto_1

    :cond_0
    move v9, v0

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    const-string v10, "MdnieScenarioControlService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hdr_effect_enable : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , perfomance_mode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " , SemFloatingFeature : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , pbm_video_enhancer : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , mVideoModeCheck : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0xe

    if-eqz v7, :cond_a

    if-eqz v1, :cond_a

    if-eq v1, v8, :cond_a

    const/4 v11, 0x3

    if-ne v1, v11, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v11, 0x2

    if-ne v1, v11, :cond_13

    if-eqz v5, :cond_8

    iget-boolean v11, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v11, :cond_5

    iget-boolean v11, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v11, :cond_5

    iget-boolean v11, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v11, :cond_13

    iget-object v11, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v12, "14"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    iget-object v11, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v12, "VIDEO_ENHANCER"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_13

    iget-boolean v11, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v11, :cond_2

    invoke-direct {p0, v0, v0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_2
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    const-string v10, "MdnieScenarioControlService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mHdmiState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , mDexModeState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , mMirroringState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_4

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    :goto_3
    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from Video function(VIDEO_ENHANCER)"

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_5
    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v10, :cond_6

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v10, :cond_6

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    if-nez v10, :cond_13

    :cond_6
    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "VIDEO_APP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v10, :cond_7

    invoke-direct {p0, v0, v0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_7
    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from SVideo function"

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_8
    if-nez v5, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "VIDEO_APP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v10, :cond_9

    invoke-direct {p0, v0, v0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_9
    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from SVideo function"

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_a
    :goto_4
    if-eqz v4, :cond_11

    iget-boolean v11, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v11, :cond_e

    iget-boolean v11, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v11, :cond_e

    iget-boolean v11, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v11, :cond_13

    iget-object v11, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v12, "14"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_13

    iget-object v11, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v12, "VIDEO_ENHANCER"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_13

    iget-boolean v11, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v11, :cond_b

    invoke-direct {p0, v0, v0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_b
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    const-string v10, "MdnieScenarioControlService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mHdmiState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , mDexModeState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , mMirroringState : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_d

    if-eqz v9, :cond_c

    goto :goto_5

    :cond_c
    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_6

    :cond_d
    :goto_5
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    :goto_6
    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from Video function(VIDEO_ENHANCER)"

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_e
    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v10, :cond_f

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v10, :cond_f

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mVideoModeCheck:Z

    if-nez v10, :cond_13

    :cond_f
    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "VIDEO_APP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v10, :cond_10

    invoke-direct {p0, v0, v0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_10
    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from SVideo function"

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_11
    if-nez v4, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "VIDEO_APP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v10, :cond_12

    invoke-direct {p0, v0, v0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_12
    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from SVideo function"

    invoke-static {v0, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_7
    goto :goto_8

    :cond_14
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->GALLERY_APP_PACKAGENAME:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v2, "UI_APP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v1, :cond_15

    invoke-direct {p0, v0, v0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_15
    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setUIMode from SVideo function"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_8
    return-void
.end method

.method private setSVideoOptionMode()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "VIDEO_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setVideoMode from SVideoOption function"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private setUIMode()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameModeLauncher:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v1, "UI_APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1, v1, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "setUIMode from UI function"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private setVideoAppLaunch(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    const-string v1, "DisplaySolution"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setVideoModeEnable(Z)V

    :cond_1
    return-void
.end method

.method private setVideoMode(Ljava/lang/String;)V
    .locals 14

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->READING_SCENARIO_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_perfomance_mode_value()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMediaRouterManager:Landroid/media/MediaRouter;

    iget v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ROUTE_TYPE_REMOTE_DISPLAY:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_Hdmi_Connected()Z

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_setting_value()Z

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_pbm_video_enhancer()Z

    move-result v4

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_knox_mode_enabled()Z

    move-result v5

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_perfomance_mode_enabled()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v9

    if-ne v9, v7, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v9

    if-eqz v9, :cond_0

    move v9, v7

    goto :goto_1

    :cond_0
    move v9, v8

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mdnie_reset()V

    const-string v10, "MdnieScenarioControlService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "hdr_effect_enable : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , perfomance_mode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " , SemFloatingFeature : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , pbm_video_enhancer : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0xf

    const/4 v11, 0x2

    if-eqz v6, :cond_a

    if-eqz v0, :cond_a

    if-eq v0, v7, :cond_a

    const/4 v12, 0x3

    if-ne v0, v12, :cond_1

    goto/16 :goto_4

    :cond_1
    if-ne v0, v11, :cond_13

    if-eqz v4, :cond_8

    iget-boolean v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v12, :cond_5

    iget-boolean v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v12, :cond_13

    iget-object v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v13, "15"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    iget-object v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v13, "VIDEO_ENHANCER_THIRD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_13

    iget-boolean v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v12, :cond_2

    invoke-direct {p0, v8, v8, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_2
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    const-string v10, "MdnieScenarioControlService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mHdmiState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " , mDexModeState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " , mMirroringState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_4

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_3

    :cond_4
    :goto_2
    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    :goto_3
    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from Video function(VIDEO_ENHANCER_THIRD)"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_5
    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v10, :cond_6

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v10, :cond_13

    :cond_6
    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "VIDEO_APP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v10, :cond_7

    invoke-direct {p0, v8, v8, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_7
    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from Video function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_8
    if-nez v4, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "VIDEO_APP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v10, :cond_9

    invoke-direct {p0, v8, v8, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_9
    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from Video function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_a
    :goto_4
    if-eqz v3, :cond_11

    iget-boolean v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v12, :cond_e

    iget-boolean v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v12, :cond_e

    iget-object v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v12, :cond_13

    iget-object v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v13, "15"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_13

    iget-object v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v13, "VIDEO_ENHANCER_THIRD"

    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_13

    iget-boolean v12, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v12, :cond_b

    invoke-direct {p0, v8, v8, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_b
    invoke-direct {p0, v10}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    const-string v10, "MdnieScenarioControlService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mHdmiState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " , mDexModeState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDexModeState:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " , mMirroringState : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_d

    if-eqz v9, :cond_c

    goto :goto_5

    :cond_c
    invoke-direct {p0, v11}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    goto :goto_6

    :cond_d
    :goto_5
    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    :goto_6
    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from Video function(VIDEO_ENHANCER_THIRD)"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_e
    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v10, :cond_f

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-eqz v10, :cond_13

    :cond_f
    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "VIDEO_APP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v10, :cond_10

    invoke-direct {p0, v8, v8, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_10
    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from Video function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_11
    if-nez v3, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    if-eqz v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "1"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-object v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->SCENARIO_VALUE:Ljava/lang/String;

    const-string v11, "VIDEO_APP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    iget-boolean v10, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAclOffEnabled:Z

    if-eqz v10, :cond_12

    invoke-direct {p0, v8, v8, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAclMode(ZZZ)V

    :cond_12
    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setMdnieScenarioMode(I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setBrightnessScaleFactor(I)V

    invoke-direct {p0, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setAudioHDR(Z)V

    invoke-direct {p0, v7}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->setVideoAppLaunch(Z)V

    iput-boolean v8, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    const-string v7, "MdnieScenarioControlService"

    const-string/jumbo v8, "setVideoMode from Video function"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_7
    return-void
.end method

.method private set_wcg_property(I)V
    .locals 5

    const-string v0, "MdnieScenarioControlService"

    const-string/jumbo v1, "set_wcg_property()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WCG_Floating : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_LCD_SUPPORT_WIDE_COLOR_GAMUT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WCG_Csc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_SupportDefaultScreenMode6500k"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_WIDE_COLOR_GAMUT"

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SupportDefaultScreenMode6500k"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.sys.sf.native_mode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v2, 0x3ff

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "MdnieScenarioControlService"

    const-string v4, "Failed to set display color"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_0
    :goto_2
    return-void
.end method

.method private setting_is_changed()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDeviceProvisioned:Z

    const-string v1, "low_power"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPowerSavingModeEnabled:Z

    const-string/jumbo v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoModeEnabled:Z

    const-string/jumbo v1, "self_move_disable_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    move v1, v3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveDisabled:Z

    const-string v1, "high_contrast"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_4

    move v1, v3

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    const-string v1, "lcd_curtain"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_5

    move v1, v3

    goto :goto_5

    :cond_5
    move v1, v2

    :goto_5
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    const-string v1, "color_blind"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_6

    move v1, v3

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_7

    move v1, v3

    goto :goto_7

    :cond_7
    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    const-string v1, "high_brightness_mode_pms_enter"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_8

    move v1, v3

    goto :goto_8

    :cond_8
    move v1, v2

    :goto_8
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_9

    move v1, v3

    goto :goto_9

    :cond_9
    move v1, v2

    :goto_9
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenCurtainEnabled:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mColorBlindEnabled:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUltraPowerSavingModeEnabled:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoModeEnabled:Z

    if-eqz v1, :cond_a

    move v1, v3

    goto :goto_a

    :cond_a
    move v1, v2

    :goto_a
    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSettingCondition:Z

    if-eqz v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mWorkingCondition:Z

    if-eqz v1, :cond_b

    goto :goto_b

    :cond_b
    move v3, v2

    :goto_b
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    const-string v1, "MdnieScenarioControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDeviceProvisioned : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDeviceProvisioned:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mDeviceProvisioned:Z

    if-nez v1, :cond_c

    invoke-direct {p0, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->set_wcg_property(I)V

    :cond_c
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mEnableCondition:Z

    if-eqz v1, :cond_e

    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :cond_d
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v3, -0x1

    invoke-interface {v1, v3, v2, v2}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_c

    :catch_0
    move-exception v1

    const-string v2, "MdnieScenarioControlService"

    const-string v3, "failed to onForegroundActivitiesChanged"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    goto :goto_d

    :cond_e
    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :cond_f
    :goto_d
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-nez v1, :cond_11

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    :cond_11
    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mUsePixelSelfMoveConfig:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mNegativeColorEnabled:Z

    if-nez v1, :cond_12

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSelfMoveDisabled:Z

    if-eqz v1, :cond_13

    :cond_12
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    :cond_13
    return-void
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    nop

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :goto_0
    nop

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v3

    :cond_0
    return v3
.end method

.method private updatePolicyScpm()V
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getPolicyVersionFromScpm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_5

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "MdnieScenarioControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updatePolicyScpm fail(1) : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v3, "MdnieScenarioControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePolicyScpm : PolicyVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , LastPolicyVersion : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPolicyVersion:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPolicyVersion:I

    if-ge v3, v2, :cond_5

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->POLICY_ITEM_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "brightness_all_app"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "MdnieScenarioControlService"

    const-string/jumbo v7, "updatePolicyScpm brightness_all_app - on"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessAllAppServerState:Z

    goto :goto_2

    :cond_0
    const-string/jumbo v3, "off"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "MdnieScenarioControlService"

    const-string/jumbo v6, "updatePolicyScpm brightness_all_app - off"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessAllAppServerState:Z

    goto :goto_2

    :cond_1
    const-string v6, "brightness_browser_app"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "MdnieScenarioControlService"

    const-string/jumbo v7, "updatePolicyScpm brightness_browser_app - on"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessBrowserAppServerState:Z

    goto :goto_2

    :cond_2
    const-string/jumbo v3, "off"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "MdnieScenarioControlService"

    const-string/jumbo v6, "updatePolicyScpm brightness_browser_app - off"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessBrowserAppServerState:Z

    :cond_3
    :goto_2
    goto :goto_1

    :cond_4
    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mPolicyVersion:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz v0, :cond_6

    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_2
    const-string v2, "MdnieScenarioControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePolicyScpm fail(2) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    :goto_4
    return-void

    :goto_5
    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1
.end method


# virtual methods
.method public browser_brightness_decrease_mode(Z)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_media_resource_info()Z

    move-result v0

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "browser_brightness_decrease_mode() mBrightnessBrowserAppServerState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessBrowserAppServerState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mScreenStateOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mBrowserAppLauncher : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mMediaResourceUsed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mBrowserBrightnessDefault : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , mBrowserBrightnessArray : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    const/4 v5, 0x2

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    const/4 v6, 0x4

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessBrowserAppServerState:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mScreenStateOn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserAppLauncher:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    aget v3, v3, v4

    if-lt v1, v3, :cond_3

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    aget v3, v3, v5

    if-ge v1, v3, :cond_0

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->browser_brightness_decrease_function(I)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    aget v2, v2, v5

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDefault:I

    iget-object v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    aget v2, v2, v6

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->browser_brightness_decrease_function(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessArray:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->browser_brightness_decrease_function(I)V

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrowserBrightnessDecreaseEnabled:Z

    iput v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BRIGHTNESS_DECREASE_STEP:I

    const-string v1, "MdnieScenarioControlService"

    const-string v2, "Disabled Browser Brightness Decrease Mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string v2, "browser_brightness_off"

    invoke-virtual {v1, v2}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public burn_in_prevention_mode(Z)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_platform_brightness_value()I

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->getting_perfomance_mode_value()I

    move-result v3

    const-string v4, "MdnieScenarioControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "burn_in_prevention_mode() mBrightnessAllAppServerState : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessAllAppServerState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mBurnInDisableAppEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInDisableAppEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mAutoBrightnessMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mHighBrightnessModeEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mBurnInPreventionACL : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionACL:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , platform_brightness_value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , BURN_IN_PREVENTION_SUPPORT_VALUE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_PREVENTION_SUPPORT_VALUE:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " , mBurnInPreventionEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , mGameAppLauncher : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameAppLauncher:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBrightnessAllAppServerState:Z

    const/16 v5, 0x13

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoBrightnessMode:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighBrightnessModeEnabled:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionACL:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInDisableAppEnabled:Z

    if-nez v4, :cond_4

    iget v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_PREVENTION_SUPPORT_VALUE:I

    if-lt v2, v4, :cond_5

    iput-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BurnInPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v4, :cond_5

    move v4, v6

    :goto_0
    const/16 v7, 0xb

    if-ge v4, v7, :cond_5

    iget v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_STEP:I

    if-ne v7, v4, :cond_3

    const-string v7, "MdnieScenarioControlService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enabled Burn-In Prevention Mode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "burnin_prevention_on_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    const/16 v7, 0xa

    if-ge v4, v7, :cond_2

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v6, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameAppLauncher:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_GAME_BURN_IN_PREVENTION_MILLIS:I

    int-to-long v7, v7

    add-long/2addr v7, v0

    invoke-virtual {v6, v5, v7, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_1

    :cond_0
    iget-boolean v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGameAppLauncher:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    iget v7, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->ACTION_BURN_IN_PREVENTION_MILLIS:I

    int-to-long v7, v7

    add-long/2addr v7, v0

    invoke-virtual {v6, v5, v7, v8}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_STEP:I

    goto :goto_2

    :cond_2
    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_STEP:I

    :goto_2
    return-void

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    iput v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->BURN_IN_STEP:I

    const-string v4, "MdnieScenarioControlService"

    const-string v6, "Disabled Burn-In Prevention Mode"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v4, v5}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string v5, "burnin_prevention_off"

    invoke-virtual {v4, v5}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public setAutoCurrentLimitOffMode(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoCurrentLimitOffState:Z

    const-string v0, "MdnieScenarioControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAutoCurrentLimitOffState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoCurrentLimitOffState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , mAutoCurrentLimitOffStateSNS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoCurrentLimitOffStateSNS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoCurrentLimitOffState:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoCurrentLimitOffStateSNS:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionACL:Z

    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    const/16 v1, 0x13

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionEnabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHandler:Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService$MSCSControlHandler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mBurnInPreventionACL:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setAutoCurrentLimitOffModeSNS(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mAutoCurrentLimitOffStateSNS:Z

    return-void
.end method

.method public setHdrMode(Z)V
    .locals 8

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FrontPackageName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->FrontPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "MdnieScenarioControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHighDynamicRangeEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mHighDynamicRangeEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , Real Multi Window State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mGalleryAppState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_6

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_OFF_APP_LAUNCHER:[Ljava/lang/String;

    if-eqz v5, :cond_6

    move v5, v1

    move v1, v4

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_MODE_2_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_MODE_3_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_OFF_APP_LAUNCHER:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->HDR_OFF_APP_LAUNCHER:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v3, 0x0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v1, v5

    :cond_6
    const-string v5, "MdnieScenarioControlService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHDR_mode_2 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mHDR_mode_3 : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , mUseRealHDR : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_9

    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mMultiWindowOn:Z

    if-nez v5, :cond_9

    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mGalleryAppState:Z

    if-nez v5, :cond_9

    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->isLockScreenOn:Z

    if-nez v5, :cond_9

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    if-eqz v1, :cond_7

    const-string v5, "MdnieScenarioControlService"

    const-string v6, "HDR(2)"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_HDR_PATH:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_HDR_TUNABLES_PATH:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    const-string v5, "MdnieScenarioControlService"

    const-string v6, "HDR(3)"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_HDR_PATH:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-static {v5, v6}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_HDR_TUNABLES_PATH:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    goto :goto_3

    :cond_8
    const-string v5, "MdnieScenarioControlService"

    const-string v6, "HDR(1)"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_HDR_PATH:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string/jumbo v6, "real_hdr_on"

    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setIRCompensationMode(Z)V

    goto :goto_4

    :cond_9
    const-string v5, "MdnieScenarioControlService"

    const-string v6, "HDR(0)"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_HDR_PATH:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->WRITE_HDR_TUNABLES_PATH:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->sysfsWrite(Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->onAutoCurrentLimitStateChanged(Z)V

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    const-string/jumbo v6, "real_hdr_off"

    invoke-virtual {v5, v6}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setMultipleScreenBrightness(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/displaysolution/MdnieScenarioControlService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->setIRCompensationMode(Z)V

    :cond_a
    :goto_4
    return-void
.end method
