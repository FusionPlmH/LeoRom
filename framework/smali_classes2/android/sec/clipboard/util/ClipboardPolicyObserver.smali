.class public Landroid/sec/clipboard/util/ClipboardPolicyObserver;
.super Landroid/database/ContentObserver;
.source "ClipboardPolicyObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;
    }
.end annotation


# static fields
.field private static final ALL_PACKAGES:Ljava/lang/String; = "*"

.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.rcppolicyprovider"

.field private static final CLIPBOARD_ALLOWED_BLACKLIST_APP_URI:Landroid/net/Uri;

.field private static final CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

.field private static final CLIPBOARD_ALLOWED_WHITELIST_APP_URI:Landroid/net/Uri;

.field private static final CLIPBOARD_APPLICATION_URI:Landroid/net/Uri;

.field private static final CLIPBOARD_RESCTRICTION_URI:Landroid/net/Uri;

.field private static final CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final SAMSUNG_KEYBOARD_PKGNAME:Ljava/lang/String; = "com.sec.android.inputmethod"

.field private static final TABLE_NAME:Ljava/lang/String; = "RCP_DATA"

.field private static final URL:Ljava/lang/String; = "content://com.sec.knox.rcppolicyprovider/RCP_DATA"

.field private static instance:Landroid/sec/clipboard/util/ClipboardPolicyObserver;


# instance fields
.field private TAG:Ljava/lang/String;

.field private mClipboardAllowedPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardBlackListPolicy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mClipboardBlackListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mClipboardPolicyChangeListener:Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;

.field private mClipboardSharedAllowedKnoxToPersonalPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardSharedAllowedPersonalToKnoxPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardSharedAllowedPolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mClipboardWhiteListPolicy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mClipboardWhiteListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsInitialized:Z

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

