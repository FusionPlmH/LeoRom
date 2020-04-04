.class public Lcom/android/server/MDFLog;
.super Ljava/lang/Object;
.source "MDFLog.java"


# static fields
.field private static final LOG_FILE_PATH:Ljava/lang/String; = "/data/log/mdf_log"

.field private static final MAX_FILE_LENGTH:J = 0x100000L

.field private static TAG:Ljava/lang/String;

.field private static sLogMsg:Lcom/android/server/MDFLog;


# instance fields
.field private outputContents:Ljava/lang/StringBuffer;

.field private sdfNow:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MDFLog"

    sput-object v0, Lcom/android/server/MDFLog;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/server/MDFLog;

    invoke-direct {v0}, Lcom/android/server/MDFLog;-><init>()V

    sput-object v0, Lcom/android/server/MDFLog;->sLogMsg:Lcom/android/server/MDFLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/MDFLog;->outputContents:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/MDFLog;->sdfNow:Ljava/text/SimpleDateFormat;

    sget-object v0, Lcom/android/server/MDFLog;->TAG:Ljava/lang/String;

    const-string v1, "----------------------StartLogs-------------------------"

    invoke-direct {p0, v0, v1}, Lcom/android/server/MDFLog;->outFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private exists()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/mdf_log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method private flush()V
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/log/mdf_log"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    move-wide v1, v4

    const-wide/32 v4, 0x100000

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/log/mdf_log"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    :cond_0
    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v7, "UTF-8"

    invoke-direct {v4, v5, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object v3, v4

    iget-object v4, p0, Lcom/android/server/MDFLog;->outputContents:Ljava/lang/StringBuffer;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/MDFLog;->outputContents:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/MDFLog;->outputContents:Ljava/lang/StringBuffer;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    sget-object v5, Lcom/android/server/MDFLog;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_6
    sget-object v5, Lcom/android/server/MDFLog;->TAG:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v3, :cond_1

    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    nop

    if-eqz v3, :cond_2

    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :catch_2
    move-exception v5

    sget-object v6, Lcom/android/server/MDFLog;->TAG:Ljava/lang/String;

    invoke-static {v6, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    :cond_2
    :goto_3
    throw v4
.end method

.method public static isExists()Z
    .locals 1

    sget-object v0, Lcom/android/server/MDFLog;->sLogMsg:Lcom/android/server/MDFLog;

    invoke-direct {v0}, Lcom/android/server/MDFLog;->exists()Z

    move-result v0

    return v0
.end method

.method public static out(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/server/MDFLog;->sLogMsg:Lcom/android/server/MDFLog;

    sget-object v1, Lcom/android/server/MDFLog;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/server/MDFLog;->outFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static out(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/server/MDFLog;->sLogMsg:Lcom/android/server/MDFLog;

    invoke-direct {v0, p0, p1}, Lcom/android/server/MDFLog;->outFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private outFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/MDFLog;->sdfNow:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/MDFLog;->outputContents:Ljava/lang/StringBuffer;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/MDFLog;->outputContents:Ljava/lang/StringBuffer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/MDFLog;->flush()V

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
