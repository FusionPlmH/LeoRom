.class Lcom/android/server/desktopmode/MultiResolutionManager;
.super Ljava/lang/Object;
.source "MultiResolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;,
        Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    }
.end annotation


# static fields
.field private static final DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final FHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final HD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final RESOLUTION_TABLE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final UWFHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final UWQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final WQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final WQXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private static final WUXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private mDisplayRemovedOnEnablingDesktopMode:Z

.field private mIsForcedSupportAllResolution:Z

.field private mLastDualModeMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private final mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

.field private final mMultiDisplayManagerInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mSelectedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private mStandaloneModeDisplayResolution:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;

.field private final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field private final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field private mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field private final mUserSettingResolutionChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "UWQHD"

    const/16 v2, 0x5a0

    const/16 v3, 0xa0

    const/16 v4, 0xd70

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->UWQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "WQXGA"

    const/16 v4, 0x640

    const/16 v5, 0xa00

    invoke-direct {v0, v1, v5, v4, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->WQXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "WQHD"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->WQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "UWFHD"

    const/16 v2, 0x438

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->UWFHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "WUXGA"

    const/16 v5, 0x780

    const/16 v6, 0x4b0

    invoke-direct {v0, v1, v5, v6, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->WUXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "FHD"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->FHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "HD"

    const/16 v2, 0x384

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->HD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->FHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->UWQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->HD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_MULTI_RATIO:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->UWQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->UWQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->WQXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->WQXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->WQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->WQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_MULTI_RATIO:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->UWFHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->UWFHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->WUXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->WUXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->FHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->FHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->HD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->HD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    iput-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$1;

    const-string/jumbo v1, "resolution_user_setting"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$1;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolutionChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/MultiResolutionManager$2;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    invoke-interface {v0, v1}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolutionChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    invoke-virtual {p3, v0}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    invoke-static {}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->getInstance()Lcom/samsung/android/multidisplay/MultiDisplayManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiDisplayInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMultiDisplayManagerInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayResolution:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/IStateManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/wm/WindowManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/desktopmode/MultiResolutionManager;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSelectedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    return-void
.end method

.method static synthetic access$400()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->handleReconnection(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayResolution:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/desktopmode/MultiResolutionManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/desktopmode/MultiResolutionManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/desktopmode/MultiResolutionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->showUserSettingIsNotSupportedToast()V

    return-void
.end method

.method private calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .locals 6

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/desktopmode/DisplayInfo;->getRealSize()Landroid/graphics/Point;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateMaxSupportedResolution(), displayInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/desktopmode/DisplayInfo;->getRotation()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/desktopmode/DisplayInfo;->getRotation()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_1
    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_2

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    :cond_2
    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    if-lt v4, v5, :cond_3

    iget v4, v0, Landroid/graphics/Point;->y:I

    iget v5, v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    if-lt v4, v5, :cond_3

    return-object v3

    :cond_3
    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-object v1

    :cond_5
    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-object v0
.end method

.method private getSelectedResolution()Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    :goto_0
    return-object v0
.end method

.method private handleReconnection(Lcom/android/server/desktopmode/State;)V
    .locals 3

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    :cond_0
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->isResolutionChangeNeeded(Lcom/android/server/desktopmode/State;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDualDisplayResolutionDensity(Z)I

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "No need to change resolution"

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private isResolutionChangeNeeded(Lcom/android/server/desktopmode/State;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mLastDualModeMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedResolution()Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string v2, "This display does not support current resolution."

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_0
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isResolutionChangeNeeded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0
.end method

.method private setSelectedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V
    .locals 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSelectedResolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMultiDisplayManagerInternal:Lcom/android/server/wm/MultiDisplayManagerInternal;

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v2

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedResolution()Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v3

    iget v3, v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedResolution()Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v4

    iget v4, v4, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedResolution()Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v5

    iget v5, v5, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/wm/MultiDisplayManagerInternal;->setNonDefaultDisplaySizeAndDensity(IIII)V

    :cond_2
    return-void
.end method

.method private showUserSettingIsNotSupportedToast()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedResolution()Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showToastResolutionChanged()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/desktopmode/Utils;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402ae

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method

.method private updateDualDisplayResolution()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v1, v2}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    :goto_0
    sget-boolean v2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSelectedResolution= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mLastDualModeMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    goto :goto_2

    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateSupportAllResolution()V

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    :goto_2
    return-void
.end method

.method private updateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    return-void
.end method

.method private updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMaxSupportedResolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "resolution_max"

    iget-object v2, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateSupportAllResolution()V
    .locals 3

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "resolution_max"

    const-string v2, "ADB"

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateUserSettingResolution()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateUserSettingResolution()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "resolution_user_setting"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-void
.end method


# virtual methods
.method dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mIsForcedSupportAllResolution"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mDisplayRemovedOnEnablingDesktopMode"

    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mStandaloneModeDisplayResolution"

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayResolution:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mCustomResolution"

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mUserSettingResolution"

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mMaxSupportedResolution"

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mSelectedResolution"

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v0, "mLastDualModeMaxSupportedResolution"

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mLastDualModeMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method getCustomResolution()Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-object v0
.end method

.method getStandaloneModeDensity()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayResolution:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->getSelectedResolution()Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v0

    iget v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    return v0
.end method

.method getStandaloneModeOriginalDensity(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayResolution:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;

    invoke-static {v0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;->access$1000(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayResolution;I)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v0

    iget v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    return v0
.end method

.method onUserChanged(Z)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserChanged(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateUserSettingResolution()V

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    :cond_1
    return-void
.end method

.method setCustomResolutionFromAdbCommand(Ljava/io/PrintWriter;III)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "ADB"

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;III)V

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v0, "Successfully set custom resolution"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v1, "Failed to set custom resolution. Width, height, and density must be greater than 0. Custom resolution is removed."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method setDualDisplayResolutionDensity(Z)I
    .locals 4

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateUserSettingResolution()V

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateDualDisplayResolution()V

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedResolution()Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v1

    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedResolution()Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v2

    iget v2, v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    invoke-direct {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedResolution()Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v3

    iget v3, v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->density:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->createOrWakeupDesktopDisplay(III)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMultiDisplayManager:Lcom/samsung/android/multidisplay/MultiDisplayManager;

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/MultiDisplayManager;->sleepDesktopDisplay()I

    move-result v0

    return v0
.end method

.method setSupportAllResolution(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    return-void
.end method
