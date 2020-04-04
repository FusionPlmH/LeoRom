.class public final Landroid/view/accessibility/AccessibilityManager;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityManager$MyCallback;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;,
        Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    }
.end annotation


# static fields
.field public static final ACTION_CHOOSE_ACCESSIBILITY_BUTTON:Ljava/lang/String; = "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

.field public static final AUTOCLICK_DELAY_DEFAULT:I = 0x258

.field public static final DALTONIZER_CORRECT_DEUTERANOMALY:I = 0xc

.field public static final DALTONIZER_DISABLED:I = -0x1

.field public static final DALTONIZER_SIMULATE_MONOCHROMACY:I = 0x0

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManager"

.field public static final SEM_FLASH_NOTIFICATION_TYPE_DEFAULT:I = 0x1

.field public static final SEM_FLASH_NOTIFICATION_TYPE_SEQUENCE:I = 0x2

.field public static final SEM_STATE_FLAG_ACCESSIBILITY_MENU:I = 0x800

.field public static final SEM_STATE_FLAG_BIXBY:I = 0x100

.field public static final SEM_STATE_FLAG_FOLLOW_TYPING_FOCUS:I = 0x400

.field public static final SEM_STATE_FLAG_GOOD_CATCH:I = 0x80

.field public static final SEM_STATE_FLAG_GOOGLE_TALKBACK:I = 0x10

.field public static final SEM_STATE_FLAG_MAGNIFIER_WINDOW:I = 0x200

.field public static final SEM_STATE_FLAG_SELECT_TO_SPEAK:I = 0x1000

.field public static final SEM_STATE_FLAG_UIAUTOMATOR_ENABLED:I = 0x10000

.field public static final SEM_STATE_FLAG_UNIVERSAL_SWITCH:I = 0x40

.field public static final SEM_STATE_FLAG_VOICE_ASSISTANT:I = 0x20

.field public static final STATE_FLAG_ACCESSIBILITY_ENABLED:I = 0x1

.field public static final STATE_FLAG_HIGH_TEXT_CONTRAST_ENABLED:I = 0x4

.field public static final STATE_FLAG_TOUCH_EXPLORATION_ENABLED:I = 0x2

.field private static sInstance:Landroid/view/accessibility/AccessibilityManager;

.field static final sInstanceSync:Ljava/lang/Object;


# instance fields
.field public final SEM_COLOR_FILTER_TYPE_AZURE:I

.field public final SEM_COLOR_FILTER_TYPE_BLUE:I

.field public final SEM_COLOR_FILTER_TYPE_CHARTREUSE_GREEN:I

.field public final SEM_COLOR_FILTER_TYPE_CYAN:I

.field public final SEM_COLOR_FILTER_TYPE_GREEN:I

.field public final SEM_COLOR_FILTER_TYPE_MAGENTA:I

.field public final SEM_COLOR_FILTER_TYPE_ORANGE:I

.field public final SEM_COLOR_FILTER_TYPE_RED:I

.field public final SEM_COLOR_FILTER_TYPE_ROSE:I

.field public final SEM_COLOR_FILTER_TYPE_SPRING_GREEN:I

.field public final SEM_COLOR_FILTER_TYPE_VIOLET:I

.field public final SEM_COLOR_FILTER_TYPE_YELLOW:I

.field mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

.field private final mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field final mCallback:Landroid/os/Handler$Callback;

.field private final mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

.field final mHandler:Landroid/os/Handler;

.field private final mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field mIsBixbyRunning:Z

.field mIsEnabled:Z

.field mIsFollowTypingFocusEnabled:Z

.field mIsHighTextContrastEnabled:Z

.field mIsMagniferWindowEnabled:Z

.field mIsTouchExplorationEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field mObservedEventType:I

.field mRelevantEventTypes:I

.field private mRequestPreparerLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityRequestPreparer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mService:Landroid/view/accessibility/IAccessibilityManager;

.field private final mServicesStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mToken:Landroid/os/Binder;

.field private final mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field mUIAutomatorRunning:Z

