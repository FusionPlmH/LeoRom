.class public final Landroid/database/sqlite/SQLiteSlowQueryCollector;
.super Ljava/lang/Thread;
.source "SQLiteSlowQueryCollector.java"


# static fields
.field public static final COLLECT_THRESHOLD:I = 0xbb8

.field private static MAX_MESSAGE_COUNT:I = 0x0

.field private static MAX_MESSAGE_SIZE:I = 0x0

.field private static MAX_NAME_SIZE:I = 0x0

.field private static final MAX_QUERY_COUNT:I = 0xa

.field private static final SAMPLING_THRESHOLD:I = 0xa4cb80

.field private static final TAG:Ljava/lang/String; = "SQLiteSlowQueryCollector"

.field private static sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sLastCollectTime:J

.field private static sQueryHashList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sStartPoint:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDBName:Ljava/lang/String;

.field private mLatency:J

.field private mNow:J

.field private mPid:I

.field private mPool:Landroid/database/sqlite/SQLiteConnectionPool;

.field private mSql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x3fe

    sput v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_MESSAGE_SIZE:I

    const/4 v0, 0x4

    sput v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_MESSAGE_COUNT:I

    const/16 v0, 0xff

    sput v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_NAME_SIZE:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, -0x1

    sput-wide v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sLastCollectTime:J

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sStartPoint:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sQueryHashList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteConnectionPool;Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$Operation;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    iput-object p3, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    iget-object v0, p4, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    iget-wide v0, p4, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mLatency:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mNow:J

    iget v0, p4, Landroid/database/sqlite/SQLiteConnection$Operation;->mPid:I

    iput v0, p0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPid:I

    return-void
.end method

