.class public Lcom/android/systemui/lockstar/PluginLockStarManager;
.super Ljava/lang/Object;
.source "PluginLockStarManager.java"


# instance fields
.field private final mAppShortcutCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager$Callback;

.field private final mBasicCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager$Callback;

.field private mClock:Lcom/android/systemui/lockstar/component/PluginLockClock;

.field private final mContext:Landroid/content/Context;

.field private mCr:Landroid/content/ContentResolver;

.field private mCurrentDynamicLockData:Lcom/android/systemui/lockstar/model/DynamicLockData;

.field private mCurrentPluginValue:I

.field private final mFaceWidgetCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager$Callback;

.field private final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private final mFlashlightListener:Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

.field private mHelpText:Lcom/android/systemui/lockstar/component/PluginLockHelpText;

.field private mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private final mIndicationTextCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager$Callback;

.field private mIsDynamicEnabled:Z

.field private mIsLockStarEnabled:Z

.field private mIsRotateAllowed:Z

.field private mIsRotateMenuHide:Z

.field private mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockPluginMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/lockstar/PluginLockInstanceState;",
            ">;"
        }
    .end annotation
.end field

.field private mLockStarFlashlightListener:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;

.field private mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

.field private final mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

.field private final mNotificationCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager$Callback;

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPluginLockContext:Landroid/content/Context;

.field private final mPluginLockInstancePolicy:Lcom/android/systemui/lockstar/PluginLockInstancePolicy;

.field private mPluginLockInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

.field private mSecure:Lcom/android/systemui/lockstar/component/PluginLockSecure;

.field private mServiceBox:Lcom/android/systemui/lockstar/component/PluginLockServiceBox;

.field private final mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShortcut:Lcom/android/systemui/lockstar/component/PluginLockShortcut;

.field private final mStatusBarCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager$Callback;

.field private mSwipe:Lcom/android/systemui/lockstar/component/PluginLockSwipe;

.field private final mTaskShortcutCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$Callback;

