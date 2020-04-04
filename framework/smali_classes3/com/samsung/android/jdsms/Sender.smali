.class public final Lcom/samsung/android/jdsms/Sender;
.super Ljava/lang/Object;
.source "Sender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/jdsms/Sender$DsmsServiceConnection;,
        Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;
    }
.end annotation


# static fields
.field public static SEP_LITE:Z = false

.field static final TAG:Ljava/lang/String; = "[DSMS-FRAMEWORK]"

.field private static final executor:Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;

    invoke-direct {v0}, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;-><init>()V

    sput-object v0, Lcom/samsung/android/jdsms/Sender;->executor:Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/jdsms/Sender;->SEP_LITE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/samsung/android/jdsms/Sender;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/jdsms/Sender;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.feature.samsung_experience_mobile_lite"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[DSMS-FRAMEWORK]"

    const-string v1, "DSMS disabled on RIZE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/jdsms/Sender;->SEP_LITE:Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[DSMS-FRAMEWORK] Null context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/samsung/android/jdsms/Sender;Lcom/samsung/android/jdsms/DsmsLog;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/jdsms/Sender;->sendMessage(Lcom/samsung/android/jdsms/DsmsLog;)V

    return-void
.end method

.method private sendMessage(Lcom/samsung/android/jdsms/DsmsLog;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;

    iget-object v1, p0, Lcom/samsung/android/jdsms/Sender;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;-><init>(Landroid/content/Context;)V

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->bindService()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->sendMessage(Lcom/samsung/android/jdsms/DsmsLog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->unbindService()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "[DSMS-FRAMEWORK]"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    invoke-virtual {v0}, Lcom/samsung/android/jdsms/Sender$DsmsServiceBinder;->unbindService()V

    throw v1
.end method

.method private sendToDsms(Lcom/samsung/android/jdsms/DsmsLog;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/jdsms/Sender;->SEP_LITE:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/jdsms/PolicyEnforcer;->isAValidCaller()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[DSMS-FRAMEWORK]"

    const-string v1, "Unauthorized caller"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    sget-object v0, Lcom/samsung/android/jdsms/Sender;->executor:Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;

    new-instance v1, Lcom/samsung/android/jdsms/Sender$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/jdsms/Sender$1;-><init>(Lcom/samsung/android/jdsms/Sender;Lcom/samsung/android/jdsms/DsmsLog;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/jdsms/DsmsThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "[DSMS-FRAMEWORK]"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    const-string v0, "[DSMS-FRAMEWORK]"

    const-string v1, "DSMS not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/jdsms/DsmsLog;

    invoke-direct {v0, p1}, Lcom/samsung/android/jdsms/DsmsLog;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/jdsms/Sender;->sendToDsms(Lcom/samsung/android/jdsms/DsmsLog;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/jdsms/DsmsLog;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/jdsms/DsmsLog;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/jdsms/Sender;->sendToDsms(Lcom/samsung/android/jdsms/DsmsLog;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/jdsms/DsmsLog;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/jdsms/DsmsLog;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/jdsms/Sender;->sendToDsms(Lcom/samsung/android/jdsms/DsmsLog;)V

    return-void
.end method

.method public send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/jdsms/DsmsLog;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/jdsms/DsmsLog;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/jdsms/Sender;->sendToDsms(Lcom/samsung/android/jdsms/DsmsLog;)V

    return-void
.end method