.field private mUm:Landroid/os/IUserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.knox.rcppolicyprovider/RCP_DATA"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

    sput-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

    sput-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_RESCTRICTION_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.knox.provider2/ApplicationPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_APPLICATION_URI:Landroid/net/Uri;

    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_BLACKLIST_APP_URI:Landroid/net/Uri;

    sput-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_ALLOWED_BLACKLIST_APP_URI:Landroid/net/Uri;

    sget-object v0, Landroid/sec/clipboard/data/ClipboardConstants;->CLIPBOARD_ALLOWED_WHITELIST_APP_URI:Landroid/net/Uri;

    sput-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_ALLOWED_WHITELIST_APP_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "ClipboardPolicyObserver"

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowedPolicy:Ljava/util/HashMap;

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardWhiteListPolicy:Ljava/util/Map;

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardBlackListPolicy:Ljava/util/Map;

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedKnoxToPersonalPolicy:Ljava/util/HashMap;

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPersonalToKnoxPolicy:Ljava/util/HashMap;

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardWhiteListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardBlackListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mIsInitialized:Z

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mUm:Landroid/os/IUserManager;

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardPolicyChangeListener:Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;

    iput-object p1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IUserManager;

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mUm:Landroid/os/IUserManager;

    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->initHashMap()V

    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-nez v0, :cond_0

    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_0
    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->updateRCPMap()V

    invoke-virtual {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getPersonaId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->updateClipboardAllowedMap(I)V

    invoke-virtual {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getPersonaId()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->updateClipboardSharedAllowedMap(I)V

    sget-boolean v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->SEP_LITE:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/clipboardprotection/Clplog;->setContext(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;
    .locals 4

    const-string v0, "ClipboardPolicyObserver"

    const-string v1, "getInstance is called"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->instance:Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    if-nez v0, :cond_1

    const-class v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->instance:Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    if-nez v1, :cond_0

    new-instance v1, Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    sput-object v1, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->instance:Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->instance:Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    return-object v0
.end method

.method private getPersonaManager()Z
    .locals 3

    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "personaManager is null!"

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_1
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getTopActivityPackageName()Ljava/lang/String;
    .locals 9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, ""

    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    array-length v5, v2

    if-ne v5, v3, :cond_0

    const-string v5, "com.sec.android.inputmethod"

    aget-object v6, v2, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v1, v2, v4

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    iget-object v7, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    invoke-virtual {v7, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    return-object v1
.end method

.method private getUserId()I
    .locals 3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string v2, "getUserId is BBC"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private initHashMap()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowedPolicy:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedKnoxToPersonalPolicy:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPersonalToKnoxPolicy:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardWhiteListPolicy:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardBlackListPolicy:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mIsInitialized:Z

    return-void
.end method

.method private isAllowCrossProfileCopyPaste(I)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mUm:Landroid/os/IUserManager;

    invoke-interface {v1, p1}, Landroid/os/IUserManager;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "no_cross_profile_copy_paste"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get DISALLOW_CROSS_PROFILE_COPY_PASTE value failed: RemoteException occured "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllowCrossProfileCopyPaste ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mIsInitialized:Z

    return v0
.end method

.method private isKnoxVersion1(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "sec_container_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.sec.knox.containeragent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sec.android.app.knoxlauncher"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private isListIncludePackage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    nop

    :cond_3
    return v0

    :cond_4
    :goto_2
    return v0
.end method

.method private updateClipboardAllowedMap(I)V
    .locals 8

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const-string/jumbo v0, "true"

    const/4 v1, 0x0

    aput-object v0, v5, v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    aput-object v0, v5, v7

    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_RESCTRICTION_URI:Landroid/net/Uri;

    const-string/jumbo v4, "isClipboardAllowedAsUser"

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v1, "isClipboardAllowedAsUser"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateClipboardAllowedMap - userId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateClipboardAllowedMap, exception is occured hence set true"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateClipboardAllowedMap, cursor is null hence set true"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private updateClipboardBlackListMap(I)V
    .locals 8

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v7, v1

    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardBlackListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_APPLICATION_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "getPackagesFromDisableClipboardBlackListPerUidInternal"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "clipboard_blacklist_perUid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/HashMap;

    move-object v7, v3

    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardBlackListPolicy:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardBlackListPolicy:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateClipboardBlackListMap - exception occured!."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardBlackListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    nop

    return-void

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardBlackListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method private updateClipboardSharedAllowedMap(I)V
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v5, v2

    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_RESCTRICTION_URI:Landroid/net/Uri;

    const-string/jumbo v4, "isClipboardShareAllowedAsUser"

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v2, "isClipboardShareAllowedAsUser"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateClipboardSharedAllowedMap - userId : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", result : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateClipboardSharedAllowedMap, exception is occured hence set true"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateClipboardSharedAllowedMap, cursor is null hence set true"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method

.method private updateClipboardWhiteListMap(I)V
    .locals 8

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v5, v1

    const/4 v0, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v7, v1

    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardWhiteListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_0
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_APPLICATION_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "getPackagesFromDisableClipboardWhiteListPerUidInternal"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "clipboard_whitelist_perUid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/HashMap;

    move-object v7, v3

    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardWhiteListPolicy:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardWhiteListPolicy:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_1
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateClipboardWhiteListMap - exception occured!."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardWhiteListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    nop

    return-void

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardWhiteListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v1
.end method

.method private updateRCPMap()V
    .locals 6

    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateRCPMap is called"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getPersonaManager()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const-string/jumbo v4, "persona_policy"

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersonaPolicyManager;

    iput-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    :cond_0
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    if-eqz v3, :cond_2

    nop

    :goto_0
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, -0x1

    if-le v0, v3, :cond_1

    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedKnoxToPersonalPolicy:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v5, v0}, Landroid/os/PersonaPolicyManager;->isShareClipboardDataToOwnerAllowed(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPersonalToKnoxPolicy:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaPolicyManager:Landroid/os/PersonaPolicyManager;

    invoke-virtual {v5, v0}, Landroid/os/PersonaPolicyManager;->isShareClipboardDataToContainerAllowed(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong user : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string v3, "PersonaPolicyManager is null"

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string v1, "PersonaManager is null"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method


# virtual methods
.method public getPersonaId()I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getPersonaManager()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getUserId()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getUserId()I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public isAllowedSharingKnoxDataToPersonal(I)Z
    .locals 4

    invoke-direct {p0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isAllowCrossProfileCopyPaste(I)Z

    move-result v0

    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAllowedSharingKnoxDataToPersonal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isAllowedSharingPersonalDataToKnox(I)Z
    .locals 3

    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAllowedSharingPersonalDataToKnox, userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPersonalToKnoxPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPersonalToKnoxPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isClipboardAllowed(I)Z
    .locals 4

    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isClipboardAllowed, userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isClipboardSharedAllowed(I)Z
    .locals 4

    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isClipboardSharedAllowed, userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardSharedAllowedPolicy:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public isPackageAllowed(I)Z
    .locals 13

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getTopActivityPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "package name is empty."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-direct {p0, v1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isKnoxVersion1(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string v3, "KNOX 1.0 not supported so blocking it."

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_1
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardBlackListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardWhiteListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_0
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardBlackListPolicy:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_2

    nop

    iget-object v4, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardBlackListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    iget-object v4, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardWhiteListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    if-nez v3, :cond_3

    nop

    iget-object v4, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardBlackListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    iget-object v4, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardWhiteListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :cond_3
    :try_start_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardBlackListPolicy:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    iget-object v8, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardWhiteListPolicy:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v7, :cond_4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move-object v9, v11

    :cond_4
    if-eqz v8, :cond_5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    move-object v10, v11

    :cond_5
    invoke-direct {p0, v9, v1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isListIncludePackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-direct {p0, v10, v1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isListIncludePackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v12

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPackageAllowed, Exception occure. isAllowed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :goto_1
    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardBlackListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardWhiteListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    iget-object v2, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPackageAllowed, userId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", packageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", isAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :goto_2
    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardBlackListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    iget-object v3, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardWhiteListPolicyLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v2
.end method

.method public isPackageAllowedCLP(ZZZ)Z
    .locals 2

    sget-boolean v0, Lcom/sec/android/clipboardprotection/Clipboardprotection;->SEP_LITE:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getTopActivityPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/sec/android/clipboardprotection/Clipboardprotection;->isPackageAllowed(ZZZLjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChage is calledm uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .locals 3

    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChage is calledm uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->initHashMap()V

    :cond_0
    sget-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_ALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p3}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->updateClipboardAllowedMap(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_SHARED_ALLOWED_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p3}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->updateClipboardSharedAllowedMap(I)V

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->updateRCPMap()V

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_ALLOWED_BLACKLIST_APP_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p3}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->updateClipboardBlackListMap(I)V

    goto :goto_0

    :cond_4
    sget-object v0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->CLIPBOARD_ALLOWED_WHITELIST_APP_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p3}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->updateClipboardWhiteListMap(I)V

    :cond_5
    :goto_0
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardPolicyChangeListener:Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardPolicyChangeListener:Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;

    invoke-interface {v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;->onChanged()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onChage - ClipboardPolicyChangeListener is null"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public registerClipboardPolicyChangeListener(Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardPolicyChangeListener:Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;

    return-void
.end method

.method public unregisterClipboardPolicyChangeListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->mClipboardPolicyChangeListener:Landroid/sec/clipboard/util/ClipboardPolicyObserver$ClipboardPolicyChangeListener;

    return-void
.end method
