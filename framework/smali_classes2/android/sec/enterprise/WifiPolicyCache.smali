.class public Landroid/sec/enterprise/WifiPolicyCache;
.super Ljava/lang/Object;
.source "WifiPolicyCache.java"


# static fields
.field public static final ACTION_WIFI_POLICY_STATE_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.WIFI_POLICY_STATE_CHANGED_INTERNAL"

.field public static final EXTRA_USER_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

.field public static final EXTRA_WIFI_TYPE_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.WIFI_TYPE_CHANGED_INTERNAL"

.field public static final NO_USER:I = -0x1

.field public static final TYPE_ALLOW_AUTOMATIC_CONNECTION:Ljava/lang/String; = "ALLOW_AUTOMATIC_CONNECTION"

.field public static final TYPE_ALLOW_STATE_CHANGE:Ljava/lang/String; = "ALLOW_STATE_CHANGES"

.field public static final TYPE_ALLOW_USER_CHANGES:Ljava/lang/String; = "ALLOW_USER_CHANGES"

.field public static final TYPE_ALLOW_USER_PROFILES:Ljava/lang/String; = "ALLOW_USER_PROFILES"

.field public static final TYPE_BLACK_SSID_LIST:I = 0x0

.field public static final TYPE_BLOCKED_NETWORKS:Ljava/lang/String; = "BLOCKED_NETWORKS"

.field public static final TYPE_ENTERPRISE_SSIDS:Ljava/lang/String; = "ENTERPRISE_SSIDS"

.field public static final TYPE_MINIMUM_SECURITY_LEVEL:Ljava/lang/String; = "MINIMUM_SECURITY_LEVEL"

.field public static final TYPE_PROMPT_CREDENTIALS_ENABLED:Ljava/lang/String; = "PROMPT_CREDENTIALS_ENABLED"

.field public static final TYPE_WHITE_BLACK_SSID_LIST:Ljava/lang/String; = "WHITE_BLACK_SSID_LIST"

.field public static final TYPE_WHITE_SSID_LIST:I = 0x1

.field public static final TYPE_WIFI_ALLOWED:Ljava/lang/String; = "WIFI_ALLOWED"

.field private static final mSync:Ljava/lang/Object;

.field private static sInstance:Landroid/sec/enterprise/WifiPolicyCache;


# instance fields
.field private mAllowAutomaticConnections:Z

.field private mAllowStateChange:Z

.field private mAllowUserChanges:Z

.field private mAllowUserProfiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mBlackListedSSIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockedSsids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEnterpriseSsids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimumSecurityLevel:I

.field private mPromptCredentialsEnabled:Z

.field private mUserManager:Landroid/os/UserManager;

.field private mWhiteListedSSIDs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiAllowed:Z

.field private mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/sec/enterprise/WifiPolicyCache;->mSync:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowStateChange:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowAutomaticConnections:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWhiteListedSSIDs:Ljava/util/List;

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    iput-object p1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mUserManager:Landroid/os/UserManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.knox.intent.action.WIFI_POLICY_STATE_CHANGED_INTERNAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Landroid/sec/enterprise/WifiPolicyCache$1;

    invoke-direct {v1, p0}, Landroid/sec/enterprise/WifiPolicyCache$1;-><init>(Landroid/sec/enterprise/WifiPolicyCache;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Landroid/sec/enterprise/WifiPolicyCache;->readVariables(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$000(Landroid/sec/enterprise/WifiPolicyCache;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/sec/enterprise/WifiPolicyCache;->readVariables(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;
    .locals 2

    sget-object v0, Landroid/sec/enterprise/WifiPolicyCache;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    if-nez v1, :cond_0

    new-instance v1, Landroid/sec/enterprise/WifiPolicyCache;

    invoke-direct {v1, p0}, Landroid/sec/enterprise/WifiPolicyCache;-><init>(Landroid/content/Context;)V

    sput-object v1, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    :cond_0
    sget-object v1, Landroid/sec/enterprise/WifiPolicyCache;->sInstance:Landroid/sec/enterprise/WifiPolicyCache;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized readVariables(Ljava/lang/String;I)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v2}, Landroid/sec/enterprise/WifiPolicy;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v2}, Landroid/sec/enterprise/WifiPolicy;->getBlockedNetworks()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v2}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v2

    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v2}, Landroid/sec/enterprise/WifiPolicy;->isWifiAllowed()Z

    move-result v2

    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v2}, Landroid/sec/enterprise/WifiPolicy;->getPromptCredentialsEnabled()Z

    move-result v2

    iput-boolean v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v2}, Landroid/sec/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v2

    iput v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v2, v1}, Landroid/sec/enterprise/WifiPolicy;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v2, v0}, Landroid/sec/enterprise/WifiPolicy;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWhiteListedSSIDs:Ljava/util/List;

    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getAutomaticConnectionToWifi()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowAutomaticConnections:Z

    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move p2, v4

    iget-object v4, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v6, v1, p2}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserProfiles(ZI)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v1}, Landroid/sec/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v1

    iput-boolean v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowStateChange:Z

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    const-string v2, "ENTERPRISE_SSIDS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getNetworkSSIDList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    goto/16 :goto_1

    :cond_2
    const-string v2, "BLOCKED_NETWORKS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getBlockedNetworks()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    goto/16 :goto_1

    :cond_3
    const-string v2, "ALLOW_USER_CHANGES"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z

    goto/16 :goto_1

    :cond_4
    const-string v2, "ALLOW_USER_PROFILES"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3, v1, p2}, Landroid/sec/enterprise/WifiPolicy;->getAllowUserProfiles(ZI)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_5
    const-string v2, "WIFI_ALLOWED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->isWifiAllowed()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z

    goto :goto_1

    :cond_6
    const-string v2, "PROMPT_CREDENTIALS_ENABLED"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getPromptCredentialsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z

    goto :goto_1

    :cond_7
    const-string v2, "MINIMUM_SECURITY_LEVEL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    goto :goto_1

    :cond_8
    const-string v2, "WHITE_BLACK_SSID_LIST"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v2, v1}, Landroid/sec/enterprise/WifiPolicy;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v1, v0}, Landroid/sec/enterprise/WifiPolicy;->getWifiSsidRestrictionList(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWhiteListedSSIDs:Ljava/util/List;

    goto :goto_1

    :cond_9
    const-string v0, "ALLOW_AUTOMATIC_CONNECTION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->getAutomaticConnectionToWifi()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowAutomaticConnections:Z

    goto :goto_1

    :cond_a
    const-string v0, "ALLOW_STATE_CHANGES"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v0}, Landroid/sec/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v0

    iput-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowStateChange:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_b
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p1
.end method