.field final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_BLUE:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_AZURE:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_CYAN:I

    const/4 v1, 0x3

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_SPRING_GREEN:I

    const/4 v1, 0x4

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_GREEN:I

    const/4 v1, 0x5

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_CHARTREUSE_GREEN:I

    const/4 v1, 0x6

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_YELLOW:I

    const/4 v1, 0x7

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_ORANGE:I

    const/16 v1, 0x8

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_RED:I

    const/16 v1, 0x9

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_ROSE:I

    const/16 v1, 0xa

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_MAGENTA:I

    const/16 v1, 0xb

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_VIOLET:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mObservedEventType:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mToken:Landroid/os/Binder;

    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager$MyCallback;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$1;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    iput p3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/view/accessibility/IAccessibilityManager;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_BLUE:I

    const/4 v1, 0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_AZURE:I

    const/4 v1, 0x2

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_CYAN:I

    const/4 v1, 0x3

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_SPRING_GREEN:I

    const/4 v1, 0x4

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_GREEN:I

    const/4 v1, 0x5

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_CHARTREUSE_GREEN:I

    const/4 v1, 0x6

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_YELLOW:I

    const/4 v1, 0x7

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_ORANGE:I

    const/16 v1, 0x8

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_RED:I

    const/16 v1, 0x9

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_ROSE:I

    const/16 v1, 0xa

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_MAGENTA:I

    const/16 v1, 0xb

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->SEM_COLOR_FILTER_TYPE_VIOLET:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    const/4 v1, -0x1

    iput v1, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    iput v0, p0, Landroid/view/accessibility/AccessibilityManager;->mObservedEventType:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mToken:Landroid/os/Binder;

    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager$MyCallback;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/view/accessibility/AccessibilityManager$1;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    iput p3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic access$000(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/view/accessibility/AccessibilityManager;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/accessibility/AccessibilityManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 4

    sget-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x2

    :goto_1
    nop

    new-instance v2, Landroid/view/accessibility/AccessibilityManager;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v1}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    sput-object v2, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V

    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    return-object v0
.end method

