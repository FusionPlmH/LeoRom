.class public Lcom/android/server/am/MARsDLManager;
.super Ljava/lang/Object;
.source "MARsDLManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsDLManager$MARsTrafficStat;
    }
.end annotation


# static fields
.field private static DEBUG_MARs_DLM:Z = false

.field private static final TAG:Ljava/lang/String; = "MARsDLManager"


# instance fields
.field mContext:Landroid/content/Context;

.field private mDataConnectionIsConnected:Z

.field public mDataTrafficAmount:J

.field private final mMARsDLLock:Ljava/lang/Object;

.field mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

.field private mTrafficStatMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/MARsDLManager$MARsTrafficStat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MARsDLManager;->DEBUG_MARs_DLM:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsPolicyManager;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsDLManager;->mMARsDLLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsDLManager;->mDataConnectionIsConnected:Z

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/server/am/MARsDLManager;->mDataTrafficAmount:J

    iput-object p1, p0, Lcom/android/server/am/MARsDLManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iput-object p2, p0, Lcom/android/server/am/MARsDLManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MARsDLManager;->mMARsDLLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MARsDLManager;->mTrafficStatMap:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MARsDLManager;->mTrafficStatMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MARsDLManager;->mTrafficStatMap:Landroid/util/ArrayMap;

    return-void
.end method

.method public isActiveTrafficExisting(I)Z
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/MARsDLManager;->mMARsDLLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/am/MARsDLManager;->mDataConnectionIsConnected:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/MARsDLManager;->mTrafficStatMap:Landroid/util/ArrayMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/MARsDLManager;->mTrafficStatMap:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;

    if-eqz v2, :cond_2

    iget-wide v3, v2, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;->diffTxBytes:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget-wide v3, v2, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;->diffRxBytes:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    iget-wide v3, v2, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;->diffTxBytes:J

    iget-wide v5, p0, Lcom/android/server/am/MARsDLManager;->mDataTrafficAmount:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    iget-wide v3, v2, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;->diffRxBytes:J

    iget-wide v5, p0, Lcom/android/server/am/MARsDLManager;->mDataTrafficAmount:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :cond_2
    :goto_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setDataConnectionConnected()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/MARsDLManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/MARsDLManager;->mDataConnectionIsConnected:Z

    sget-boolean v2, Lcom/android/server/am/MARsDLManager;->DEBUG_MARs_DLM:Z

    if-eqz v2, :cond_1

    const-string v2, "MARsDLManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataConnection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/am/MARsDLManager;->mDataConnectionIsConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public updateTrafficStatsFirstTime(Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/MARsPolicyManager$MARsPkgMap<",
            "Lcom/android/server/am/MARsPackageStatus;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MARsDLManager;->mMARsDLLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/MARsDLManager;->mDataConnectionIsConnected:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/MARsDLManager;->mTrafficStatMap:Landroid/util/ArrayMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/MARsDLManager;->mTrafficStatMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/MARsPolicyManager$MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    move v4, v1

    :goto_1
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageStatus;

    iget v6, v5, Lcom/android/server/am/MARsPackageStatus;->uid:I

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    iget v6, v5, Lcom/android/server/am/MARsPackageStatus;->uid:I

    invoke-static {v6}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v12

    iget-object v6, p0, Lcom/android/server/am/MARsDLManager;->mTrafficStatMap:Landroid/util/ArrayMap;

    if-eqz v6, :cond_1

    new-instance v6, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;

    iget-object v9, v5, Lcom/android/server/am/MARsPackageStatus;->name:Ljava/lang/String;

    move-object v7, v6

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;-><init>(Lcom/android/server/am/MARsDLManager;Ljava/lang/String;JJ)V

    iget-object v7, p0, Lcom/android/server/am/MARsDLManager;->mTrafficStatMap:Landroid/util/ArrayMap;

    iget v8, v5, Lcom/android/server/am/MARsPackageStatus;->uid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateTrafficStatsSecondTime()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/MARsDLManager;->mMARsDLLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/MARsDLManager;->mDataConnectionIsConnected:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/MARsDLManager;->mTrafficStatMap:Landroid/util/ArrayMap;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MARsDLManager;->mTrafficStatMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/MARsDLManager;->mTrafficStatMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v3

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/am/MARsDLManager;->mTrafficStatMap:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;

    if-eqz v7, :cond_0

    iget-wide v8, v7, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;->txBytes:J

    sub-long v8, v3, v8

    iput-wide v8, v7, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;->diffTxBytes:J

    iget-wide v8, v7, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;->rxBytes:J

    sub-long v8, v5, v8

    iput-wide v8, v7, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;->diffRxBytes:J

    iput-wide v3, v7, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;->txBytes:J

    iput-wide v5, v7, Lcom/android/server/am/MARsDLManager$MARsTrafficStat;->rxBytes:J

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
