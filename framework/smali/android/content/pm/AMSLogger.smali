.class public Landroid/content/pm/AMSLogger;
.super Ljava/lang/Object;
.source "AMSLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/AMSLogger$AMSHandler;,
        Landroid/content/pm/AMSLogger$AMSFormatter;
    }
.end annotation


# static fields
.field private static final AMS_DONT_AUDIT_LIST_ARRAY:[Ljava/lang/String;

.field private static final AMS_PACKAGE_CHANGED:Ljava/lang/String; = "android.intent.action.PACKAGE_CHANGED"

.field private static AMS_VERBOSE_DEFAULT:I

.field private static AMS_VERBOSE_PROP:Ljava/lang/String;

.field public static LOG_LEVEL_ALL:I

.field public static LOG_LEVEL_DENIALS:I

.field public static LOG_LEVEL_OFF:I

.field private static LOG_MAX_SIZE:I

.field private static LOG_NEW:Ljava/lang/String;

.field private static LOG_OLD:Ljava/lang/String;

.field private static LOG_TAG:Ljava/lang/String;

.field private static final mAMSLogger:Landroid/content/pm/AMSLogger;

.field private static mAMSTxt:Landroid/content/pm/AMSLogger$AMSHandler;

.field private static mFormatterTxt:Landroid/content/pm/AMSLogger$AMSFormatter;

.field private static mLogger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/content/pm/AMSLogger;->LOG_LEVEL_OFF:I

    const/4 v0, 0x1

    sput v0, Landroid/content/pm/AMSLogger;->LOG_LEVEL_DENIALS:I

    const/4 v0, 0x2

    sput v0, Landroid/content/pm/AMSLogger;->LOG_LEVEL_ALL:I

    const-string v0, "AMSLogger"

    sput-object v0, Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "persist.security.ams.verbose"

    sput-object v0, Landroid/content/pm/AMSLogger;->AMS_VERBOSE_PROP:Ljava/lang/String;

    sget v0, Landroid/content/pm/AMSLogger;->LOG_LEVEL_DENIALS:I

    sput v0, Landroid/content/pm/AMSLogger;->AMS_VERBOSE_DEFAULT:I

    const-string v0, "/data/misc/audit/ams.log"

    sput-object v0, Landroid/content/pm/AMSLogger;->LOG_NEW:Ljava/lang/String;

    const-string v0, "/data/misc/audit/ams.old"

    sput-object v0, Landroid/content/pm/AMSLogger;->LOG_OLD:Ljava/lang/String;

    const v0, 0x19000

    sput v0, Landroid/content/pm/AMSLogger;->LOG_MAX_SIZE:I

    const/4 v0, 0x0

    sput-object v0, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    new-instance v0, Landroid/content/pm/AMSLogger;

    invoke-direct {v0}, Landroid/content/pm/AMSLogger;-><init>()V

    sput-object v0, Landroid/content/pm/AMSLogger;->mAMSLogger:Landroid/content/pm/AMSLogger;

    const-string v0, "com.samsung.android.themecenter"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/AMSLogger;->AMS_DONT_AUDIT_LIST_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static copyStackTraceToAMSLog(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v1, p0

    new-instance v0, Ljava/io/FileInputStream;

    move-object/from16 v4, p1

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    move-object/from16 v7, p2

    invoke-direct {v0, v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v6, v0

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v8, v0

    const/16 v0, 0x400

    new-array v9, v0, [B

    const/4 v0, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-string v13, ""

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    const-string/jumbo v0, "| sysTid="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    const-wide/16 v17, 0x400

    cmp-long v0, p3, v17

    if-ltz v0, :cond_2

    :goto_0
    :try_start_0
    invoke-virtual {v5, v9}, Ljava/io/InputStream;->read([B)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v19, v0

    if-lez v0, :cond_1

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move/from16 v0, v19

    int-to-long v12, v0

    add-long/2addr v10, v12

    int-to-long v12, v0

    add-long/2addr v12, v10

    cmp-long v12, v12, p3

    if-ltz v12, :cond_0

    nop

    move/from16 v16, v0

    goto :goto_1

    :cond_0
    move/from16 v16, v0

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    goto :goto_0

    :cond_1
    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move/from16 v0, v19

    move/from16 v16, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    move-object/from16 v1, p5

    goto/16 :goto_6

    :cond_2
    move-object/from16 v20, v12

    move-object/from16 v21, v13

    :goto_1
    cmp-long v0, v10, p3

    if-gez v0, :cond_3

    sub-long v12, p3, v10

    long-to-int v0, v12

    const/4 v12, 0x0

    :try_start_1
    invoke-virtual {v5, v9, v12, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v1, p5

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    goto/16 :goto_6

    :cond_3
    :goto_2
    move-object/from16 v12, v20

    move-object/from16 v13, v21

    :goto_3
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    if-eqz v0, :cond_6

    invoke-virtual {v12, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v14, v0

    :cond_4
    if-eqz v14, :cond_5

    const-string v0, ""

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "----- end "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -----\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    move-object v13, v0

    goto :goto_4

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_3

    :cond_6
    :goto_4
    sget-object v2, Landroid/content/pm/AMSLogger;->mAMSLogger:Landroid/content/pm/AMSLogger;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    sget-object v0, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v1, p5

    :try_start_4
    invoke-virtual {v0, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    if-eqz v14, :cond_7

    sget-object v0, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v13}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_7
    monitor-exit v2

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object/from16 v1, p5

    :goto_5
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v1, p5

    :goto_6
    sget-object v2, Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyStackTraceToAMSLog Exception"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method private static getCurrentLogLevel()I
    .locals 2

    sget-object v0, Landroid/content/pm/AMSLogger;->AMS_VERBOSE_PROP:Ljava/lang/String;

    sget v1, Landroid/content/pm/AMSLogger;->AMS_VERBOSE_DEFAULT:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized getLogger()Landroid/content/pm/AMSLogger;
    .locals 10

    const-class v0, Landroid/content/pm/AMSLogger;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "AMSLogger"

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sput-object v2, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v2, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->setUseParentHandlers(Z)V

    sget-object v2, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v2, v3

    sget-object v6, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    invoke-virtual {v6, v5}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :try_start_2
    new-instance v9, Landroid/content/pm/AMSLogger$AMSHandler;

    new-instance v4, Landroid/content/pm/AMSLogger;

    invoke-direct {v4}, Landroid/content/pm/AMSLogger;-><init>()V

    sget-object v5, Landroid/content/pm/AMSLogger;->LOG_NEW:Ljava/lang/String;

    sget-object v6, Landroid/content/pm/AMSLogger;->LOG_OLD:Ljava/lang/String;

    sget v3, Landroid/content/pm/AMSLogger;->LOG_MAX_SIZE:I

    int-to-long v7, v3

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Landroid/content/pm/AMSLogger$AMSHandler;-><init>(Landroid/content/pm/AMSLogger;Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v9, Landroid/content/pm/AMSLogger;->mAMSTxt:Landroid/content/pm/AMSLogger$AMSHandler;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :try_start_3
    new-instance v3, Landroid/content/pm/AMSLogger$AMSFormatter;

    new-instance v4, Landroid/content/pm/AMSLogger;

    invoke-direct {v4}, Landroid/content/pm/AMSLogger;-><init>()V

    invoke-direct {v3, v4, v1}, Landroid/content/pm/AMSLogger$AMSFormatter;-><init>(Landroid/content/pm/AMSLogger;Landroid/content/pm/AMSLogger$1;)V

    sput-object v3, Landroid/content/pm/AMSLogger;->mFormatterTxt:Landroid/content/pm/AMSLogger$AMSFormatter;

    sget-object v3, Landroid/content/pm/AMSLogger;->mAMSTxt:Landroid/content/pm/AMSLogger$AMSHandler;

    sget-object v4, Landroid/content/pm/AMSLogger;->mFormatterTxt:Landroid/content/pm/AMSLogger$AMSFormatter;

    invoke-virtual {v3, v4}, Landroid/content/pm/AMSLogger$AMSHandler;->setFormatter(Ljava/util/logging/Formatter;)V

    sget-object v3, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v4, Landroid/content/pm/AMSLogger;->mAMSTxt:Landroid/content/pm/AMSLogger$AMSHandler;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    monitor-exit v0

    return-object v1

    :catch_1
    move-exception v2

    monitor-exit v0

    return-object v1

    :cond_1
    :goto_1
    :try_start_4
    sget-object v1, Landroid/content/pm/AMSLogger;->mAMSLogger:Landroid/content/pm/AMSLogger;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getTraceFileSize(Ljava/lang/String;)J
    .locals 5

    if-nez p0, :cond_0

    sget-object v0, Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " null, stack Trace should be logged in logcat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    return-wide v1

    :cond_1
    sget-object v1, Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trace File:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not exist. Try to create the file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " could not be created"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setWritable(ZZ)Z

    const-wide/16 v1, 0x0

    return-wide v1
.end method


# virtual methods
.method public log(ZLandroid/content/pm/ApplicationInfo;ZLandroid/content/pm/ApplicationInfo;ZLandroid/content/Intent;ILjava/lang/String;Z)V
    .locals 15

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p8

    invoke-static {}, Landroid/content/pm/AMSLogger;->getCurrentLogLevel()I

    move-result v4

    sget v0, Landroid/content/pm/AMSLogger;->LOG_LEVEL_OFF:I

    if-ne v4, v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "setApplicationHiddenSettingAsUser"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "setPackageStoppedState"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v5, p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    sget v0, Landroid/content/pm/AMSLogger;->LOG_LEVEL_DENIALS:I

    const/4 v6, 0x1

    if-ne v4, v0, :cond_3

    if-ne v5, v6, :cond_3

    return-void

    :cond_3
    iget-object v7, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p6, :cond_4

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    :cond_4
    move-object v9, v0

    const/4 v0, 0x0

    :goto_2
    sget-object v10, Landroid/content/pm/AMSLogger;->AMS_DONT_AUDIT_LIST_ARRAY:[Ljava/lang/String;

    array-length v10, v10

    if-ge v0, v10, :cond_7

    sget-object v10, Landroid/content/pm/AMSLogger;->AMS_DONT_AUDIT_LIST_ARRAY:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    sget-object v10, Landroid/content/pm/AMSLogger;->AMS_DONT_AUDIT_LIST_ARRAY:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    if-eqz v9, :cond_6

    const-string v10, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    return-void

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    move-object v10, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    const-string v0, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    if-ne v5, v6, :cond_8

    const-string v0, "Allowed <"

    goto :goto_3

    :cond_8
    const-string v0, "Denied <"

    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "%d.%m.%Y %H:%M:%S"

    invoke-virtual {v10, v12}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "> < "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p6, :cond_9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "Intent: null> <"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "Intent: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " action:["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_b

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " component:["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "> <"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "srcInfo="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, p3

    if-ne v12, v6, :cond_c

    const-string/jumbo v13, "t:"

    goto :goto_5

    :cond_c
    const-string/jumbo v13, "u:"

    :goto_5
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v11, v1, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    if-eqz v11, :cond_d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->space:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Landroid/content/pm/ApplicationInfo;->allowSpace:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->agentType:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "> <"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "destInfo="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p5

    if-ne v13, v6, :cond_e

    const-string/jumbo v6, "t:"

    goto :goto_6

    :cond_e
    const-string/jumbo v6, "u:"

    :goto_6
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    if-eqz v6, :cond_f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->allowContainerSpace:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Landroid/content/pm/ApplicationInfo;->space:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->allowSpace:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Landroid/content/pm/ApplicationInfo;->agentType:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v2, Landroid/content/pm/ApplicationInfo;->allowedAgentType:I

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ">"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " <"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ">"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v11, Landroid/content/pm/AMSLogger;->mAMSLogger:Landroid/content/pm/AMSLogger;

    monitor-enter v11

    :try_start_0
    sget-object v0, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v14, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v14, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public logStackTrace(ILjava/lang/String;)V
    .locals 10

    const-string v0, "dalvik.vm.stack-trace-file"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/AMSLogger;->getTraceFileSize(Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-ltz v1, :cond_0

    new-instance v1, Landroid/content/pm/AMSLogger$1;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v0, v2, v0}, Landroid/content/pm/AMSLogger$1;-><init>(Landroid/content/pm/AMSLogger;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    :try_start_1
    invoke-static {p1, v2}, Landroid/os/Process;->sendSignal(II)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v2

    sget-object v3, Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "logStackTrace exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v1}, Landroid/os/FileObserver;->stopWatching()V

    :try_start_3
    sget-object v4, Landroid/content/pm/AMSLogger;->LOG_NEW:Ljava/lang/String;

    move v2, p1

    move-object v3, v0

    move-wide v5, v8

    move-object v7, p2

    invoke-static/range {v2 .. v7}, Landroid/content/pm/AMSLogger;->copyStackTraceToAMSLog(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v3, Landroid/content/pm/AMSLogger;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyStackTraceToAMSLog exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_0
    sget-object v1, Landroid/content/pm/AMSLogger;->mAMSLogger:Landroid/content/pm/AMSLogger;

    monitor-enter v1

    :try_start_4
    sget-object v2, Landroid/content/pm/AMSLogger;->mLogger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    monitor-exit v1

    :goto_2
    return-void

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method
