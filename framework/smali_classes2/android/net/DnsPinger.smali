.class public final Landroid/net/DnsPinger;
.super Landroid/os/Handler;
.source "DnsPinger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/DnsPinger$DnsResult;,
        Landroid/net/DnsPinger$DnsArg;,
        Landroid/net/DnsPinger$ActivePing;
    }
.end annotation


# static fields
.field private static final ACTION_CANCEL_ALL_PINGS:I = 0x91003

.field private static final ACTION_LISTEN_FOR_RESPONSE:I = 0x91002

.field private static final ACTION_PING_DNS:I = 0x91001

.field private static final ACTION_PING_DNS_SPECIFIC:I = 0x91004

.field private static final BASE:I = 0x91000

.field public static final CACHED_RESULT:I = 0x1

.field private static final CHECK_ARP_TABLE_UPDATE_TIMEOUT:I = 0x3e8

.field private static final DBG:Z

.field public static final DNS_PING_RESULT:I = 0x91000

.field public static final DNS_PING_RESULT_SPECIFIC:I = 0x91005

.field private static final DNS_PORT:I = 0x35

.field private static final DNS_RESPONSE_BUFFER_SIZE:I = 0x200

.field private static MostRecentDnsResultMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/net/DnsPinger$DnsResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_INTERNET:I = -0x3

.field public static final PRIVATE_IP_ADDRESS:I = 0x2

.field private static final RECEIVE_POLL_INTERVAL_MS:I = 0xc8

.field public static final REQUESTED_URL_ALREADY_IP_ADDRESS:I = 0x3

.field private static final SMARTCM_DBG:Z = false

.field public static final SOCKET_EXCEPTION:I = -0x2

.field private static final SOCKET_TIMEOUT_MS:I = 0x1

.field public static final TIMEOUT:I = -0x1

.field private static needInitialArpTest:Z

.field private static final sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final sRandom:Ljava/util/Random;


# instance fields
.field private final ARP_LENGTH:I

.field DnsResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/DnsPinger$DnsResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ETHERNET_TYPE:I

.field private final IPV4_LENGTH:I