.method public static isAccessibilityButtonSupported()Z
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method static synthetic lambda$notifyAccessibilityStateChanged$0(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    return-void
.end method

.method static synthetic lambda$notifyHighTextContrastStateChanged$2(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;->onHighTextContrastStateChanged(Z)V

    return-void
.end method

.method static synthetic lambda$notifyTouchExplorationStateChanged$1(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Z)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    return-void
.end method

.method private notifyAccessibilityStateChanged()V
    .locals 7

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v6, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$yzw5NYY7_MfAQ9gLy3mVllchaXo;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$yzw5NYY7_MfAQ9gLy3mVllchaXo;-><init>(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyHighTextContrastStateChanged()V
    .locals 7

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v6, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$4M6GrmFiqsRwVzn352N10DcU6RM;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$4M6GrmFiqsRwVzn352N10DcU6RM;-><init>(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyTouchExplorationStateChanged()V
    .locals 7

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Handler;

    new-instance v6, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$a0OtrjOl35tiW2vwyvAmY6_LiLI;

    invoke-direct {v6, v4, v1}, Landroid/view/accessibility/-$$Lambda$AccessibilityManager$a0OtrjOl35tiW2vwyvAmY6_LiLI;-><init>(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Z)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setStateLocked(I)V
    .locals 11

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    and-int/lit16 v5, p1, 0x100

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v1

    :goto_3
    const/high16 v6, 0x10000

    and-int/2addr v6, p1

    if-eqz v6, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move v6, v1

    :goto_4
    and-int/lit16 v7, p1, 0x200

    if-eqz v7, :cond_5

    move v7, v2

    goto :goto_5

    :cond_5
    move v7, v1

    :goto_5
    and-int/lit16 v8, p1, 0x400

    if-eqz v8, :cond_6

    move v1, v2

    nop

    :cond_6
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    iget-boolean v8, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    iget-boolean v9, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    iput-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    iput-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    iput-boolean v5, p0, Landroid/view/accessibility/AccessibilityManager;->mIsBixbyRunning:Z

    iput-boolean v6, p0, Landroid/view/accessibility/AccessibilityManager;->mUIAutomatorRunning:Z

    iput-boolean v7, p0, Landroid/view/accessibility/AccessibilityManager;->mIsMagniferWindowEnabled:Z

    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsFollowTypingFocusEnabled:Z

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v10

    if-eq v2, v10, :cond_7

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityStateChanged()V

    :cond_7
    if-eq v8, v3, :cond_8

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyTouchExplorationStateChanged()V

    :cond_8
    if-eq v9, v4, :cond_9

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->notifyHighTextContrastStateChanged()V

    :cond_9
    return-void
.end method

.method private tryConnectToServiceLocked(Landroid/view/accessibility/IAccessibilityManager;)V
    .locals 3

    if-nez p1, :cond_1

    const-string v0, "accessibility"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object p1

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    iget v1, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {p1, v0, v1}, Landroid/view/accessibility/IAccessibilityManager;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    invoke-static {v0, v1}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v2

    iput v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityManager"

    const-string v2, "AccessibilityManagerService is dead"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public OnStartGestureWakeup()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->OnStartGestureWakeup()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityManager"

    const-string v3, "OnStartGestureWakeup Exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public OnStopGestureWakeup()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->OnStopGestureWakeup()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityManager"

    const-string v3, "OnStopGestureWakeup Exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Ljava/lang/String;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I
    .locals 6

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1, p1, p3, p2, v3}, Landroid/view/accessibility/IAccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v4, "AccessibilityManager"

    const-string v5, "Error while adding an accessibility interaction connection. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public addAccessibilityRequestPreparer(Landroid/view/accessibility/AccessibilityRequestPreparer;)V
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRequestPreparer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    if-nez p2, :cond_0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    if-nez p2, :cond_0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    return v0
.end method

.method public addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    if-nez p2, :cond_0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    if-nez p2, :cond_0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;Landroid/os/Handler;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getAccessibilityServiceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v4}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public getCallback()Landroid/os/Handler$Callback;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mCallback:Landroid/os/Handler$Callback;

    return-object v0
.end method

.method public getClient()Landroid/view/accessibility/IAccessibilityManagerClient;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    return-object v0
.end method

.method public getEnabledAccessibilityServiceList(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_0
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, p1, v2}, Landroid/view/accessibility/IAccessibilityManager;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "AccessibilityManager"

    const-string v5, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    invoke-interface {v3, p1, v0}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->getEnabledAccessibilityServiceList(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getInstalledAccessibilityServiceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_0
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->getInstalledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "AccessibilityManager"

    const-string v5, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    invoke-interface {v3, v0}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->getInstalledAccessibilityServiceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 4

    nop

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    return-object v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object v1
.end method

.method public getRequestPreparersForAccessibilityId(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityRequestPreparer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public interrupt()V
    .locals 5

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    const-string v3, "AccessibilityManager"

    const-string v4, "Interrupt called with accessibility disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Accessibility off. Did you forget to check that?"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->interrupt(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "AccessibilityManager"

    const-string v4, "Error while requesting interrupt from all services. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public isAccessibilityVolumeStreamActive()Z
    .locals 4

    nop

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    iget v3, v3, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isBixbyRunning()Z
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_0
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsBixbyRunning:Z

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    invoke-interface {v1, v2}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->isEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFollowTypingFocusEnabled()Z
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsMagniferWindowEnabled:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsFollowTypingFocusEnabled:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isHighTextContrastEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_0
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTopActivityInKnoxMode()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->isTopActivityInKnoxMode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "isTopActivityInKnoxMode Exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public isTouchExplorationEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_0
    iget-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isTwoFingerGestureRecognitionEnabled()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "isTwoFingerGestureRecognitionEnabled Exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public notifyAccessibilityButtonClicked()V
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->notifyAccessibilityButtonClicked()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AccessibilityManager"

    const-string v3, "Error while dispatching accessibility button click"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public notifyAccessibilityButtonVisibilityChanged(Z)V
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->notifyAccessibilityButtonVisibilityChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AccessibilityManager"

    const-string v3, "Error while dispatching accessibility button visibility change"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public performAccessibilityShortcut()V
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->performAccessibilityShortcut()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AccessibilityManager"

    const-string v3, "Error performing accessibility shortcut. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AccessibilityManager"

    const-string v3, "Error while removing an accessibility interaction connection. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeAccessibilityRequestPreparer(Landroid/view/accessibility/AccessibilityRequestPreparer;)V
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRequestPreparer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mRequestPreparerLists:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    return-void
.end method

.method public removeAccessibilityServicesStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mServicesStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)V
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-ltz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public semCheckMdnieColorBlind([I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->semCheckMdnieColorBlind([I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semCheckMdnieColorBlind Exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public semDisableAirGestureWakeUp()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->OnStopGestureWakeup()Z

    move-result v0

    return v0
.end method

.method public semDisableMagnifier()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityManager;->semDisableMagnifier()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "semDisableMagnifier Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public semDisableMdnieColorFilter()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->semDisableMdnieColorFilter()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semDisableMdnieColorFilter Exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public semEnableAirGestureWakeUp()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->OnStartGestureWakeup()Z

    move-result v0

    return v0
.end method

.method public semEnableMagnifier(IIF)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/accessibility/IAccessibilityManager;->semEnableMagnifier(IIF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "semEnableMagnifier Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public semEnableMagnifier(IIFI)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/accessibility/IAccessibilityManager;->semEnableMagnifierByDisplayID(IIFI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "semEnableMagnifier Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public semEnableMdnieColorFilter(II)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->semEnableMdnieColorFilter(II)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semEnableMdnieColorFilter Exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public semHideMagnifier()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/accessibility/IAccessibilityManager;->semSetMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "semSetMagnificationSpec Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public semIsA11yServiceEnabled(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->semIsObservedEventType(I)Z

    move-result v0

    return v0
.end method

.method public semIsAccessibilityServiceEnabled(I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_0
    const-string v1, "AccessibilityManager"

    const-string v2, "accessibility service is not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semIsAccessibilityServiceEnabled exception."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v0
.end method

.method public semIsDarkScreenMode()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1}, Landroid/view/accessibility/IAccessibilityManager;->semIsDarkScreenMode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semIsDarkScreenMode Exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public semIsObservedEventType(I)Z
    .locals 2

    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mUIAutomatorRunning:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/view/accessibility/AccessibilityManager;->mObservedEventType:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public semLockNow()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityManager;->semLockNow()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "semLockNow Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public semOnLightNotification(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->semOnLightNotification(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semOnLightNotification Exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public semOpenDeviceOptions()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityManager;->semOpenDeviceOptions()V

    const-string v0, "AccessibilityManager"

    const-string v1, "Open Device Options from manager:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityManager"

    const-string v2, "Open Device Options Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public semRegisterAssistantMenu(Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    const-string v0, "AccessibilityManager"

    const-string/jumbo v1, "semRegisterAssistantMenu invoking from manager start:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v0, p1}, Landroid/view/accessibility/IAccessibilityManager;->semRegisterAssistantMenu(Landroid/os/IBinder;)V

    const-string v0, "AccessibilityManager"

    const-string/jumbo v1, "semRegisterAssistantMenu invoking from manager end:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "semRegisterAssistantMenu Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public semSetMdnieAccessibilityMode(IZ)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semSetMdnieAccessibilityMode Exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public semSetMdnieColorBlind(ZF)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->semSetColorBlind(ZF)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semSetColorBlind Exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public semSetMdnieColorBlind(Z[I)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1, p2}, Landroid/view/accessibility/IAccessibilityManager;->semSetMdnieColorBlind(Z[I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semSetMdnieColorBlind Exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public semSetMdnieNegative(Z)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->semSetMdnieNegative(Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AccessibilityManager"

    const-string/jumbo v3, "semSetMdnieNegative Exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method public semSetTwoFingerGestureRecognitionEnabled(Z)V
    .locals 3

    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "AccessibilityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessibilityManager - semSetTwoFingerGestureRecognitionEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v0, p1}, Landroid/view/accessibility/IAccessibilityManager;->semSetTwoFingerGestureRecognitionEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "semSetTwoFingerGestureRecognitionEnabled Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Accessibility off. Did you forget to check that?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public semShowMagnifier(FF)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput p1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    iput p2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v1, v0}, Landroid/view/accessibility/IAccessibilityManager;->semSetMagnificationSpec(Landroid/view/MagnificationSpec;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "semSetMagnificationSpec Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public semStartFlashNotification(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mToken:Landroid/os/Binder;

    const/4 v4, 0x2

    invoke-interface {v2, v1, v3, v4}, Landroid/view/accessibility/IAccessibilityManager;->semStartFlashNotification(Ljava/lang/String;Landroid/os/IBinder;I)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "AccessibilityManager"

    const-string/jumbo v4, "semStartFlashNotification Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public semStartFlashNotification(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "AccessibilityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semStartFlashNotification notitype = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mToken:Landroid/os/Binder;

    const/4 v4, 0x1

    invoke-interface {v2, v1, v3, v4}, Landroid/view/accessibility/IAccessibilityManager;->semStartFlashNotification(Ljava/lang/String;Landroid/os/IBinder;I)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "AccessibilityManager"

    const-string/jumbo v4, "semStartFlashNotification Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public semStopFlashNotification(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Landroid/view/accessibility/IAccessibilityManager;->semStopFlashNotification(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "AccessibilityManager"

    const-string/jumbo v4, "semStopFlashNotification Exception:"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public semToggleDarkScreenMode()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v0}, Landroid/view/accessibility/IAccessibilityManager;->semToggleDarkScreenMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "semToggleDarkScreenMode Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public semTurnOffAccessibilityService(I)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v0, p1}, Landroid/view/accessibility/IAccessibilityManager;->semTurnOffAccessibilityService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "semTurnOffAccessibilityService exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public semTurnOnAccessibilityService(I)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->semIsAccessibilityServiceEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v0, p1}, Landroid/view/accessibility/IAccessibilityManager;->semTurnOnAccessibilityService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "semTurnOnAccessibilityService exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public semUpdateAssitantMenu(Landroid/os/Bundle;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    invoke-interface {v0, p1}, Landroid/view/accessibility/IAccessibilityManager;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    const-string v0, "AccessibilityManager"

    const-string/jumbo v1, "semUpdateAssitantMenu invoking from manager:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AccessibilityManager"

    const-string/jumbo v2, "semUpdateAssitantMenu Exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 7

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    iget v4, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    invoke-interface {v2, p1, v3, v4}, Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;ZI)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    if-nez v2, :cond_2

    monitor-exit v0

    return-void

    :cond_1
    move-object v2, p1

    :cond_2
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_3

    const-string v4, "AccessibilityManager"

    const-string v5, "AccessibilityEvent sent with accessibility disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Accessibility off. Did you forget to check that?"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    iget v4, p0, Landroid/view/accessibility/AccessibilityManager;->mRelevantEventTypes:I

    and-int/2addr v3, v4

    if-nez v3, :cond_5

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUIAutomatorRunning:Z

    if-nez v3, :cond_5

    monitor-exit v0

    return-void

    :cond_5
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    iget v4, p0, Landroid/view/accessibility/AccessibilityManager;->mObservedEventType:I

    and-int/2addr v3, v4

    if-nez v3, :cond_7

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUIAutomatorRunning:Z

    if-nez v3, :cond_7

    :cond_6
    monitor-exit v0

    return-void

    :cond_7
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    nop

    if-eq p1, v2, :cond_8

    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    :cond_8
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_5
    const-string v4, "AccessibilityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during sending "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eq p1, v2, :cond_8

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    if-eq p1, v2, :cond_9

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    :cond_9
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    throw v0

    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method public sendFingerprintGesture(I)Z
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setAccessibilityPolicy(Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;)V
    .locals 2

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityPolicy:Landroid/view/accessibility/AccessibilityManager$AccessibilityPolicy;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AccessibilityManager"

    const-string v3, "Error setting picture in picture action replacement"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
