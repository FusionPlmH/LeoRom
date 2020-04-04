.class public Lcom/samsung/oem/OemBargeInEngineWrapper;
.super Ljava/lang/Object;
.source "OemBargeInEngineWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static uniqueInstance:Lcom/samsung/oem/OemBargeInEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/oem/OemBargeInEngineWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/oem/OemBargeInEngineWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/oem/OemBargeInEngine;
    .locals 3

    const-class v0, Lcom/samsung/oem/OemBargeInEngineWrapper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/oem/OemBargeInEngineWrapper;->uniqueInstance:Lcom/samsung/oem/OemBargeInEngine;

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/oem/OemBargeInEngineWrapper;->TAG:Ljava/lang/String;

    const-string v2, "getInstance() : make new OemBargeInEngine"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/oem/OemBargeInEngine;->init()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/oem/OemBargeInEngine;

    invoke-direct {v1}, Lcom/samsung/oem/OemBargeInEngine;-><init>()V

    sput-object v1, Lcom/samsung/oem/OemBargeInEngineWrapper;->uniqueInstance:Lcom/samsung/oem/OemBargeInEngine;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/samsung/oem/OemBargeInEngineWrapper;->TAG:Ljava/lang/String;

    const-string v2, "cannot load libOemBargeInEngine.so"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :cond_1
    :try_start_1
    sget-object v1, Lcom/samsung/oem/OemBargeInEngineWrapper;->TAG:Ljava/lang/String;

    const-string v2, "getInstance() : get existed OemBargeInEngine"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v1, Lcom/samsung/oem/OemBargeInEngineWrapper;->uniqueInstance:Lcom/samsung/oem/OemBargeInEngine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