.field private final mUris:[Landroid/net/Uri;

.field private mUserId:I

.field private mViewMode:I

.field private final mVisibleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

.field private mWallpaperUpdateCallback:Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPluginMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/systemui/lockstar/PluginLockInstancePolicy;

    invoke-direct {v0}, Lcom/android/systemui/lockstar/PluginLockInstancePolicy;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstancePolicy:Lcom/android/systemui/lockstar/PluginLockInstancePolicy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mVisibleMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsRotateMenuHide:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsRotateAllowed:Z

    iput v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mCurrentPluginValue:I

    iput v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mViewMode:I

    iput v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mUserId:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mCurrentDynamicLockData:Lcom/android/systemui/lockstar/model/DynamicLockData;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "lockstar_enabled"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "emergency_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v1

    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v2, v3

    iput-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mUris:[Landroid/net/Uri;

    new-instance v1, Lcom/android/systemui/lockstar/-$$Lambda$PluginLockStarManager$dsFwwI-Mqk7gWL6QZklABfF9k0U;

    invoke-direct {v1, p0}, Lcom/android/systemui/lockstar/-$$Lambda$PluginLockStarManager$dsFwwI-Mqk7gWL6QZklABfF9k0U;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v1, Lcom/android/systemui/lockstar/PluginLockStarManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$1;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v1, Lcom/android/systemui/lockstar/PluginLockStarManager$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$2;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mBasicCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager$Callback;

    new-instance v1, Lcom/android/systemui/lockstar/PluginLockStarManager$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$3;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mStatusBarCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager$Callback;

    new-instance v1, Lcom/android/systemui/lockstar/PluginLockStarManager$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$4;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mFaceWidgetCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager$Callback;

    new-instance v1, Lcom/android/systemui/lockstar/PluginLockStarManager$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$5;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mAppShortcutCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager$Callback;

    new-instance v1, Lcom/android/systemui/lockstar/PluginLockStarManager$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$6;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIndicationTextCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager$Callback;

    new-instance v1, Lcom/android/systemui/lockstar/PluginLockStarManager$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$7;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mTaskShortcutCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$Callback;

    new-instance v1, Lcom/android/systemui/lockstar/PluginLockStarManager$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$8;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mFlashlightListener:Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    new-instance v1, Lcom/android/systemui/lockstar/PluginLockStarManager$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$9;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotificationCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager$Callback;

    const-string v1, "PluginLockStarManager"

    const-string v2, "PluginLockStarManager()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mCr:Landroid/content/ContentResolver;

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsLockStarEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsDynamicEnabled:Z

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mUris:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->onStartedWakingUp()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/lockstar/PluginLockStarManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockScreenEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/lockstar/PluginLockStarManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsRotateMenuHide:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockClock;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mClock:Lcom/android/systemui/lockstar/component/PluginLockClock;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/component/PluginLockClock;)Lcom/android/systemui/lockstar/component/PluginLockClock;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mClock:Lcom/android/systemui/lockstar/component/PluginLockClock;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/PluginLockInstanceState;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockHelpText;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mHelpText:Lcom/android/systemui/lockstar/component/PluginLockHelpText;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/component/PluginLockHelpText;)Lcom/android/systemui/lockstar/component/PluginLockHelpText;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mHelpText:Lcom/android/systemui/lockstar/component/PluginLockHelpText;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockNotification;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/component/PluginLockNotification;)Lcom/android/systemui/lockstar/component/PluginLockNotification;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockSecure;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSecure:Lcom/android/systemui/lockstar/component/PluginLockSecure;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/component/PluginLockSecure;)Lcom/android/systemui/lockstar/component/PluginLockSecure;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSecure:Lcom/android/systemui/lockstar/component/PluginLockSecure;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockServiceBox;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mServiceBox:Lcom/android/systemui/lockstar/component/PluginLockServiceBox;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/component/PluginLockServiceBox;)Lcom/android/systemui/lockstar/component/PluginLockServiceBox;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mServiceBox:Lcom/android/systemui/lockstar/component/PluginLockServiceBox;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockShortcut;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mShortcut:Lcom/android/systemui/lockstar/component/PluginLockShortcut;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/component/PluginLockShortcut;)Lcom/android/systemui/lockstar/component/PluginLockShortcut;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mShortcut:Lcom/android/systemui/lockstar/component/PluginLockShortcut;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockSwipe;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSwipe:Lcom/android/systemui/lockstar/component/PluginLockSwipe;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/component/PluginLockSwipe;)Lcom/android/systemui/lockstar/component/PluginLockSwipe;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSwipe:Lcom/android/systemui/lockstar/component/PluginLockSwipe;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockWallpaper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/component/PluginLockWallpaper;)Lcom/android/systemui/lockstar/component/PluginLockWallpaper;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/lockstar/PluginLockStarManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->onStartedGoingToSleep(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaperUpdateCallback:Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/lockstar/model/DynamicLockData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mCurrentDynamicLockData:Lcom/android/systemui/lockstar/model/DynamicLockData;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/lockstar/model/DynamicLockData;)Lcom/android/systemui/lockstar/model/DynamicLockData;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mCurrentDynamicLockData:Lcom/android/systemui/lockstar/model/DynamicLockData;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/policy/FlashlightController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mFlashlightListener:Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarFlashlightListener:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarFlashlightListener:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$FlashlightListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->onLocaleChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/util/SettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/lockstar/PluginLockStarManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mUserId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/systemui/lockstar/PluginLockStarManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mUserId:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/lockstar/PluginLockStarManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->setLatestPluginInstance(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/lockstar/PluginLockStarManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/systemui/lockstar/PluginLockStarManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsRotateAllowed:Z

    return p1
.end method

.method private disableForcedIfNeed()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstancePolicy:Lcom/android/systemui/lockstar/PluginLockInstancePolicy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/lockstar/PluginLockInstancePolicy;->isEnable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstancePolicy:Lcom/android/systemui/lockstar/PluginLockInstancePolicy;

    iget v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mCurrentPluginValue:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/lockstar/PluginLockInstancePolicy;->isEnable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstancePolicy:Lcom/android/systemui/lockstar/PluginLockInstancePolicy;

    iget v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mCurrentPluginValue:I

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/lockstar/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PluginLockStarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableForcedIfNeed() disabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mCurrentPluginValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->updateLockStarMode(ZZ)V

    :cond_0
    return-void
.end method

.method private getFbeFile()Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/user_de/0/com.android.systemui/files/fresh_pack/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    return-object v2

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance()Lcom/android/systemui/lockstar/PluginLockStarManager;
    .locals 1

    const-class v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/lockstar/PluginLockStarManager;

    return-object v0
.end method

.method private isEnabledFromSettingHelper()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue()I

    move-result v0

    const-string v1, "PluginLockStarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnabledFromSettingHelper, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstancePolicy:Lcom/android/systemui/lockstar/PluginLockInstancePolicy;

    invoke-virtual {v1, v0}, Lcom/android/systemui/lockstar/PluginLockInstancePolicy;->isEnable(I)Z

    move-result v1

    return v1
.end method

.method private isFactoryModeEnabled()Z
    .locals 2

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/os/FactoryTest;->checkAutomationTestOption(Landroid/content/Context;I)Z

    move-result v0

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

.method private isLockScreenEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isFactoryModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isLockScreenDisabledbyKNOXForBoot()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/lockstar/PluginLockStarManager;Landroid/net/Uri;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "PluginLockStarManager"

    const-string/jumbo v1, "uri null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "lockstar_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "PluginLockStarManager"

    const-string v1, "lockstar_enabled changed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->disableForcedIfNeed()V

    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isEnabledFromSettingHelper()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->updateLockStarMode(ZZ)V

    goto :goto_0

    :cond_1
    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ultra_powersaving_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isEnabledFromSettingHelper()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "PluginLockStarManager"

    const-string v1, "UPS or Emergency mode enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private onLocaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->onLocaleChanged()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private onStartedGoingToSleep(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->onStartedGoingToSleep(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private onStartedWakingUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->onStartedWakingUp()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private putPluginInstanceToMap(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstancePolicy:Lcom/android/systemui/lockstar/PluginLockInstancePolicy;

    invoke-virtual {v0, p2}, Lcom/android/systemui/lockstar/PluginLockInstancePolicy;->setCategory(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    const-string v0, "PluginLockStarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putPluginInstanceToMap Map size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetConfigs()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsRotateAllowed:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsRotateMenuHide:Z

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setScreenOrientation(Z)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setViewMode(I)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setBlur(Z)V

    :cond_0
    return-void
.end method

.method private resetDynamicLockData(Z)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mCurrentDynamicLockData:Lcom/android/systemui/lockstar/model/DynamicLockData;

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "PluginLockStarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resetDynamicLockData() reconnectReq: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    invoke-virtual {v1, v0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->reset(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSecure:Lcom/android/systemui/lockstar/component/PluginLockSecure;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSecure:Lcom/android/systemui/lockstar/component/PluginLockSecure;

    invoke-virtual {v1, v0}, Lcom/android/systemui/lockstar/component/PluginLockSecure;->reset(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mServiceBox:Lcom/android/systemui/lockstar/component/PluginLockServiceBox;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mServiceBox:Lcom/android/systemui/lockstar/component/PluginLockServiceBox;

    invoke-virtual {v1, v0}, Lcom/android/systemui/lockstar/component/PluginLockServiceBox;->reset(Z)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mShortcut:Lcom/android/systemui/lockstar/component/PluginLockShortcut;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mShortcut:Lcom/android/systemui/lockstar/component/PluginLockShortcut;

    invoke-virtual {v1, v0}, Lcom/android/systemui/lockstar/component/PluginLockShortcut;->reset(Z)V

    invoke-static {}, Lcom/android/systemui/util/ShortcutManager;->getInstance()Lcom/android/systemui/util/ShortcutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/util/ShortcutManager;->updateShortcuts()V

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSwipe:Lcom/android/systemui/lockstar/component/PluginLockSwipe;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSwipe:Lcom/android/systemui/lockstar/component/PluginLockSwipe;

    invoke-virtual {v1, v0}, Lcom/android/systemui/lockstar/component/PluginLockSwipe;->reset(Z)V

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->reset(Z)V

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mClock:Lcom/android/systemui/lockstar/component/PluginLockClock;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mClock:Lcom/android/systemui/lockstar/component/PluginLockClock;

    invoke-virtual {v1, v0}, Lcom/android/systemui/lockstar/component/PluginLockClock;->reset(Z)V

    :cond_8
    return-void
.end method

.method private setLatestPluginInstance(Z)V
    .locals 11

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "PluginLockStarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLatestPluginInstance map size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", owner:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v8}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getData()Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v8}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v3, v9

    if-gez v9, :cond_2

    invoke-virtual {v8}, Lcom/android/systemui/lockstar/PluginLockInstanceData$Data;->getTimeStamp()Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    move-object v5, v7

    :cond_2
    goto :goto_1

    :cond_3
    if-eqz v5, :cond_5

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-direct {p0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->setPluginInstance(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getAllowedNumber()I

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue()I

    move-result v6

    rem-int/lit8 v7, v6, 0xa

    if-ne v7, v2, :cond_4

    const/4 v2, 0x2

    nop

    :cond_4
    const-string v7, "PluginLockStarManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setLatestPluginInstance() set value:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v9, v1, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    add-int v8, v1, v2

    invoke-virtual {v7, v8}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(I)V

    goto :goto_2

    :cond_5
    if-eqz p1, :cond_6

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->setPluginInstance(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private setPluginInstance(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->setTimeStamp(Z)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->destroy()V

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    goto :goto_0

    :cond_0
    const-string v0, "PluginLockStarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPluginInstance() state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {p1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->setTimeStamp(Z)V

    invoke-virtual {p1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getPluginLockContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockContext:Landroid/content/Context;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mClock:Lcom/android/systemui/lockstar/component/PluginLockClock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mClock:Lcom/android/systemui/lockstar/component/PluginLockClock;

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/component/PluginLockClock;->setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mHelpText:Lcom/android/systemui/lockstar/component/PluginLockHelpText;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mHelpText:Lcom/android/systemui/lockstar/component/PluginLockHelpText;

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/component/PluginLockHelpText;->setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSecure:Lcom/android/systemui/lockstar/component/PluginLockSecure;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSecure:Lcom/android/systemui/lockstar/component/PluginLockSecure;

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/component/PluginLockSecure;->setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mServiceBox:Lcom/android/systemui/lockstar/component/PluginLockServiceBox;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mServiceBox:Lcom/android/systemui/lockstar/component/PluginLockServiceBox;

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/component/PluginLockServiceBox;->setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mShortcut:Lcom/android/systemui/lockstar/component/PluginLockShortcut;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mShortcut:Lcom/android/systemui/lockstar/component/PluginLockShortcut;

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/component/PluginLockShortcut;->setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSwipe:Lcom/android/systemui/lockstar/component/PluginLockSwipe;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSwipe:Lcom/android/systemui/lockstar/component/PluginLockSwipe;

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/component/PluginLockSwipe;->setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->setInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPluginInstance(Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;)V

    :cond_9
    return-void
.end method

.method private updateEnabledState(Z)V
    .locals 9

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mCurrentPluginValue:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue()I

    move-result v0

    :goto_0
    const-string v1, "PluginLockStarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateEnabledState getPluginLockValue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2710

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    const/16 v5, 0xa

    if-lt v0, v5, :cond_2

    if-ge v0, v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isEnabledFromSettingHelper()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    const-string v6, "PluginLockStarManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateEnabledState() isLockStarMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isDynamicMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isEnabledFromSetting = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    if-eqz v5, :cond_4

    move v6, v3

    goto :goto_4

    :cond_4
    move v6, v2

    :goto_4
    iput-boolean v6, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsLockStarEnabled:Z

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    move v2, v3

    nop

    :cond_5
    iput-boolean v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsDynamicEnabled:Z

    return-void
.end method

.method private updateLockStarMode(ZZ)V
    .locals 12

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mCurrentPluginValue:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue()I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsLockStarEnabled:Z

    iget-boolean v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsDynamicEnabled:Z

    invoke-direct {p0, p2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->updateEnabledState(Z)V

    const-string v3, "PluginLockStarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateLockStarMode()\n - isEnabled:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\n - pluginValue:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n - wasLockStarEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\n - wasDynamicLockEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\n - mIsLockStarEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsLockStarEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\n - mIsDynamicEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsDynamicEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    if-eqz p1, :cond_9

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/lockstar/PluginLockInstanceState;

    iget-object v8, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstancePolicy:Lcom/android/systemui/lockstar/PluginLockInstancePolicy;

    invoke-virtual {v7}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getAllowedNumber()I

    move-result v9

    invoke-virtual {v8, v0, v9}, Lcom/android/systemui/lockstar/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstancePolicy:Lcom/android/systemui/lockstar/PluginLockInstancePolicy;

    invoke-virtual {v7}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getAllowedNumber()I

    move-result v9

    invoke-virtual {v8, v0, v9}, Lcom/android/systemui/lockstar/PluginLockInstancePolicy;->isSameCategory(II)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v3}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->setTimeStamp(Z)V

    :cond_1
    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/lockstar/PluginLockInstanceState;

    iget-object v8, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstancePolicy:Lcom/android/systemui/lockstar/PluginLockInstancePolicy;

    invoke-virtual {v7}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getAllowedNumber()I

    move-result v9

    invoke-virtual {v8, v0, v9}, Lcom/android/systemui/lockstar/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v5, "PluginLockStarManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateLockStarMode() enabled key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v7}, Lcom/android/systemui/lockstar/PluginLockStarManager;->setPluginInstance(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    iget-object v5, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v8, 0x1

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsLockStarEnabled:Z

    if-eqz v5, :cond_3

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3, v8}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetPanelView(Z)V

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetPanelView(Z)V

    :cond_4
    :goto_3
    iget-boolean v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsDynamicEnabled:Z

    if-nez v3, :cond_5

    if-eqz v2, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetDynamicLock()V

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v3}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v3

    invoke-interface {v3, v8}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->onLockStarModeChanged(Z)V

    goto :goto_4

    :cond_7
    goto :goto_2

    :cond_8
    :goto_4
    goto/16 :goto_7

    :cond_9
    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->resetConfigs()V

    if-eqz v1, :cond_a

    iget-boolean v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsLockStarEnabled:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetPanelView(Z)V

    :cond_a
    if-eqz v2, :cond_b

    iget-boolean v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsDynamicEnabled:Z

    if-nez v4, :cond_b

    invoke-direct {p0, p2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->resetDynamicLockData(Z)V

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->resetDynamicLock()V

    :cond_b
    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/lockstar/PluginLockInstanceState;

    const/16 v7, 0x7530

    const/16 v8, 0x4e20

    if-eqz v0, :cond_d

    if-eq v0, v8, :cond_d

    if-eq v0, v7, :cond_d

    iget-object v9, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstancePolicy:Lcom/android/systemui/lockstar/PluginLockInstancePolicy;

    invoke-virtual {v6}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getAllowedNumber()I

    move-result v10

    invoke-virtual {v9, v0, v10}, Lcom/android/systemui/lockstar/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v9

    if-eqz v9, :cond_11

    :cond_d
    const-string v9, "PluginLockStarManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateLockStarMode() disabled key: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    move-result-object v9

    if-eqz v9, :cond_e

    const-string v9, "PluginLockStarManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateLockStarMode key = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    move-result-object v9

    invoke-interface {v9}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v9

    invoke-interface {v9, v3}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->onLockStarModeChanged(Z)V

    :cond_e
    if-eq v0, v8, :cond_c

    if-ne v0, v7, :cond_f

    goto :goto_5

    :cond_f
    if-nez v0, :cond_10

    invoke-virtual {v6, v3}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->setTimeStamp(Z)V

    goto :goto_6

    :cond_10
    if-nez p2, :cond_11

    invoke-virtual {v6, v3}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->setTimeStamp(Z)V

    invoke-direct {p0, v3}, Lcom/android/systemui/lockstar/PluginLockStarManager;->setLatestPluginInstance(Z)V

    :cond_11
    :goto_6
    goto :goto_5

    :cond_12
    :goto_7
    iput v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mCurrentPluginValue:I

    return-void
.end method


# virtual methods
.method public clearVisibleMap()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mVisibleMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public getClockGravity()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mClock:Lcom/android/systemui/lockstar/component/PluginLockClock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mClock:Lcom/android/systemui/lockstar/component/PluginLockClock;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockClock;->getClockGravity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getClockPaddingEnd()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mClock:Lcom/android/systemui/lockstar/component/PluginLockClock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mClock:Lcom/android/systemui/lockstar/component/PluginLockClock;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockClock;->getClockPaddingEnd()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getClockPaddingStart()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mClock:Lcom/android/systemui/lockstar/component/PluginLockClock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mClock:Lcom/android/systemui/lockstar/component/PluginLockClock;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockClock;->getClockPaddingStart()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getClockType()I
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mClock:Lcom/android/systemui/lockstar/component/PluginLockClock;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockClock;->getClockType()I

    move-result v0

    const-string v1, "PluginLockStarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClockType() type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getFbeWallpaper()Landroid/graphics/Bitmap;
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getFbeFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PluginLockStarManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFbeWallpaper path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->loadBitmapForScreenSize(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "PluginLockStarManager"

    const-string v2, "getFbeWallpaper null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getFbeWallpaperHints()[I
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getFbeFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x30

    aput v5, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    aput v4, v0, v3

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    aput v4, v0, v3

    :cond_0
    const-string v2, "PluginLockStarManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFbeWallpaperHints : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public getHelpTextMarginBottom()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mHelpText:Lcom/android/systemui/lockstar/component/PluginLockHelpText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mHelpText:Lcom/android/systemui/lockstar/component/PluginLockHelpText;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockHelpText;->getHelpTextMarginBottom()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getNioAnimatorStartPadding(II)I
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getNotiIconPaddingStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getNotiIconPaddingEnd()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getNotiIconGravity()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v2, v3, :cond_6

    const/4 v3, 0x3

    if-eq v2, v3, :cond_4

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/16 v3, 0x11

    if-eq v2, v3, :cond_6

    const v3, 0x800003

    if-eq v2, v3, :cond_4

    const v3, 0x800005

    if-eq v2, v3, :cond_2

    if-eq v0, v4, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    move p1, v3

    if-eq v1, v4, :cond_1

    sub-int v3, p1, v1

    goto :goto_1

    :cond_1
    move v3, p1

    :goto_1
    move p1, v3

    goto :goto_6

    :cond_2
    if-eq v1, v4, :cond_3

    sub-int v3, p2, v1

    goto :goto_2

    :cond_3
    move v3, p2

    :goto_2
    move p1, v3

    goto :goto_6

    :cond_4
    if-eq v0, v4, :cond_5

    move v3, v0

    goto :goto_3

    :cond_5
    move v3, p1

    :goto_3
    move p1, v3

    goto :goto_6

    :cond_6
    div-int/lit8 p1, p2, 0x2

    if-eq v0, v4, :cond_7

    add-int v3, p1, v0

    goto :goto_4

    :cond_7
    move v3, p1

    :goto_4
    move p1, v3

    if-eq v1, v4, :cond_8

    sub-int v3, p1, v1

    goto :goto_5

    :cond_8
    move v3, p1

    :goto_5
    move p1, v3

    nop

    :goto_6
    return p1
.end method

.method public getNioAnimatorTopPadding(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getNotiIconPaddingTop()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int v1, p1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    return v1
.end method

.method public getNonSwipeMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSwipe:Lcom/android/systemui/lockstar/component/PluginLockSwipe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSwipe:Lcom/android/systemui/lockstar/component/PluginLockSwipe;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockSwipe;->getNonSwipeMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNonSwipeModeAngle()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSwipe:Lcom/android/systemui/lockstar/component/PluginLockSwipe;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSwipe:Lcom/android/systemui/lockstar/component/PluginLockSwipe;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockSwipe;->getNonSwipeModeAngle()I

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x2d

    return v0
.end method

.method public getNotiCardBottomPadding()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->getNotiCardBottomPadding()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getNotiCardTopPadding()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->getNotiCardTopPadding()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getNotiIconGravity()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->getNotiIconGravity()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getNotiIconPaddingEnd()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->getNotiIconPaddingEnd()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getNotiIconPaddingStart()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->getNotiIconPaddingStart()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getNotiIconPaddingTop()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->getNotiIconPaddingTop()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSecureMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSecure:Lcom/android/systemui/lockstar/component/PluginLockSecure;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSecure:Lcom/android/systemui/lockstar/component/PluginLockSecure;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockSecure;->getSecureMode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceBoxTopPadding()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mServiceBox:Lcom/android/systemui/lockstar/component/PluginLockServiceBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mServiceBox:Lcom/android/systemui/lockstar/component/PluginLockServiceBox;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockServiceBox;->getServiceBoxTopPadding()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getViewMode()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mViewMode:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWallpaperHints()[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->getWallpaperHints()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWallpaperPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWallpaperType()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->getWallpaperType()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWallpaperUpdateStyle()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->getUpdateStyle()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDynamicClockEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mClock:Lcom/android/systemui/lockstar/component/PluginLockClock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mClock:Lcom/android/systemui/lockstar/component/PluginLockClock;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockClock;->isClockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDynamicLockEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsDynamicEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDynamicNotiIconEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotification:Lcom/android/systemui/lockstar/component/PluginLockNotification;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockNotification;->isNotiIconOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDynamicWallpaperEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->isDynamicWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFbeWallpaperAvailable()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getFbeFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isHelpTextInvisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mHelpText:Lcom/android/systemui/lockstar/component/PluginLockHelpText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mHelpText:Lcom/android/systemui/lockstar/component/PluginLockHelpText;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockHelpText;->isHelpTextInvisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLockStarEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsLockStarEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRotateAllowed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsRotateAllowed:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isRotateMenuHide()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIsRotateMenuHide:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShortcutInvisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mShortcut:Lcom/android/systemui/lockstar/component/PluginLockShortcut;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mShortcut:Lcom/android/systemui/lockstar/component/PluginLockShortcut;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockShortcut;->isShortcutInvisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoWallpaperEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->isVideoWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisible(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mVisibleMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mVisibleMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadBitmapForScreenSize(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 16

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    move-object v3, v0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v1, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v7, 0x1

    const-class v8, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v8}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v8}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object v9

    iget v10, v9, Landroid/graphics/Point;->x:I

    iget v11, v9, Landroid/graphics/Point;->y:I

    const/high16 v12, 0x3f800000    # 1.0f

    if-lt v5, v6, :cond_1

    int-to-float v13, v6

    int-to-float v14, v11

    div-float/2addr v13, v14

    cmpl-float v14, v13, v12

    if-lez v14, :cond_0

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v12, v12

    nop

    :cond_0
    float-to-int v7, v12

    goto :goto_0

    :cond_1
    int-to-float v13, v5

    int-to-float v14, v10

    div-float/2addr v13, v14

    cmpl-float v14, v13, v12

    if-lez v14, :cond_2

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v12

    int-to-float v12, v12

    nop

    :cond_2
    float-to-int v7, v12

    :goto_0
    const-string v12, "PluginLockStarManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadBitmapForScreenSize() ratio:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, ", sample"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    iput-boolean v12, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput v7, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v14, Ljava/io/FileInputStream;

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v14

    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14, v12, v12, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v12, v14

    invoke-static {v3, v12, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v14

    move-object v2, v14

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :cond_3
    const-string v4, "PluginLockStarManager"

    const-string v5, "Can\'t load dynamic lock file"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    move-object v4, v0

    const-string v0, "PluginLockStarManager"

    const-string v5, "Can\'t load dynamic lock wallpaper!"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_4

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v5, v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_2
    return-object v2
.end method

.method public notifyWallpaperChanged(I)V
    .locals 5

    const-string v0, "PluginLockStarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyWallpaperChanged() type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->isStickyRecoverType()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaper:Lcom/android/systemui/lockstar/component/PluginLockWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaper;->recover()V

    new-instance v0, Lcom/android/systemui/lockstar/PluginLockStarManager$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager$10;-><init>(Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "lockscreen_wallpaper_transparent"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSecure:Lcom/android/systemui/lockstar/component/PluginLockSecure;

    invoke-virtual {v1}, Lcom/android/systemui/lockstar/component/PluginLockSecure;->recover()V

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->onLockWallpaperChanged(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaperUpdateCallback:Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaperUpdateCallback:Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;

    invoke-interface {v0}, Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;->onWallpaperUpdate()V

    :cond_2
    :goto_1
    return-void
.end method

.method public removeInstance(ILcom/samsung/systemui/splugins/lockstar/PluginLockStar;)V
    .locals 8

    const-string v0, "PluginLockStarManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeInstance() reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    move-result-object v5

    if-ne v5, p2, :cond_2

    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->isRecentInstance()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    invoke-virtual {v4, v5}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->setTimeStamp(Z)V

    const/4 v1, 0x1

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {p2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->onLockStarModeChanged(Z)V

    :cond_1
    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/lockstar/PluginLockInstanceState;

    const-string v5, "PluginLockStarManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeInstance() pkgName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", map size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->isRecentInstance()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    iput-object v5, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    iput-object v5, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPluginInstance(Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;)V

    :cond_4
    invoke-virtual {v4}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->destroy()V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockPluginMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/systemui/lockstar/PluginLockStarManager;->setLatestPluginInstance(Z)V

    :cond_6
    return-void
.end method

.method public setCallbacks()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mBasicCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager$Callback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getAppShortcutManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getAppShortcutManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mAppShortcutCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarAppShortcutManager$Callback;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getTaskShortcutManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getTaskShortcutManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mTaskShortcutCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTaskShortcutManager$Callback;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getIndicationTextManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getIndicationTextManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIndicationTextCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarIndicationTextManager$Callback;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getStatusBarManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getStatusBarManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mStatusBarCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager$Callback;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getFaceWidgetManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getFaceWidgetManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mFaceWidgetCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarFaceWidgetManager$Callback;)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getNotificationManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getNotificationManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mNotificationCallback:Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager$Callback;

    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager;->setCallback(Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager$Callback;)V

    :cond_6
    return-void
.end method

.method public setFullscreenMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getTouchManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTouchManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getTouchManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTouchManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarTouchManager;->setFullscreenMode(Z)V

    :cond_0
    return-void
.end method

.method public setIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-void
.end method

.method public setKeyguardBottomArea(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    return-void
.end method

.method public setLockStarNotificationPreviewArray(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/systemui/splugins/lockstar/LockStarNotificationPreview;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getNotificationManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getNotificationManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarNotificationManager;->setLockStarNotificationPreviewArray(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method public setPluginInstanceState(Lcom/android/systemui/lockstar/PluginLockInstanceState;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->putPluginInstanceToMap(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockInstanceState;)V

    invoke-virtual {p1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->isRecentInstance()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstanceState:Lcom/android/systemui/lockstar/PluginLockInstanceState;

    invoke-virtual {p1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getPluginLockInstance()Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPluginInstance(Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;)V

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getPluginLockValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/lockstar/PluginLockInstanceState;->getAllowedNumber()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPluginLockInstancePolicy:Lcom/android/systemui/lockstar/PluginLockInstancePolicy;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/lockstar/PluginLockInstancePolicy;->isSameInstance(II)Z

    move-result v2

    if-eqz v2, :cond_1

    rem-int/lit8 v2, v0, 0xa

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v3, 0x2

    nop

    :cond_0
    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v1, 0x1

    :goto_0
    move v2, v3

    const-string v3, "PluginLockStarManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPluginInstanceState now:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", new:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3, v2}, Lcom/android/systemui/util/SettingsHelper;->setPluginLockValue(I)V

    :cond_2
    return-void
.end method

.method public setQsExpansion(F)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->setQsExpansion(F)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public setStatusBarPadding(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getStatusBarManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getStatusBarManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarStatusBarManager;->setStatusBarPadding(II)V

    :cond_0
    return-void
.end method

.method public setViewMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mViewMode:I

    return-void
.end method

.method public setVisible(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mVisibleMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setWallpaperUpdateCallback(Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mWallpaperUpdateCallback:Lcom/android/systemui/lockstar/component/PluginLockWallpaperCallback;

    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public startLockStarUnlockAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->startLockStarUnlockAnimation()V

    :cond_0
    return-void
.end method

.method public updateWhiteWallpaperState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/lockstar/PluginLockStarManager;->mLockStarPlugin:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getBasicManager()Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStarBasicManager;->updateWhiteWallpaperState(Z)V

    :cond_0
    return-void
.end method
