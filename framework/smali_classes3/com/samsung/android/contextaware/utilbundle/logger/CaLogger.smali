.class public Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;
.super Ljava/lang/Object;
.source "CaLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "CAELogger"

.field public static final TAG:Ljava/lang/String; = "CAE"

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

.field private static isCaller:Z

.field private static isConsoleLogging:Z

.field private static isFileLogging:Z

.field private static isGrayBoxTesting:Z

.field private static mLevel:I

.field private static mLoggingObserver:Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isConsoleLogging:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isFileLogging:Z

    sput-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ordinal()I

    move-result v1

    sput v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLevel:I

    sput-boolean v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isCaller:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isConsoleLogging:Z

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLevel:I

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isFileLogging:Z

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isCaller:Z

    return v0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->notifyLoggingObserver(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->notifyLoggingObserver(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static exception(Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->EXCEPTION:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method private static getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v1

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v7, 0xb

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v8, 0xc

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v9, 0xd

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const-string v10, "[%4d-%02d-%02d %02d:%02d:%02d] [%s] [%s] %s %s"

    const/16 v11, 0xa

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v11, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v11, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v11, v5

    const/4 v1, 0x6

    aput-object p0, v11, v1

    const/4 v1, 0x7

    aput-object p1, v11, v1

    const/16 v1, 0x8

    aput-object p2, v11, v1

    const/16 v1, 0x9

    aput-object p3, v11, v1

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

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
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->instance:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;

    return-object v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->notifyLoggingObserver(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static notifyLoggingObserver(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLoggingObserver:Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLoggingObserver:Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;

    invoke-interface {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;->updateLogMessage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static registerLoggingObserver(Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;)V
    .locals 0

    sput-object p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLoggingObserver:Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;

    return-void
.end method

.method public static setConsoleLoggingEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isConsoleLogging:Z

    return-void
.end method

.method public static setFileLoggingEnable(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    move-result-object v1

    const-string v2, "CAELogger"

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->startLogging(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    move-result-object v1

    const-string v2, "CAELogger"

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->stopLogging(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    sput-boolean p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isFileLogging:Z

    :cond_1
    return-void
.end method

.method public static setGrayBoxTestingEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    return-void
.end method

.method public static setLogOption(IZ)V
    .locals 0

    sput p0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLevel:I

    sput-boolean p1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isCaller:Z

    return-void
.end method

.method public static trace()V
    .locals 3

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->notifyLoggingObserver(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static unregisterLoggingObserver(Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;)V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLoggingObserver:Lcom/samsung/android/contextaware/utilbundle/logger/ILoggingObserver;

    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->consoleLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;->fileLogging(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isGrayBoxTesting:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->notifyLoggingObserver(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
