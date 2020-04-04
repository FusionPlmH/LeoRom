.class public Landroid/app/BarBeamService;
.super Landroid/app/IBarBeamService$Stub;
.source "BarBeamService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BarBeamService$Listener;,
        Landroid/app/BarBeamService$CheckStatusThread;
    }
.end annotation


# static fields
.field static FAIL:Z = false

.field private static final LED_PATH:Ljava/lang/String; = "/sys/class/sec/led/led_b"

.field private static final MIN_LED_TIME:I = 0x1f4

.field private static final PERMISSION_BARCODE_READ:Ljava/lang/String; = "com.samsung.permission.BARCODE_READ"

.field static SUCCESS:Z = false

.field private static final TAG:Ljava/lang/String; = "BarBeamService"

.field private static bEnabled:Z

.field static result:Z


# instance fields
.field private final DATA_COMMAND:B

.field private final LED_NOTIF_ID:I

.field private final MAX_SEQUENCE_REGISTER:I

.field private final MSG_START_LED_NOTIFY:I

.field private final MSG_STOP_BEAMING:I

.field private final MSG_STOP_LED_NOTIFY:I

.field private final NUM_HOPS_VERSION_COMMAND:B

.field private final SEQUENCE_REGISTER_LENGTH:B

.field private final SEQUENCE_REGISTER_START:B

.field private final START_STOP_COMMAND:B

.field private final SYSFS_BARCODE_CONTROL:Ljava/lang/String;

.field private final SYSFS_BARCODE_ENABLE:Ljava/lang/String;

.field private final SYSFS_BARCODE_LED_STATUS:Ljava/lang/String;

.field private callbacks:Landroid/app/IBarBeamListener;

.field private isRunning:Z

.field private mBeamLength:B

.field private final mContext:Landroid/content/Context;

.field private mLEDTimer:Ljava/util/Timer;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/BarBeamService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field mMsgHandler:Landroid/os/Handler;

.field private mUseCount:I