.method public static sendSlowQueryLog(Landroid/database/sqlite/SQLiteConnectionPool;Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$Operation;)V
    .locals 6

    iget-object v0, p2, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p2, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "select"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteConnectionPool;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ENABLE:Z

    if-eqz v2, :cond_2

    const-string v2, "SQLiteSlowQueryCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not send a squery without the context. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    sget-wide v2, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sLastCollectTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    iget-wide v2, p2, Landroid/database/sqlite/SQLiteConnection$Operation;->mEndTime:J

    sget-wide v4, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sLastCollectTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xa4cb80

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ENABLE:Z

    if-eqz v2, :cond_4

    const-string v2, "SQLiteSlowQueryCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could send a squery during 3 hours. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    sget v2, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sStartPoint:I

    const/4 v3, 0x1

    if-lez v2, :cond_6

    sget v2, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sStartPoint:I

    sub-int/2addr v2, v3

    sput v2, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sStartPoint:I

    if-lez v2, :cond_6

    return-void

    :cond_6
    sget-object v2, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_7

    return-void

    :cond_7
    :try_start_0
    new-instance v2, Landroid/database/sqlite/SQLiteSlowQueryCollector;

    invoke-direct {v2, v1, p0, p1, p2}, Landroid/database/sqlite/SQLiteSlowQueryCollector;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteConnectionPool;Ljava/lang/String;Landroid/database/sqlite/SQLiteConnection$Operation;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteSlowQueryCollector;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-boolean v3, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ENABLE:Z

    if-nez v3, :cond_8

    :goto_0
    return-void

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to start a thread for a squery. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p2, Landroid/database/sqlite/SQLiteConnection$Operation;->mExecutionTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p2, Landroid/database/sqlite/SQLiteConnection$Operation;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SQLiteSlowQueryCollector"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    throw v2

    :cond_9
    :goto_1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    move v4, v0

    move v0, v3

    :goto_0
    sget-object v5, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sQueryHashList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    sget-object v5, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sQueryHashList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v4, v5, :cond_0

    iput-object v2, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    nop

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    iget v7, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPid:I

    if-eq v6, v7, :cond_3

    iget-object v7, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    invoke-virtual {v7}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget v12, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPid:I

    if-ne v11, v12, :cond_2

    iget-object v9, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v9

    goto :goto_2

    :cond_2
    goto :goto_1

    :cond_3
    :goto_2
    move-object v7, v0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    :try_start_2
    iget-object v0, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    const-string v11, "PRAGMA page_count;"

    const/4 v12, 0x1

    invoke-virtual {v0, v11, v12, v2}, Landroid/database/sqlite/SQLiteConnectionPool;->acquireConnection(Ljava/lang/String;ILandroid/os/CancellationSignal;)Landroid/database/sqlite/SQLiteConnection;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v8, v0

    nop

    :try_start_3
    const-string v0, "PRAGMA page_count;"

    invoke-virtual {v8, v0, v2, v2}, Landroid/database/sqlite/SQLiteConnection;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)J

    move-result-wide v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v15, 0x1000

    mul-long/2addr v13, v15

    :try_start_4
    iget-object v0, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v0, v8}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V

    nop

    iget-object v0, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    iget-object v9, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v12

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\"MPN\":\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    sget v11, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_NAME_SIZE:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v5, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\"CPN\":\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    sget v11, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_NAME_SIZE:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-virtual {v7, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\"DBN\":\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    iget-object v11, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sget v12, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_NAME_SIZE:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v10, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\"DBS\":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\"LAT\":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mLatency:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sget v10, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_MESSAGE_SIZE:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    const-string v11, "\"SQL\":\"\""

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    if-le v10, v9, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\"SQL\":\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v5

    goto/16 :goto_5

    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\"PQM\":\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mNow:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v11, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_MESSAGE_SIZE:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    const-string v12, "-0\",\"SQL\":\"\""

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    sget v12, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_MESSAGE_COUNT:I

    mul-int/2addr v12, v11

    if-ge v12, v9, :cond_7

    sget-boolean v12, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ENABLE:Z

    if-eqz v12, :cond_6

    const-string v12, "SQLiteSlowQueryCollector"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too long to send a squery, just leave a log. ("

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ), "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mLatency:J

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms-"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_7
    const/4 v2, 0x0

    move v3, v2

    const/4 v2, 0x0

    :goto_3
    if-ge v3, v9, :cond_9

    :try_start_5
    sget v12, Landroid/database/sqlite/SQLiteSlowQueryCollector;->MAX_MESSAGE_SIZE:I

    if-ge v2, v12, :cond_9

    add-int v12, v3, v11

    if-ge v12, v9, :cond_8

    iget-object v12, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    add-int v15, v3, v11

    invoke-virtual {v12, v3, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_8
    iget-object v12, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    invoke-virtual {v12, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :goto_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\",\"SQL\":\""

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/2addr v3, v11

    add-int/lit8 v2, v2, 0x1

    nop

    move-object/from16 v5, v17

    goto :goto_3

    :cond_9
    move-object/from16 v17, v5

    :goto_5
    sget-object v2, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sQueryHashList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_a

    sget-object v2, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sQueryHashList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_a
    sget-object v2, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sQueryHashList:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v2, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mNow:J

    sput-wide v2, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sLastCollectTime:J

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v17, v5

    iget-object v2, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mPool:Landroid/database/sqlite/SQLiteConnectionPool;

    invoke-virtual {v2, v8}, Landroid/database/sqlite/SQLiteConnectionPool;->releaseConnection(Landroid/database/sqlite/SQLiteConnection;)V

    throw v0

    :catch_0
    move-exception v0

    move-object/from16 v17, v5

    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ENABLE:Z

    if-eqz v2, :cond_b

    const-string v2, "SQLiteSlowQueryCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get the db size for a squery. "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mLatency:J

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_b
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    :try_start_6
    sget-boolean v2, Landroid/database/sqlite/SQLiteDebug;->DEBUG_ENABLE:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-nez v2, :cond_c

    :goto_6
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    nop

    return-void

    :cond_c
    :try_start_7
    const-string v2, "SQLiteSlowQueryCollector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send a squery. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mLatency:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mDBName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_7
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/database/sqlite/SQLiteSlowQueryCollector;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/database/sqlite/SQLiteSlowQueryCollector;->sIsSending:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v0
.end method