.method private showMessage(I)V
    .locals 3

    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mWifiAllowed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/WifiPolicyCache;->isWifiAllowed(Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mAllowStateChange : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroid/sec/enterprise/WifiPolicyCache;->isWifiStateChangeAllowed(Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAllowAutomaticConnections : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/sec/enterprise/WifiPolicyCache;->getAutomaticConnectionToWifi()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAllowUserChanges : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/sec/enterprise/WifiPolicyCache;->getAllowUserChanges()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPromptCredentialsEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/sec/enterprise/WifiPolicyCache;->getPromptCredentialsEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized getAllowUserChanges()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserChanges:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAllowUserProfiles()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowUserProfiles:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAutomaticConnectionToWifi()Z
    .locals 1

    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowAutomaticConnections:Z

    return v0
.end method

.method public declared-synchronized getPromptCredentialsEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mPromptCredentialsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnterpriseNetwork(Ljava/lang/String;)Z
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mEnterpriseSsids:Ljava/util/List;

    invoke-direct {p0, p1}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlockedSsids:Ljava/util/List;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x10402d7

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    invoke-direct {p0, v2}, Landroid/sec/enterprise/WifiPolicyCache;->showMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v3

    :cond_2
    :try_start_1
    invoke-static {p1}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    invoke-static {v1}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v1

    iget v4, p0, Landroid/sec/enterprise/WifiPolicyCache;->mMinimumSecurityLevel:I

    invoke-static {v4}, Landroid/sec/enterprise/WifiPolicy;->getSecurityLevel(I)I

    move-result v4

    if-ge v1, v4, :cond_4

    if-eqz p2, :cond_3

    const v0, 0x10402d8

    invoke-direct {p0, v0}, Landroid/sec/enterprise/WifiPolicyCache;->showMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return v3

    :cond_4
    :try_start_2
    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWhiteListedSSIDs:Ljava/util/List;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    monitor-exit p0

    return v0

    :cond_5
    :try_start_3
    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/sec/enterprise/WifiPolicyCache;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/sec/enterprise/WifiPolicyCache;->mBlackListedSSIDs:Ljava/util/List;

    const-string v4, "*"

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    monitor-exit p0

    return v0

    :cond_7
    :goto_0
    if-eqz p2, :cond_8

    :try_start_4
    invoke-direct {p0, v2}, Landroid/sec/enterprise/WifiPolicyCache;->showMessage(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isWifiAllowed(Z)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mWifiAllowed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isWifiStateChangeAllowed(Z)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/WifiPolicyCache;->mAllowStateChange:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateAllowedFields(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 4

    invoke-static {p2}, Landroid/sec/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    const/4 v1, 0x0

    if-ne p3, v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    :cond_0
    packed-switch v0, :pswitch_data_0

    return-object v1

    :pswitch_0
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "*"

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v1, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v1, p2, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    nop

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    :goto_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