.field private L2_BROADCAST:[B

.field private final MAC_ADDR_LENGTH:I

.field private final MAX_LENGTH:I

.field private TAG:Ljava/lang/String;

.field final lock:Ljava/lang/Object;

.field private mActivePings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/DnsPinger$ActivePing;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionType:I

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDefaultDns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mDnsQuery:[B

.field private mEventCounter:I

.field private mGateway:Ljava/net/InetAddress;

.field mLp:Landroid/net/LinkProperties;

.field private mPrefixLength:I

.field private mSocket:Llibcore/net/RawSocket;

.field private final mTarget:Landroid/os/Handler;

.field mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/net/DnsPinger;->needInitialArpTest:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;I)V
    .locals 3

    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    iput-object v0, p0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    const/4 v1, 0x0

    iput v1, p0, Landroid/net/DnsPinger;->mPrefixLength:I

    iput-object v0, p0, Landroid/net/DnsPinger;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    iput-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    iput-object v0, p0, Landroid/net/DnsPinger;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/16 v0, 0x5dc

    iput v0, p0, Landroid/net/DnsPinger;->MAX_LENGTH:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/net/DnsPinger;->ETHERNET_TYPE:I

    const/16 v0, 0x1c

    iput v0, p0, Landroid/net/DnsPinger;->ARP_LENGTH:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/net/DnsPinger;->MAC_ADDR_LENGTH:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/net/DnsPinger;->IPV4_LENGTH:I

    iput-object p2, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    iput-object p1, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    iput-object p4, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    iput p5, p0, Landroid/net/DnsPinger;->mConnectionType:I

    invoke-static {p5}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/net/DnsPinger;->getDefaultDns()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v1, p0, Landroid/net/DnsPinger;->mEventCounter:I

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/DnsPinger;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid connectionType in constructor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkArpTableForGateway(J)V
    .locals 12

    iget-object v0, p0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    if-nez v0, :cond_0

    const-string v0, "checkArpTableForGateway - Cannot find Gateway."

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    if-eqz v0, :cond_8

    const-string/jumbo v0, "wlan0"

    iget-object v1, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Landroid/net/DnsPinger;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/net/DnsPinger;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Landroid/net/DnsPinger;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_2

    const-string v0, "checkArpTableForGateway - WifiInfo is null."

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    iget-object v1, p0, Landroid/net/DnsPinger;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v2, "checkArpTableForGateway - myAddr is null."

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x0

    const/16 v5, 0x64

    :goto_0
    const/16 v6, 0x12c

    if-gt v5, v6, :cond_7

    add-int/lit8 v4, v4, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-object v8, p0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/net/DnsPinger;->isOnArpTable(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " GW MAC address found in ARP table."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " msec."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v8, p0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    iget-object v9, p0, Landroid/net/DnsPinger;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v5, v8, v1, v9}, Landroid/net/DnsPinger;->sendArp(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/net/DnsPinger;->macToString([B)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " GW responded to ARP request."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " msec. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_6
    goto :goto_1

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkArpTableForGateway Exception - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x32

    goto/16 :goto_0

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GW is not reachable for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " msec."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_2
    const-string v0, "checkArpTableForGateway - wlan0 LinkProperties not ready."

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getCurrentLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    iget-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_1
    iget-object v0, p0, Landroid/net/DnsPinger;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v1, p0, Landroid/net/DnsPinger;->mConnectionType:I

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultDns()Ljava/net/InetAddress;
    .locals 3

    iget-object v0, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_dns_server"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/net/DnsPinger;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10401f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :try_start_0
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "getDefaultDns::malformed default dns address"

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method private getKernelTime()Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    long-to-double v2, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private isDnsResponsePrivateAddress(Ljava/lang/String;)Z
    .locals 11

    iget-object v0, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    :goto_0
    if-ltz v4, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/DnsPinger$DnsResult;

    iget-object v5, v5, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/DnsPinger$DnsResult;

    iget-object v6, v6, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/DnsPinger$DnsResult;

    iget-object v8, v8, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    const/4 v9, 0x2

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-object v9, v9, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    const/4 v10, 0x3

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xa

    if-eq v5, v10, :cond_3

    const/16 v10, 0xc0

    if-ne v5, v10, :cond_0

    const/16 v10, 0xa8

    if-eq v6, v10, :cond_3

    :cond_0
    const/16 v10, 0xac

    if-ne v5, v10, :cond_1

    const/16 v10, 0x10

    if-lt v6, v10, :cond_1

    const/16 v10, 0x1f

    if-le v6, v10, :cond_3

    :cond_1
    if-ne v5, v7, :cond_2

    const/16 v10, 0x21

    if-ne v6, v10, :cond_2

    const/16 v10, 0xcb

    if-ne v8, v10, :cond_2

    const/16 v10, 0x27

    if-ne v9, v10, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - Dns Response with Private Network IP Address !!! - "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "."

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_4
    monitor-exit v0

    return v7

    :cond_5
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendResponse(III)V
    .locals 3

    sget-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Responding to packet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " externalId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and val "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v1, 0x91005

    const/4 v2, 0x0

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {p0, v1, p1, p3, v2}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v1, 0x91000

    invoke-virtual {p0, v1, p1, p3}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private sendResponse(IIILjava/lang/String;)V
    .locals 8

    sget-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Responding to packet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " externalId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " val "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, -0x1

    if-ne p3, v2, :cond_1

    :try_start_0
    sget-object v2, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v2, p4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v2, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/DnsPinger$DnsResult;

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    move-object v0, v3

    sget-boolean v3, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending most recent DNS result, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", expired "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v2, Landroid/net/DnsPinger$DnsResult;->ttl:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " msec ago."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v2, 0x91005

    invoke-virtual {p0, v2, p1, p3, v0}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v2, 0x91000

    invoke-virtual {p0, v2, p1, p3}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private sendResponse(IIILjava/lang/String;II)V
    .locals 6

    sget-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Responding to packet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " externalId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and val "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SPECIFIC DNS PING: url - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", responseVal : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/DnsPinger$DnsResult;

    iget-object v1, v1, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    iget-object v2, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v3, 0x91005

    invoke-virtual {p0, v3, p1, p3, v1}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    int-to-long v4, p6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private updateDnsDB([BILjava/lang/String;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v0, 0x0

    aget-byte v5, p1, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x1

    add-int/2addr v0, v6

    aget-byte v7, p1, v0

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    add-int/2addr v0, v6

    aget-byte v7, p1, v0

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v0, v6

    aget-byte v8, p1, v0

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    add-int/2addr v0, v6

    aget-byte v8, p1, v0

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v0, v6

    aget-byte v9, p1, v0

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v8, v9

    add-int/2addr v0, v6

    aget-byte v9, p1, v0

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/2addr v0, v6

    aget-byte v10, p1, v0

    and-int/lit16 v10, v10, 0xff

    add-int/2addr v9, v10

    add-int/2addr v0, v6

    aget-byte v10, p1, v0

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v0, v6

    aget-byte v11, p1, v0

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v10, v11

    add-int/2addr v0, v6

    aget-byte v11, p1, v0

    and-int/lit16 v11, v11, 0xff

    shl-int/lit8 v11, v11, 0x8

    add-int/2addr v0, v6

    aget-byte v12, p1, v0

    and-int/lit16 v12, v12, 0xff

    add-int/2addr v11, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    add-int/2addr v0, v6

    aget-byte v13, p1, v0

    if-eqz v13, :cond_1

    move v13, v6

    :goto_1
    aget-byte v14, p1, v0

    if-gt v13, v14, :cond_0

    const-string v14, "%c"

    move/from16 v17, v5

    new-array v5, v6, [Ljava/lang/Object;

    add-int v18, v0, v13

    aget-byte v6, p1, v18

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const/16 v16, 0x0

    aput-object v6, v5, v16

    invoke-static {v14, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v17

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move/from16 v17, v5

    const/16 v5, 0x2e

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v5, p1, v0

    add-int/2addr v0, v5

    move/from16 v5, v17

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    move/from16 v17, v5

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move v13, v0

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v9, :cond_8

    add-int/lit8 v14, v13, 0xc

    move/from16 v19, v7

    const/16 v7, 0x200

    if-ge v14, v7, :cond_7

    add-int/lit8 v13, v13, 0x1

    aget-byte v14, p1, v13

    const/16 v7, 0xc0

    and-int/2addr v14, v7

    if-ne v14, v7, :cond_2

    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x1

    goto :goto_4

    :cond_2
    :goto_3
    const/4 v7, 0x1

    add-int/2addr v13, v7

    aget-byte v14, p1, v13

    if-eqz v14, :cond_3

    goto :goto_3

    :cond_3
    :goto_4
    add-int/2addr v13, v7

    aget-byte v14, p1, v13

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    add-int/2addr v13, v7

    aget-byte v7, p1, v13

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v14, v7

    const/4 v7, 0x1

    add-int/2addr v13, v7

    aget-byte v7, p1, v13

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    move/from16 v20, v8

    const/4 v8, 0x1

    add-int/2addr v13, v8

    aget-byte v8, p1, v13

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/2addr v13, v8

    aget-byte v8, p1, v13

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    move/from16 v21, v7

    const/4 v7, 0x1

    add-int/2addr v13, v7

    aget-byte v7, p1, v13

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    add-int/2addr v8, v7

    const/4 v7, 0x1

    add-int/2addr v13, v7

    aget-byte v7, p1, v13

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v8, v7

    const/4 v7, 0x1

    add-int/2addr v13, v7

    aget-byte v7, p1, v13

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v8, v7

    const/4 v7, 0x1

    add-int/2addr v13, v7

    aget-byte v7, p1, v13

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    move/from16 v22, v9

    const/4 v9, 0x1

    add-int/2addr v13, v9

    aget-byte v9, p1, v13

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v7, v9

    add-int v9, v13, v7

    move/from16 v23, v10

    const/16 v10, 0x200

    if-lt v9, v10, :cond_4

    move-wide/from16 v27, v3

    move/from16 v24, v11

    goto/16 :goto_7

    :cond_4
    const/4 v9, 0x1

    if-ne v14, v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v13, v13, 0x1

    aget-byte v10, p1, v13

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v15, 0x1

    add-int/2addr v13, v15

    aget-byte v10, p1, v13

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v13, v15

    aget-byte v10, p1, v13

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x2e

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v13, v15

    aget-byte v10, p1, v13

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Landroid/net/DnsPinger$DnsResult;

    move/from16 v24, v11

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v11

    move/from16 v25, v13

    mul-int/lit16 v13, v8, 0x3e8

    move/from16 v26, v14

    int-to-long v13, v13

    add-long/2addr v13, v3

    invoke-direct {v10, v1, v11, v13, v14}, Landroid/net/DnsPinger$DnsResult;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;J)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v11, "["

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "] "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    move-wide/from16 v27, v3

    move/from16 v13, v25

    const/4 v14, 0x1

    goto :goto_6

    :cond_5
    move/from16 v24, v11

    move/from16 v26, v14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v7, :cond_6

    const/16 v11, 0x5b

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v11, "%02X"

    move-wide/from16 v27, v3

    const/4 v14, 0x1

    new-array v3, v14, [Ljava/lang/Object;

    add-int/lit8 v13, v13, 0x1

    aget-byte v4, p1, v13

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v15, 0x0

    aput-object v4, v3, v15

    invoke-static {v11, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v3, v27

    goto :goto_5

    :cond_6
    move-wide/from16 v27, v3

    const/4 v14, 0x1

    :goto_6
    add-int/lit8 v0, v0, 0x1

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v9, v22

    move/from16 v10, v23

    move/from16 v11, v24

    move-wide/from16 v3, v27

    goto/16 :goto_2

    :cond_7
    move-wide/from16 v27, v3

    move/from16 v20, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    goto :goto_7

    :cond_8
    move-wide/from16 v27, v3

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move/from16 v24, v11

    :goto_7
    sget-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Landroid/net/DnsPinger;->getKernelTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "DNS Result - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_9
    iget-object v3, v1, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, v1, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_a
    const/4 v0, 0x0

    :goto_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_b

    iget-object v4, v1, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    invoke-direct {v1, v2}, Landroid/net/DnsPinger;->isDnsResponsePrivateAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/DnsPinger$DnsResult;

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_a

    :cond_c
    sget-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v0, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hashmap DnsResultMap contains "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " entries, url: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " IPs"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_d
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateDnsQuery(Ljava/lang/String;)V
    .locals 11

    const/16 v0, 0xc

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    const/4 v2, 0x5

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v8}, [B->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move v9, v5

    move v5, v4

    :goto_0
    if-ltz v5, :cond_1

    aget-byte v10, v8, v5

    if-ne v10, v7, :cond_0

    aput-byte v9, v8, v5

    const/4 v9, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v9, 0x1

    int-to-byte v9, v10

    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    const/16 v5, 0x12

    add-int/2addr v5, v4

    new-array v5, v5, [B

    const/4 v7, 0x0

    invoke-static {v1, v7, v5, v7, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v10, v4, 0x1

    invoke-static {v8, v7, v5, v0, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v0, v4, 0xd

    invoke-static {v3, v7, v5, v0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-virtual {v5}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/DnsPinger;->mDnsQuery:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
    .end array-data
.end method

.method private updateDnsResultMap(Ljava/lang/String;)V
    .locals 13

    iget-object v0, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    :goto_0
    if-ltz v5, :cond_5

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/DnsPinger$DnsResult;

    iget-object v6, v6, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    and-int/lit16 v6, v6, 0xff

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/DnsPinger$DnsResult;

    iget-object v7, v7, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    const/4 v8, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/DnsPinger$DnsResult;

    iget-object v9, v9, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v9}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v9

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/DnsPinger$DnsResult;

    iget-object v10, v10, Landroid/net/DnsPinger$DnsResult;->resultIp:Ljava/net/InetAddress;

    invoke-virtual {v10}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    const/4 v11, 0x3

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0xa

    if-eq v6, v11, :cond_3

    const/16 v11, 0xc0

    if-ne v6, v11, :cond_0

    const/16 v11, 0xa8

    if-eq v7, v11, :cond_3

    :cond_0
    const/16 v11, 0xac

    if-ne v6, v11, :cond_1

    const/16 v11, 0x10

    if-lt v7, v11, :cond_1

    const/16 v11, 0x1f

    if-le v7, v11, :cond_3

    :cond_1
    if-ne v6, v8, :cond_2

    const/16 v8, 0x21

    if-ne v7, v8, :cond_2

    const/16 v8, 0xcb

    if-ne v9, v8, :cond_2

    const/16 v8, 0x27

    if-ne v10, v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/DnsPinger$DnsResult;

    iget-wide v11, v8, Landroid/net/DnsPinger$DnsResult;->ttl:J

    cmp-long v8, v2, v11

    if-lez v8, :cond_4

    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    :goto_1
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateGatewayIp()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    iget-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    invoke-virtual {v1}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/RouteInfo;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0.0.0.0/0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object v2, p0, Landroid/net/DnsPinger;->mGateway:Ljava/net/InetAddress;

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    iput v3, p0, Landroid/net/DnsPinger;->mPrefixLength:I

    instance-of v3, v2, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method


# virtual methods
.method public cancelPings()V
    .locals 1

    iget-object v0, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    const v0, 0x91003

    invoke-virtual {p0, v0}, Landroid/net/DnsPinger;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    sget-object v1, Landroid/net/DnsPinger;->MostRecentDnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDnsList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/net/DnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurLinkProperties:: LP for type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/DnsPinger;->mConnectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is null!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2

    :cond_2
    :goto_0
    const-string v2, "getDns::LinkProps has null dns - returning default"

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/DnsPinger;->mDefaultDns:Ljava/util/ArrayList;

    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 19

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const/16 v0, -0xbe

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    move v10, v0

    :try_start_0
    iget v0, v9, Landroid/os/Message;->what:I

    const/4 v14, -0x2

    const/4 v15, 0x0

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    iget-object v0, v8, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/DnsPinger$ActivePing;

    iget-object v2, v1, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, v8, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/16 :goto_f

    :pswitch_1
    iget v0, v9, Landroid/os/Message;->arg1:I

    iget v1, v8, Landroid/net/DnsPinger;->mEventCounter:I

    if-eq v0, v1, :cond_1

    goto/16 :goto_f

    :cond_1
    iget-object v0, v8, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DnsPinger$ActivePing;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v2, v0

    const/16 v0, 0x200

    :try_start_1
    new-array v3, v0, [B

    new-instance v4, Ljava/net/DatagramPacket;

    invoke-direct {v4, v3, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object v0, v4

    iget-object v4, v2, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v4, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    const/4 v4, 0x0

    aget-byte v5, v3, v15

    iget-short v6, v2, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    if-ne v5, v6, :cond_2

    aget-byte v5, v3, v7

    iget-short v6, v2, Landroid/net/DnsPinger$ActivePing;->packetId:S

    int-to-byte v6, v6

    if-ne v5, v6, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    sget-boolean v5, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "response ID doesn\'t match with query ID."

    invoke-direct {v8, v5}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_3
    iget-object v5, v8, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/DnsPinger$ActivePing;

    aget-byte v11, v3, v15

    iget-short v12, v6, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v12, v12, 0x8

    int-to-byte v12, v12

    if-ne v11, v12, :cond_4

    aget-byte v11, v3, v7

    iget-short v12, v6, Landroid/net/DnsPinger$ActivePing;->packetId:S

    int-to-byte v12, v12

    if-ne v11, v12, :cond_4

    iget-object v11, v2, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    if-eqz v11, :cond_4

    iget-object v11, v2, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    iget-object v12, v6, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string/jumbo v5, "response ID didn\'t match, but DNS response is usable."

    invoke-direct {v8, v5}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v4, :cond_9

    const/4 v5, 0x3

    aget-byte v5, v3, v5

    and-int/lit8 v5, v5, 0xf

    if-nez v5, :cond_7

    const/4 v5, 0x6

    aget-byte v5, v3, v5

    if-nez v5, :cond_6

    const/4 v5, 0x7

    aget-byte v5, v3, v5

    if-eqz v5, :cond_7

    :cond_6
    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v11, v2, Landroid/net/DnsPinger$ActivePing;->start:J

    sub-long/2addr v5, v11

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v6

    iget-object v11, v2, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-direct {v8, v5, v6, v11}, Landroid/net/DnsPinger;->updateDnsDB([BILjava/lang/String;)V

    iget-object v5, v2, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-direct {v8, v5}, Landroid/net/DnsPinger;->isDnsResponsePrivateAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto :goto_4

    :cond_7
    sget-boolean v5, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "Reply code is not 0(No Error) or Answer Record Count is 0"

    invoke-direct {v8, v5}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    :cond_8
    const/4 v5, -0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v2, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto :goto_4

    :cond_9
    const-string/jumbo v5, "response ID didn\'t match, ignoring packet"

    invoke-direct {v8, v5}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    sget-boolean v3, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DnsPinger.pingDns got socket exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_a
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    goto :goto_5

    :catch_1
    move-exception v0

    :cond_b
    :goto_4
    nop

    :goto_5
    goto/16 :goto_1

    :cond_c
    iget-object v0, v8, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    move-object v11, v0

    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/DnsPinger$ActivePing;

    move-object v12, v0

    iget-object v0, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    if-eqz v0, :cond_10

    iget-short v0, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    and-int/2addr v0, v7

    if-ne v0, v7, :cond_f

    iget-object v0, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_f

    iget-object v6, v8, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, v8, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    iget-object v1, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move-object v5, v0

    if-eqz v5, :cond_d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v0, :cond_d

    :try_start_4
    iget v2, v12, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v3, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    iget-object v0, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    sget-object v1, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    iget-object v7, v8, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    iget-object v13, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v1, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v13, 0x0

    move-object v1, v8

    move-object/from16 v16, v5

    move-object v5, v0

    move-object/from16 v17, v6

    move v6, v7

    move v7, v13

    :try_start_5
    invoke-direct/range {v1 .. v7}, Landroid/net/DnsPinger;->sendResponse(IIILjava/lang/String;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    :goto_7
    goto :goto_8

    :cond_d
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    :try_start_6
    sget-boolean v0, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v0, :cond_e

    iget-object v0, v8, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There are no results about "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget v0, v12, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v1, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    invoke-direct {v8, v0, v1, v14}, Landroid/net/DnsPinger;->sendResponse(III)V

    :goto_8
    monitor-exit v17

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object/from16 v17, v6

    :goto_9
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_9

    :cond_f
    iget v0, v12, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v1, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    iget-object v2, v12, Landroid/net/DnsPinger$ActivePing;->result:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v8, v0, v1, v2}, Landroid/net/DnsPinger;->sendResponse(III)V

    :goto_a
    iget-object v0, v12, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_b

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, v12, Landroid/net/DnsPinger$ActivePing;->start:J

    iget v4, v12, Landroid/net/DnsPinger$ActivePing;->timeout:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_11

    iget v0, v12, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget-short v1, v12, Landroid/net/DnsPinger$ActivePing;->packetId:S

    const/4 v2, -0x1

    iget-object v3, v12, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    invoke-direct {v8, v0, v1, v2, v3}, Landroid/net/DnsPinger;->sendResponse(IIILjava/lang/String;)V

    iget-object v0, v12, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    :cond_11
    :goto_b
    nop

    move-object v0, v11

    const/4 v7, 0x1

    goto/16 :goto_6

    :cond_12
    iget-object v0, v8, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, v8, Landroid/net/DnsPinger;->mEventCounter:I

    const v1, 0x91002

    invoke-virtual {v8, v1, v0, v15}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v8, v0, v1, v2}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_f

    :pswitch_2
    iget-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/DnsPinger$DnsArg;

    move-object v1, v0

    iget v0, v1, Landroid/net/DnsPinger$DnsArg;->seq:I

    iget-object v2, v8, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v0, v2, :cond_13

    goto/16 :goto_f

    :cond_13
    sget-boolean v0, Landroid/net/DnsPinger;->needInitialArpTest:Z

    if-eqz v0, :cond_14

    const-wide/16 v2, 0x3e8

    invoke-direct {v8, v2, v3}, Landroid/net/DnsPinger;->checkArpTableForGateway(J)V

    sput-boolean v15, Landroid/net/DnsPinger;->needInitialArpTest:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_14
    const v2, 0x91001

    :try_start_8
    new-instance v0, Landroid/net/DnsPinger$ActivePing;

    const/4 v3, 0x0

    invoke-direct {v0, v8, v3}, Landroid/net/DnsPinger$ActivePing;-><init>(Landroid/net/DnsPinger;Landroid/net/DnsPinger$1;)V

    move-object v3, v0

    iget-object v0, v1, Landroid/net/DnsPinger$DnsArg;->dns:Ljava/net/InetAddress;

    move-object v4, v0

    iget-object v0, v1, Landroid/net/DnsPinger$DnsArg;->targetUrl:Ljava/lang/String;

    invoke-direct {v8, v0}, Landroid/net/DnsPinger;->updateDnsQuery(Ljava/lang/String;)V

    iget v0, v9, Landroid/os/Message;->arg1:I

    iput v0, v3, Landroid/net/DnsPinger$ActivePing;->internalId:I

    iget v0, v9, Landroid/os/Message;->arg2:I

    iput v0, v3, Landroid/net/DnsPinger$ActivePing;->timeout:I

    iget-object v0, v1, Landroid/net/DnsPinger$DnsArg;->targetUrl:Ljava/lang/String;

    iput-object v0, v3, Landroid/net/DnsPinger$ActivePing;->url:Ljava/lang/String;

    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v0, v3, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    iget-object v0, v3, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/DatagramSocket;->setSoTimeout(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    iget-object v0, v3, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-direct/range {p0 .. p0}, Landroid/net/DnsPinger;->getCurrentLinkProperties()Landroid/net/LinkProperties;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/net/DatagramSocket;->setNetworkInterface(Ljava/net/NetworkInterface;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_c

    :catch_4
    move-exception v0

    :try_start_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendDnsPing::Error binding to socket "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V

    :goto_c
    iget v0, v9, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_15

    sget-object v0, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    shl-int/2addr v0, v5

    int-to-short v0, v0

    iput-short v0, v3, Landroid/net/DnsPinger$ActivePing;->packetId:S

    goto :goto_d

    :cond_15
    sget-object v0, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    shl-int/2addr v0, v5

    add-int/2addr v0, v5

    int-to-short v0, v0

    iput-short v0, v3, Landroid/net/DnsPinger$ActivePing;->packetId:S

    :goto_d
    iget-object v0, v8, Landroid/net/DnsPinger;->mDnsQuery:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-short v6, v3, Landroid/net/DnsPinger$ActivePing;->packetId:S

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v0, v15

    iget-short v6, v3, Landroid/net/DnsPinger$ActivePing;->packetId:S

    int-to-byte v6, v6

    aput-byte v6, v0, v5

    new-instance v6, Ljava/net/DatagramPacket;

    array-length v7, v0

    const/16 v11, 0x35

    invoke-direct {v6, v0, v7, v4, v11}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    sget-boolean v7, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v7, :cond_16

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Landroid/net/DnsPinger;->getKernelTime()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "Sending a ping "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v3, Landroid/net/DnsPinger$ActivePing;->internalId:I

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " with packetId "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v11, v3, Landroid/net/DnsPinger$ActivePing;->packetId:S

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v11, v3, Landroid/net/DnsPinger$ActivePing;->packetId:S

    const v12, 0xffff

    and-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ")."

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_16
    iget-object v7, v3, Landroid/net/DnsPinger$ActivePing;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v7, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    iget-object v7, v8, Landroid/net/DnsPinger;->mActivePings:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v7, v8, Landroid/net/DnsPinger;->mEventCounter:I

    add-int/2addr v7, v5

    iput v7, v8, Landroid/net/DnsPinger;->mEventCounter:I

    iget v5, v8, Landroid/net/DnsPinger;->mEventCounter:I

    const v7, 0x91002

    invoke-virtual {v8, v7, v5, v15}, Landroid/net/DnsPinger;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v11, 0xc8

    invoke-virtual {v8, v5, v11, v12}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_f

    :catch_5
    move-exception v0

    :try_start_b
    iget v3, v9, Landroid/os/Message;->what:I

    if-ne v3, v2, :cond_17

    iget v2, v9, Landroid/os/Message;->arg1:I

    const/16 v3, -0x270e

    invoke-direct {v8, v2, v3, v14}, Landroid/net/DnsPinger;->sendResponse(III)V

    goto :goto_e

    :cond_17
    iget v2, v9, Landroid/os/Message;->arg1:I

    const/16 v3, -0x270f

    invoke-direct {v8, v2, v3, v14}, Landroid/net/DnsPinger;->sendResponse(III)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_e
    nop

    :cond_18
    :goto_f
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    nop

    return-void

    :catchall_2
    move-exception v0

    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x91001
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isOnArpTable(Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/net/arp"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    move-object v4, v3

    move-object v3, v2

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    const/4 v6, 0x0

    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    const/4 v7, 0x0

    move v8, v7

    move v7, v2

    move v2, v1

    :goto_1
    array-length v9, v6

    const/4 v10, 0x1

    if-ge v2, v9, :cond_3

    aget-object v9, v6, v2

    if-eqz v9, :cond_2

    aget-object v9, v6, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v10, :cond_0

    aget-object v9, v6, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    :cond_0
    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    aget-object v9, v6, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    :cond_1
    const/4 v9, 0x6

    if-ne v8, v9, :cond_2

    const-string/jumbo v9, "wlan0"

    aget-object v10, v6, v2

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v7, v9

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "00:00:00:00:00:00"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_4

    nop

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3

    :goto_2
    const/4 v0, 0x0

    nop

    :goto_3
    return v10

    :cond_4
    nop

    move v2, v7

    goto :goto_0

    :cond_5
    nop

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_6

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_6

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v0, 0x0

    :goto_5
    throw v1

    :catch_2
    move-exception v2

    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v2

    goto :goto_7

    :cond_7
    :goto_6
    const/4 v0, 0x0

    nop

    :goto_7
    return v1
.end method

.method public macToString([B)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public pingDnsAsync(Ljava/net/InetAddress;II)I
    .locals 4

    sget-object v0, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const-string/jumbo v1, "www.google.com"

    invoke-direct {p0, v1}, Landroid/net/DnsPinger;->updateDnsResultMap(Ljava/lang/String;)V

    new-instance v1, Landroid/net/DnsPinger$DnsArg;

    iget-object v2, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const-string/jumbo v3, "www.google.com"

    invoke-direct {v1, p0, p1, v2, v3}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    const v2, 0x91001

    invoke-virtual {p0, v2, v0, p2, v1}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0
.end method

.method public pingDnsAsyncSpecific(Ljava/net/InetAddress;IILjava/lang/String;)I
    .locals 10

    sget-object v0, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    :try_start_0
    invoke-static {p4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    sget-boolean v2, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URL is already an IP address. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Landroid/net/DnsPinger;->mTarget:Landroid/os/Handler;

    const v3, 0x91005

    const/4 v4, 0x3

    invoke-virtual {p0, v3, v0, v4, v1}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    iget-object v8, p0, Landroid/net/DnsPinger;->lock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_1
    iget-object v1, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const v2, 0x91004

    if-nez v1, :cond_2

    sget-boolean v1, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNS Result Hashmap - NO HIT!!! SENDING DNS QUERY!  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Landroid/net/DnsPinger$DnsArg;

    iget-object v3, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v1, p0, p1, v3, p4}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    invoke-virtual {p0, v2, v0, p2, v1}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, p4}, Landroid/net/DnsPinger;->updateDnsResultMap(Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/DnsPinger;->DnsResultMap:Ljava/util/HashMap;

    invoke-virtual {v3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v1, v3

    :cond_3
    move v9, v1

    if-nez v9, :cond_5

    sget-boolean v1, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DNS Result Hashmap - HIT!!! BUT NO RESULTS   ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_4
    new-instance v1, Landroid/net/DnsPinger$DnsArg;

    iget-object v3, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v1, p0, p1, v3, p4}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    invoke-virtual {p0, v2, v0, p2, v1}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_5
    sget-boolean v1, Landroid/net/DnsPinger;->DBG:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS Result Hashmap - HIT!!! USE PREVIOUS RESULT   ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/DnsPinger;->log(Ljava/lang/String;)V

    :cond_6
    sget-object v1, Landroid/net/DnsPinger;->sRandom:Ljava/util/Random;

    invoke-virtual {v1, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    const/16 v3, -0x2b67

    const/4 v4, 0x1

    const/16 v7, 0x32

    move-object v1, p0

    move v2, v0

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Landroid/net/DnsPinger;->sendResponse(IIILjava/lang/String;II)V

    :goto_0
    monitor-exit v8

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public pingDnsAsyncSpecificForce(Ljava/net/InetAddress;IILjava/lang/String;)I
    .locals 4

    sget-object v0, Landroid/net/DnsPinger;->sCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    new-instance v1, Landroid/net/DnsPinger$DnsArg;

    iget-object v2, p0, Landroid/net/DnsPinger;->mCurrentToken:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v1, p0, p1, v2, p4}, Landroid/net/DnsPinger$DnsArg;-><init>(Landroid/net/DnsPinger;Ljava/net/InetAddress;ILjava/lang/String;)V

    const v2, 0x91004

    invoke-virtual {p0, v2, v0, p2, v1}, Landroid/net/DnsPinger;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {p0, v1, v2, v3}, Landroid/net/DnsPinger;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v0
.end method

.method public sendArp(ILjava/net/InetAddress;Ljava/net/InetAddress;Ljava/lang/String;)[B
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v4, v0, [B

    :try_start_0
    new-instance v6, Llibcore/net/RawSocket;

    iget-object v7, v1, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x806

    invoke-direct {v6, v7, v8}, Llibcore/net/RawSocket;-><init>(Ljava/lang/String;S)V

    iput-object v6, v1, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    new-array v6, v0, [B

    iput-object v6, v1, Landroid/net/DnsPinger;->L2_BROADCAST:[B

    iget-object v6, v1, Landroid/net/DnsPinger;->L2_BROADCAST:[B

    const/4 v7, -0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([BB)V

    const/16 v6, 0x5dc

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v11, p1

    int-to-long v12, v11

    add-long/2addr v9, v12

    :try_start_1
    new-array v12, v0, [B

    const/16 v13, 0x10

    const/4 v14, 0x2

    if-eqz v2, :cond_0

    const/16 v16, 0x0

    :goto_0
    move/from16 v17, v16

    move/from16 v5, v17

    if-ge v5, v0, :cond_0

    mul-int/lit8 v6, v5, 0x3

    mul-int/lit8 v17, v5, 0x3

    add-int/lit8 v15, v17, 0x2

    invoke-virtual {v2, v6, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v12, v5

    add-int/lit8 v16, v5, 0x1

    const/16 v6, 0x5dc

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v6, 0x800

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v6, 0x4

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {p3 .. p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-array v15, v0, [B

    invoke-virtual {v7, v15}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v15, v1, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    iget-object v13, v1, Landroid/net/DnsPinger;->L2_BROADCAST:[B

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v14, 0x0

    invoke-virtual {v15, v13, v0, v14, v6}, Llibcore/net/RawSocket;->write([B[BII)I

    const/16 v0, 0x5dc

    new-array v0, v0, [B

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    cmp-long v6, v13, v9

    if-gez v6, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v13, v9, v13

    iget-object v6, v1, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    const/16 v20, 0x0

    array-length v15, v0

    const/16 v22, -0x1

    long-to-int v5, v13

    move-object/from16 v18, v6

    move-object/from16 v19, v0

    move/from16 v21, v15

    move/from16 v23, v5

    invoke-virtual/range {v18 .. v23}, Llibcore/net/RawSocket;->read([BIIII)I

    move-result v5

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_4

    const/4 v6, 0x0

    aget-byte v15, v0, v6

    if-nez v15, :cond_4

    const/4 v6, 0x1

    aget-byte v15, v0, v6

    if-ne v15, v6, :cond_4

    const/4 v6, 0x2

    aget-byte v15, v0, v6

    const/16 v6, 0x8

    if-ne v15, v6, :cond_4

    const/4 v15, 0x3

    aget-byte v16, v0, v15

    if-nez v16, :cond_4

    const/4 v6, 0x4

    aget-byte v15, v0, v6

    const/4 v6, 0x6

    if-ne v15, v6, :cond_3

    const/4 v15, 0x5

    aget-byte v15, v0, v15

    const/4 v6, 0x4

    if-ne v15, v6, :cond_4

    const/4 v15, 0x6

    aget-byte v16, v0, v15

    if-nez v16, :cond_4

    const/4 v15, 0x7

    aget-byte v15, v0, v15

    const/4 v6, 0x2

    if-ne v15, v6, :cond_1

    const/16 v6, 0xe

    aget-byte v6, v0, v6

    const/4 v15, 0x0

    aget-byte v2, v8, v15

    if-ne v6, v2, :cond_4

    const/16 v2, 0xf

    aget-byte v2, v0, v2

    const/4 v6, 0x1

    aget-byte v15, v8, v6

    if-ne v2, v15, :cond_4

    const/16 v2, 0x10

    aget-byte v15, v0, v2

    const/16 v16, 0x2

    aget-byte v2, v8, v16

    if-ne v15, v2, :cond_2

    const/16 v2, 0x11

    aget-byte v2, v0, v2

    const/4 v15, 0x3

    aget-byte v15, v8, v15

    if-ne v2, v15, :cond_2

    const/4 v2, 0x6

    const/16 v6, 0x8

    const/4 v15, 0x0

    invoke-static {v0, v6, v4, v15, v2}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x1

    goto :goto_3

    :cond_1
    move/from16 v16, v6

    :cond_2
    const/4 v2, 0x6

    const/4 v15, 0x0

    goto :goto_3

    :cond_3
    move v2, v6

    goto :goto_2

    :cond_4
    const/4 v2, 0x6

    :goto_2
    const/4 v15, 0x0

    const/16 v16, 0x2

    :goto_3
    move-object/from16 v2, p4

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_5
    :try_start_2
    iget-object v0, v1, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    if-eqz v0, :cond_6

    iget-object v0, v1, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v0}, Llibcore/net/RawSocket;->close()V

    :cond_6
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_4
    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catchall_0
    move-exception v0

    move/from16 v11, p1

    :goto_5
    move-object v2, v0

    goto :goto_8

    :catch_2
    move-exception v0

    move/from16 v11, p1

    :goto_6
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendArp Exception - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/DnsPinger;->loge(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, v1, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    if-eqz v0, :cond_7

    iget-object v0, v1, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v0}, Llibcore/net/RawSocket;->close()V

    :cond_7
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :goto_7
    if-eqz v3, :cond_8

    return-object v4

    :cond_8
    const/4 v2, 0x0

    return-object v2

    :catchall_1
    move-exception v0

    goto :goto_5

    :goto_8
    :try_start_5
    iget-object v0, v1, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    if-eqz v0, :cond_9

    iget-object v0, v1, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;

    invoke-virtual {v0}, Llibcore/net/RawSocket;->close()V

    :cond_9
    const/4 v5, 0x0

    iput-object v5, v1, Landroid/net/DnsPinger;->mSocket:Llibcore/net/RawSocket;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    :goto_9
    throw v2
.end method

.method public setCurrentLinkProperties(Landroid/net/LinkProperties;)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/DnsPinger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCurrentLinkProperties: lp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    iget-object v0, p0, Landroid/net/DnsPinger;->mLp:Landroid/net/LinkProperties;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/net/DnsPinger;->updateGatewayIp()V

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/DnsPinger;->needInitialArpTest:Z

    return-void
.end method