.field mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/BarBeamService;->SUCCESS:Z

    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/BarBeamService;->FAIL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/app/IBarBeamService$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BarBeamService;->callbacks:Landroid/app/IBarBeamListener;

    const/4 v1, 0x0

    iput-byte v1, p0, Landroid/app/BarBeamService;->mBeamLength:B

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    iput-byte v1, p0, Landroid/app/BarBeamService;->DATA_COMMAND:B

    const/16 v2, -0x7f

    iput-byte v2, p0, Landroid/app/BarBeamService;->SEQUENCE_REGISTER_START:B

    const/4 v2, 0x7

    iput-byte v2, p0, Landroid/app/BarBeamService;->SEQUENCE_REGISTER_LENGTH:B

    const/16 v2, 0x12

    iput v2, p0, Landroid/app/BarBeamService;->MAX_SEQUENCE_REGISTER:I

    const/4 v2, -0x1

    iput-byte v2, p0, Landroid/app/BarBeamService;->START_STOP_COMMAND:B

    const/16 v2, -0x80

    iput-byte v2, p0, Landroid/app/BarBeamService;->NUM_HOPS_VERSION_COMMAND:B

    iput-object v0, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    const/16 v2, 0x1428

    iput v2, p0, Landroid/app/BarBeamService;->LED_NOTIF_ID:I

    const-string v2, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    iput-object v2, p0, Landroid/app/BarBeamService;->SYSFS_BARCODE_ENABLE:Ljava/lang/String;

    const-string v2, "/sys/class/sec/sec_barcode_emul/barcode_send"

    iput-object v2, p0, Landroid/app/BarBeamService;->SYSFS_BARCODE_CONTROL:Ljava/lang/String;

    const-string v2, "/sys/class/sec/sec_barcode_emul/barcode_led_status"

    iput-object v2, p0, Landroid/app/BarBeamService;->SYSFS_BARCODE_LED_STATUS:Ljava/lang/String;

    const/16 v2, 0x1e

    iput v2, p0, Landroid/app/BarBeamService;->MSG_START_LED_NOTIFY:I

    const/16 v2, 0x28

    iput v2, p0, Landroid/app/BarBeamService;->MSG_STOP_LED_NOTIFY:I

    const/16 v2, 0x32

    iput v2, p0, Landroid/app/BarBeamService;->MSG_STOP_BEAMING:I

    iput-object v0, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    iput v1, p0, Landroid/app/BarBeamService;->mUseCount:I

    new-instance v0, Landroid/app/BarBeamService$2;

    invoke-direct {v0, p0}, Landroid/app/BarBeamService$2;-><init>(Landroid/app/BarBeamService;)V

    iput-object v0, p0, Landroid/app/BarBeamService;->mMsgHandler:Landroid/os/Handler;

    const-string v0, "BarBeamService"

    const-string v2, "BarBeamService : Create"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Landroid/app/BarBeamService;->isRunning:Z

    new-instance v0, Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v1, p0, Landroid/app/BarBeamService;->mMsgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/app/BarBeamService$CheckStatusThread;-><init>(Landroid/app/BarBeamService;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v0, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    invoke-virtual {v0}, Landroid/app/BarBeamService$CheckStatusThread;->start()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/BarBeamService;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/app/BarBeamService;->swtichLED(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Landroid/app/BarBeamService;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/app/BarBeamService;->isRunning:Z

    return p1
.end method

.method static synthetic access$200(Landroid/app/BarBeamService;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/BarBeamService;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$300(Landroid/app/BarBeamService;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/BarBeamService;->stopBlinkLED()V

    return-void
.end method

.method static synthetic access$400(Landroid/app/BarBeamService;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/BarBeamService;->blinkLED()V

    return-void
.end method

.method private blinkLED()V
    .locals 7

    const-string v0, "BarBeamService"

    const-string v1, "blinkLED "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/app/BarBeamService;->stopBlinkLED()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/BarBeamService;->swtichLED(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    iget-object v1, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    new-instance v2, Landroid/app/BarBeamService$1;

    invoke-direct {v2, p0}, Landroid/app/BarBeamService$1;-><init>(Landroid/app/BarBeamService;)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method private stopBlinkLED()V
    .locals 1

    iget-object v0, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/BarBeamService;->mLEDTimer:Ljava/util/Timer;

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/BarBeamService;->swtichLED(Z)Z

    return-void
.end method

.method private declared-synchronized swtichLED(Z)Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/sys/class/sec/led/led_b"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    if-eqz p1, :cond_0

    const-string v2, "40"

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    goto :goto_3

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "BarBeamService"

    const-string v4, "No SvcLED"

    :goto_2
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_3
    const-string v3, "BarBeamService"

    const-string v4, "No SvcLED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v2

    :try_start_5
    const-string v3, "BarBeamService"

    const-string v4, "No SvcLED"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_3
    move-exception v2

    :try_start_6
    const-string v3, "BarBeamService"

    const-string v4, "No SvcLED"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v1, :cond_1

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catch_4
    move-exception v2

    :try_start_8
    const-string v3, "BarBeamService"

    const-string v4, "No SvcLED"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :cond_1
    :goto_3
    monitor-exit p0

    return v0

    :goto_4
    if-eqz v1, :cond_2

    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_5
    move-exception v3

    :try_start_a
    const-string v4, "BarBeamService"

    const-string v5, "No SvcLED"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_5
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_6
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addListener(Landroid/os/IBinder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    iget-object v5, v4, Landroid/app/BarBeamService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v5, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    new-instance v3, Landroid/app/BarBeamService$Listener;

    invoke-direct {v3, p0, p1}, Landroid/app/BarBeamService$Listener;-><init>(Landroid/app/BarBeamService;Landroid/os/IBinder;)V

    move-object v1, v3

    const/4 v3, 0x0

    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Landroid/app/IBarBeamListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBarBeamListener;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IBarBeamListener;->getListenerInfo()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v5

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_1
    :try_start_2
    iget-object v4, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Permission Denial: can\'t dump ConsumerIrService from without permission android.permission.DUMP"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    array-length v0, p3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "big_data"

    const/4 v1, 0x0

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\"BARCODE_USAGE_COUNT\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/app/BarBeamService;->mUseCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iput v1, p0, Landroid/app/BarBeamService;->mUseCount:I

    :cond_1
    return-void
.end method

.method public getCurrentStatus()Z
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const-string v2, ""

    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z

    monitor-enter p0

    const/4 v4, 0x1

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/sys/class/sec/sec_barcode_emul/barcode_led_status"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x400

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v1, v5

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v4, :cond_1

    sget-boolean v4, Landroid/app/BarBeamService;->SUCCESS:Z

    :goto_1
    move v3, v4

    goto/16 :goto_4

    :cond_1
    sget-boolean v4, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    move v3, v4

    goto/16 :goto_4

    :catch_0
    move-exception v4

    goto :goto_3

    :catchall_0
    move-exception v5

    goto/16 :goto_5

    :catch_1
    move-exception v5

    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v6, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v3, v6

    if-eqz v1, :cond_5

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v4, :cond_2

    sget-boolean v4, Landroid/app/BarBeamService;->SUCCESS:Z

    goto :goto_1

    :cond_2
    sget-boolean v4, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v4

    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catch_3
    move-exception v5

    :try_start_5
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v6, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v3, v6

    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v4, :cond_3

    sget-boolean v4, Landroid/app/BarBeamService;->SUCCESS:Z

    goto :goto_1

    :cond_3
    sget-boolean v4, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_3

    :catch_5
    move-exception v5

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v6, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move v3, v6

    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v4, :cond_4

    sget-boolean v4, Landroid/app/BarBeamService;->SUCCESS:Z

    goto :goto_1

    :cond_4
    sget-boolean v4, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catch_6
    move-exception v4

    goto :goto_3

    :goto_4
    nop

    :cond_5
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return v3

    :goto_5
    if-eqz v1, :cond_7

    :try_start_a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string v6, "1"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-ne v6, v4, :cond_6

    sget-boolean v4, Landroid/app/BarBeamService;->SUCCESS:Z

    move v3, v4

    goto :goto_6

    :cond_6
    sget-boolean v4, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move v3, v4

    :goto_6
    goto :goto_7

    :catchall_1
    move-exception v4

    goto :goto_8

    :catch_7
    move-exception v4

    :try_start_b
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_7
    throw v5

    :goto_8
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v4
.end method

.method public isImplementationCompatible()Z
    .locals 4

    const-string v0, "BarBeamService"

    const-string v1, "isImplementationCompatible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-boolean v2, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v2, Landroid/app/BarBeamService;->result:Z

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    const-string v2, "BarBeamService"

    const-string v3, "isImplementationCompatible : Enable barcode_emul_en"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v2

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto/16 :goto_8

    :catch_1
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v3, Landroid/app/BarBeamService;->result:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1

    :catch_3
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v3, Landroid/app/BarBeamService;->result:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catch_4
    move-exception v2

    goto :goto_1

    :catch_5
    move-exception v2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v3, Landroid/app/BarBeamService;->result:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catch_6
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_2
    :try_start_9
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    const-string v2, "BarBeamService"

    const-string v3, "isImplementationCompatible : Enable barcode_send"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    nop

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :goto_3
    goto :goto_5

    :catch_7
    move-exception v2

    :goto_4
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_3

    :catchall_1
    move-exception v2

    goto :goto_6

    :catch_8
    move-exception v2

    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v3, Landroid/app/BarBeamService;->result:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v1, :cond_1

    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_3

    :catch_9
    move-exception v2

    goto :goto_4

    :catch_a
    move-exception v2

    :try_start_e
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v3, Landroid/app/BarBeamService;->result:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-eqz v1, :cond_1

    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_3

    :catch_b
    move-exception v2

    goto :goto_4

    :catch_c
    move-exception v2

    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v3, Landroid/app/BarBeamService;->result:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-eqz v1, :cond_1

    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    goto :goto_3

    :catch_d
    move-exception v2

    goto :goto_4

    :cond_1
    :goto_5
    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    sget-boolean v2, Landroid/app/BarBeamService;->result:Z

    return v2

    :goto_6
    if-eqz v1, :cond_2

    :try_start_13
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_7

    :catch_e
    move-exception v3

    :try_start_14
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_7
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :goto_8
    if-eqz v0, :cond_3

    :try_start_15
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_f
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v2

    goto :goto_a

    :catch_f
    move-exception v3

    :try_start_16
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_9
    throw v2

    :goto_a
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    throw v2
.end method

.method public removeListener(Landroid/os/IBinder;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, ""

    iget-object v2, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    iget-object v5, v4, Landroid/app/BarBeamService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v5, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v3, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p1}, Landroid/app/IBarBeamListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBarBeamListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IBarBeamListener;->getListenerInfo()Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v4

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_2
    :try_start_2
    iget-object v3, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    :cond_2
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public setBarcode([B)V
    .locals 6

    const-string v0, "BarBeamService"

    const-string/jumbo v1, "setBarcode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.permission.BARCODE_READ"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    array-length v1, p1

    add-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    sget-boolean v2, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v2, Landroid/app/BarBeamService;->result:Z

    array-length v2, p1

    const/4 v3, 0x2

    add-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Landroid/app/BarBeamService;->mBeamLength:B

    const-string v2, "BarBeamService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendDataTable length : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v5, p0, Landroid/app/BarBeamService;->mBeamLength:B

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v1, v2

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    const/4 v5, 0x1

    aput-byte v4, v1, v5

    move v4, v3

    :goto_0
    array-length v5, p1

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_0

    add-int/lit8 v5, v4, -0x2

    aget-byte v5, p1, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    array-length v4, p1

    add-int/2addr v4, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v4

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    const-string v2, "BarBeamService"

    const-string/jumbo v3, "setBarcode is Done!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    goto :goto_3

    :catch_0
    move-exception v2

    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v3, Landroid/app/BarBeamService;->result:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v3, Landroid/app/BarBeamService;->result:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catch_4
    move-exception v2

    goto :goto_2

    :catch_5
    move-exception v2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v3, Landroid/app/BarBeamService;->result:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_1

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    :catch_6
    move-exception v2

    goto :goto_2

    :cond_1
    :goto_3
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    return-void

    :goto_4
    if-eqz v0, :cond_2

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v2

    goto :goto_6

    :catch_7
    move-exception v3

    :try_start_b
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_5
    throw v2

    :goto_6
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v2
.end method

.method public setHopSequence([BII)V
    .locals 12

    const-string v0, "BarBeamService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendHopSequenceTable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.permission.BARCODE_READ"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    new-array v1, v1, [B

    const/4 v2, 0x2

    new-array v3, v2, [B

    move v4, p2

    const/4 v5, 0x0

    const/16 v6, -0x7f

    sget-boolean v7, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z

    const/4 v7, 0x0

    const/16 v8, -0x80

    aput-byte v8, v3, v7

    and-int/lit8 v8, v4, 0x1f

    int-to-byte v8, v8

    const/4 v9, 0x1

    aput-byte v8, v3, v9

    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/io/FileOutputStream;

    const-string v10, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v8

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v8

    :goto_1
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catchall_0
    move-exception v2

    goto/16 :goto_c

    :catch_1
    move-exception v8

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v10, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v10, Landroid/app/BarBeamService;->result:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    :catch_2
    move-exception v8

    goto :goto_1

    :catch_3
    move-exception v8

    :try_start_5
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v10, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v10, Landroid/app/BarBeamService;->result:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    :catch_4
    move-exception v8

    goto :goto_1

    :catch_5
    move-exception v8

    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v10, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v10, Landroid/app/BarBeamService;->result:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_0

    :catch_6
    move-exception v8

    goto :goto_1

    :cond_0
    :goto_2
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    nop

    :goto_3
    if-ge v7, p2, :cond_4

    const/4 v5, 0x0

    add-int/lit8 v8, v5, 0x1

    aput-byte v6, v1, v5

    mul-int v5, v7, p3

    aget-byte v5, p1, v5

    const/16 v10, 0x15

    if-le v5, v10, :cond_1

    const-string v5, "BarBeamService"

    const-string/jumbo v11, "not supported bw "

    invoke-static {v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v8, 0x1

    aput-byte v10, v1, v8

    :goto_4
    goto :goto_5

    :cond_1
    add-int/lit8 v5, v8, 0x1

    mul-int v10, v7, p3

    aget-byte v10, p1, v10

    aput-byte v10, v1, v8

    goto :goto_4

    :goto_5
    add-int/lit8 v8, v5, 0x1

    mul-int v10, v7, p3

    add-int/2addr v10, v9

    aget-byte v10, p1, v10

    aput-byte v10, v1, v5

    add-int/lit8 v5, v8, 0x1

    mul-int v10, v7, p3

    add-int/2addr v10, v2

    aget-byte v10, p1, v10

    aput-byte v10, v1, v8

    add-int/lit8 v8, v5, 0x1

    mul-int v10, v7, p3

    add-int/lit8 v10, v10, 0x3

    aget-byte v10, p1, v10

    aput-byte v10, v1, v5

    add-int/lit8 v5, v8, 0x1

    mul-int v10, v7, p3

    add-int/lit8 v10, v10, 0x4

    aget-byte v10, p1, v10

    aput-byte v10, v1, v8

    add-int/lit8 v8, v5, 0x1

    mul-int v10, v7, p3

    add-int/lit8 v10, v10, 0x5

    aget-byte v10, p1, v10

    aput-byte v10, v1, v5

    add-int/lit8 v10, v8, 0x1

    mul-int v5, v7, p3

    add-int/lit8 v5, v5, 0x6

    aget-byte v5, p1, v5

    aput-byte v5, v1, v8

    add-int/lit8 v5, v6, 0x7

    int-to-byte v8, v5

    monitor-enter p0

    :try_start_a
    new-instance v5, Ljava/io/FileOutputStream;

    const-string v6, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    nop

    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_6
    goto :goto_8

    :catch_7
    move-exception v5

    :goto_7
    :try_start_c
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_6

    :catchall_1
    move-exception v2

    goto :goto_9

    :catch_8
    move-exception v5

    :try_start_d
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v6, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v6, Landroid/app/BarBeamService;->result:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v0, :cond_2

    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_6

    :catch_9
    move-exception v5

    goto :goto_7

    :catch_a
    move-exception v5

    :try_start_f
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v6, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v6, Landroid/app/BarBeamService;->result:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v0, :cond_2

    :try_start_10
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_6

    :catch_b
    move-exception v5

    goto :goto_7

    :catch_c
    move-exception v5

    :try_start_11
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v6, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v6, Landroid/app/BarBeamService;->result:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v0, :cond_2

    :try_start_12
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_6

    :catch_d
    move-exception v5

    goto :goto_7

    :cond_2
    :goto_8
    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    add-int/lit8 v7, v7, 0x1

    move v6, v8

    move v5, v10

    goto/16 :goto_3

    :goto_9
    if-eqz v0, :cond_3

    :try_start_14
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_e
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception v2

    goto :goto_b

    :catch_e
    move-exception v5

    :try_start_15
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_a
    throw v2

    :goto_b
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    throw v2

    :cond_4
    return-void

    :goto_c
    if-eqz v0, :cond_5

    :try_start_16
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_d

    :catchall_3
    move-exception v2

    goto :goto_e

    :catch_f
    move-exception v7

    :try_start_17
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_d
    throw v2

    :goto_e
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    throw v2
.end method

.method public startBeaming()V
    .locals 12

    const-string v0, "BarBeamService"

    const-string/jumbo v1, "startBeaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.permission.BARCODE_READ"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v0, Landroid/app/BarBeamService;->result:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x1

    new-array v4, v3, [C

    monitor-enter p0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    const/16 v6, 0x31

    aput-char v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/FileWriter;->write([C)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v6

    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    goto :goto_0

    :catchall_0
    move-exception v3

    goto/16 :goto_12

    :catch_1
    move-exception v6

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_1

    :catch_3
    move-exception v6

    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    goto :goto_0

    :catch_4
    move-exception v6

    goto :goto_1

    :catch_5
    move-exception v6

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_0

    :catch_6
    move-exception v6

    goto :goto_1

    :cond_0
    :goto_2
    const/4 v6, -0x1

    :try_start_9
    aput-byte v6, v2, v5

    iget-byte v5, p0, Landroid/app/BarBeamService;->mBeamLength:B

    aput-byte v5, v2, v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    const-wide/16 v5, 0x0

    const/16 v7, 0x1e

    :try_start_a
    new-instance v8, Ljava/io/FileOutputStream;

    const-string v9, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v8

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    const-string v8, "BarBeamService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startBarBeam : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v10, p0, Landroid/app/BarBeamService;->mBeamLength:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    nop

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v8, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v10}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_3

    :cond_1
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    iget-object v8, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v8, v8, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_4

    :catchall_1
    move-exception v5

    :try_start_e
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v5

    :cond_2
    :goto_4
    iput-boolean v3, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_6

    :catch_7
    move-exception v5

    :goto_5
    :try_start_10
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :goto_6
    goto/16 :goto_d

    :catchall_2
    move-exception v8

    goto/16 :goto_e

    :catch_8
    move-exception v8

    :try_start_11
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v1, :cond_9

    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v8, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v8, :cond_4

    iget-object v8, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v10}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_7

    :cond_3
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    iget-object v8, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v8, v8, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_8

    :catchall_3
    move-exception v5

    :try_start_15
    monitor-exit v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :try_start_16
    throw v5

    :cond_4
    :goto_8
    iput-boolean v3, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    goto :goto_6

    :catch_9
    move-exception v5

    goto :goto_5

    :catch_a
    move-exception v8

    :try_start_17
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    if-eqz v1, :cond_9

    :try_start_18
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v8, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v8, :cond_6

    iget-object v8, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    :try_start_19
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v10}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_9

    :cond_5
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :try_start_1a
    iget-object v8, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v8, v8, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    goto :goto_a

    :catchall_4
    move-exception v5

    :try_start_1b
    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    :try_start_1c
    throw v5

    :cond_6
    :goto_a
    iput-boolean v3, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_b
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    goto/16 :goto_6

    :catch_b
    move-exception v5

    goto/16 :goto_5

    :catch_c
    move-exception v8

    :try_start_1d
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    if-eqz v1, :cond_9

    :try_start_1e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v8, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v8, :cond_8

    iget-object v8, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :try_start_1f
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v10}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_b

    :cond_7
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v8
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :try_start_20
    iget-object v8, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v8, v8, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    goto :goto_c

    :catchall_5
    move-exception v5

    :try_start_21
    monitor-exit v8
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    :try_start_22
    throw v5

    :cond_8
    :goto_c
    iput-boolean v3, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_d
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    goto/16 :goto_6

    :catch_d
    move-exception v5

    goto/16 :goto_5

    :cond_9
    :goto_d
    :try_start_23
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    iget v5, p0, Landroid/app/BarBeamService;->mUseCount:I

    const v6, 0x7fffffff

    if-ge v5, v6, :cond_a

    iget v5, p0, Landroid/app/BarBeamService;->mUseCount:I

    add-int/2addr v5, v3

    iput v5, p0, Landroid/app/BarBeamService;->mUseCount:I

    :cond_a
    return-void

    :goto_e
    if-eqz v1, :cond_d

    :try_start_24
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_c

    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_e
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    :try_start_25
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v11}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_f

    :cond_b
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    monitor-exit v9
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    :try_start_26
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_e
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    goto :goto_10

    :catchall_6
    move-exception v3

    :try_start_27
    monitor-exit v9
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    :try_start_28
    throw v3

    :cond_c
    :goto_10
    iput-boolean v3, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_e
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    goto :goto_11

    :catch_e
    move-exception v3

    :try_start_29
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_11
    throw v8
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    :goto_12
    if-eqz v0, :cond_e

    :try_start_2a
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_f
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    goto :goto_13

    :catchall_7
    move-exception v3

    goto :goto_14

    :catch_f
    move-exception v5

    :try_start_2b
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_e
    :goto_13
    throw v3

    :goto_14
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    throw v3
.end method

.method public startBeaming_repeat(I)V
    .locals 12

    const-string v0, "BarBeamService"

    const-string/jumbo v1, "startBeaming_repeat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    const/16 v1, 0xff

    if-le p1, v1, :cond_1

    const/16 p1, 0xff

    :cond_1
    iget-object v1, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.permission.BARCODE_READ"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v1, Landroid/app/BarBeamService;->result:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [B

    new-array v4, v0, [C

    monitor-enter p0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v1, v6

    const/16 v6, 0x31

    aput-char v6, v4, v5

    invoke-virtual {v1, v4}, Ljava/io/FileWriter;->write([C)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v6

    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    :catch_1
    move-exception v6

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_1

    :catch_3
    move-exception v6

    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    goto :goto_0

    :catch_4
    move-exception v6

    goto :goto_1

    :catch_5
    move-exception v6

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_0

    :catch_6
    move-exception v6

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v6, -0x1

    :try_start_9
    aput-byte v6, v3, v5

    int-to-byte v5, p1

    aput-byte v5, v3, v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    const-wide/16 v5, 0x0

    const/16 v7, 0x1e

    :try_start_a
    new-instance v8, Ljava/io/FileOutputStream;

    const-string v9, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v8, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v8

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    const-string v8, "BarBeamService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startBarBeam : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v10, p0, Landroid/app/BarBeamService;->mBeamLength:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    nop

    :try_start_b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v8, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v8, :cond_4

    iget-object v8, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v10}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_3

    :cond_3
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    iget-object v8, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v8, v8, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_e
    monitor-exit v8
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :try_start_f
    throw v0

    :cond_4
    :goto_4
    iput-boolean v0, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    goto :goto_6

    :catch_7
    move-exception v0

    :goto_5
    :try_start_10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :goto_6
    goto/16 :goto_d

    :catchall_2
    move-exception v8

    goto/16 :goto_e

    :catch_8
    move-exception v8

    :try_start_11
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v2, :cond_b

    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v8, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v8, :cond_6

    iget-object v8, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v10}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_7

    :cond_5
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v8
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    :try_start_14
    iget-object v8, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v8, v8, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_8

    :catchall_3
    move-exception v0

    :try_start_15
    monitor-exit v8
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :try_start_16
    throw v0

    :cond_6
    :goto_8
    iput-boolean v0, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    goto :goto_6

    :catch_9
    move-exception v0

    goto :goto_5

    :catch_a
    move-exception v8

    :try_start_17
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    if-eqz v2, :cond_b

    :try_start_18
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v8, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v8, :cond_8

    iget-object v8, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_b
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    :try_start_19
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v10}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_9

    :cond_7
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v8
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    :try_start_1a
    iget-object v8, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v8, v8, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    goto :goto_a

    :catchall_4
    move-exception v0

    :try_start_1b
    monitor-exit v8
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    :try_start_1c
    throw v0

    :cond_8
    :goto_a
    iput-boolean v0, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_b
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    goto/16 :goto_6

    :catch_b
    move-exception v0

    goto/16 :goto_5

    :catch_c
    move-exception v8

    :try_start_1d
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2

    if-eqz v2, :cond_b

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v8, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v8, :cond_a

    iget-object v8, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_d
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :try_start_1f
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v10}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_b

    :cond_9
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    monitor-exit v8
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :try_start_20
    iget-object v8, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v8, v8, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_d
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    goto :goto_c

    :catchall_5
    move-exception v0

    :try_start_21
    monitor-exit v8
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5

    :try_start_22
    throw v0

    :cond_a
    :goto_c
    iput-boolean v0, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_d
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    goto/16 :goto_6

    :catch_d
    move-exception v0

    goto/16 :goto_5

    :cond_b
    :goto_d
    :try_start_23
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    return-void

    :goto_e
    if-eqz v2, :cond_e

    :try_start_24
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_d

    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v9
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_e
    .catchall {:try_start_24 .. :try_end_24} :catchall_7

    :try_start_25
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/BarBeamService$Listener;

    invoke-virtual {v11}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_f

    :cond_c
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    monitor-exit v9
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    :try_start_26
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_e
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    goto :goto_10

    :catchall_6
    move-exception v0

    :try_start_27
    monitor-exit v9
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    :try_start_28
    throw v0

    :cond_d
    :goto_10
    iput-boolean v0, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_e
    .catchall {:try_start_28 .. :try_end_28} :catchall_7

    goto :goto_11

    :catch_e
    move-exception v0

    :try_start_29
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_e
    :goto_11
    throw v8
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_7

    :goto_12
    if-eqz v1, :cond_f

    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_f
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    goto :goto_13

    :catchall_7
    move-exception v0

    goto :goto_14

    :catch_f
    move-exception v5

    :try_start_2b
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_f
    :goto_13
    throw v0

    :goto_14
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    throw v0
.end method

.method public stopBeaming()V
    .locals 8

    const-string v0, "BarBeamService"

    const-string/jumbo v1, "stopBarBeam"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.permission.BARCODE_READ"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget-boolean v2, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v2, Landroid/app/BarBeamService;->result:Z

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x1

    new-array v4, v3, [C

    monitor-enter p0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    const/16 v6, 0x30

    aput-char v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/io/FileWriter;->write([C)V

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v6

    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_0
    move-exception v3

    goto/16 :goto_8

    :catch_1
    move-exception v6

    :try_start_3
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_1

    :catch_3
    move-exception v6

    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catch_4
    move-exception v6

    goto :goto_1

    :catch_5
    move-exception v6

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v0, :cond_0

    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    :catch_6
    move-exception v6

    goto :goto_1

    :cond_0
    :goto_2
    const/4 v6, -0x1

    :try_start_9
    aput-byte v6, v2, v5

    aput-byte v5, v2, v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    nop

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_3
    goto :goto_5

    :catch_7
    move-exception v3

    :goto_4
    :try_start_c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3

    :catchall_1
    move-exception v3

    goto :goto_6

    :catch_8
    move-exception v3

    :try_start_d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v1, :cond_1

    :try_start_e
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_3

    :catch_9
    move-exception v3

    goto :goto_4

    :catch_a
    move-exception v3

    :try_start_f
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v1, :cond_1

    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto :goto_3

    :catch_b
    move-exception v3

    goto :goto_4

    :catch_c
    move-exception v3

    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz v1, :cond_1

    :try_start_12
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    goto :goto_3

    :catch_d
    move-exception v3

    goto :goto_4

    :cond_1
    :goto_5
    :try_start_13
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    return-void

    :goto_6
    if-eqz v1, :cond_2

    :try_start_14
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_e
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_7

    :catch_e
    move-exception v5

    :try_start_15
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_7
    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :goto_8
    if-eqz v0, :cond_3

    :try_start_16
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v3

    goto :goto_a

    :catch_f
    move-exception v5

    :try_start_17
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_9
    throw v3

    :goto_a
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    throw v3
.end method
