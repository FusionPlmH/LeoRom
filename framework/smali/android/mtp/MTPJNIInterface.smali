.class public Landroid/mtp/MTPJNIInterface;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MTPJNIInterface$IncomingHandler;,
        Landroid/mtp/MTPJNIInterface$MediaContentObserver;,
        Landroid/mtp/MTPJNIInterface$MusicPlaylist;
    }
.end annotation


# static fields
.field static final AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover.Agent"

.field static final AGENT_SERVICE_NAME:Ljava/lang/String; = "com.sec.android.easyMover.Agent.RemoteService"

.field static final CONNECTED:I = 0x3

.field static final DOWNLOADING:I = 0x4

.field static final EASYMOVER_AGENT:I = 0x0

.field static final EASYMOVER_SSM:I = 0x1

.field private static final GETTHUMBNAILTIME:I = 0xe4e1c0

.field private static final MICRO_HEIGH:I = 0x100

.field private static final MICRO_WIDTH:I = 0x100

.field static final MSG_CLOSE:I = 0x2

.field static final MSG_GET_SERIAL_COMMAND:I = 0x4

.field static final MSG_OPEN:I = 0x1

.field static final MSG_SEND_SERIAL_COMMAND:I = 0x3

.field private static MTP_DEBUG_LEVEL:Ljava/lang/String; = null

.field private static final MTP_MSGID_DEVICE_LOG:I = 0x5

.field private static final MTP_MSGID_SIDESYNC_START:I = 0x7

.field public static final NEW_VIRTUAL_SHARE_STORAGE_ACTION:Ljava/lang/String; = "com.samsung.android.MtpApplication.NEW_VSHARE_STORAGE"

.field static final RESP_FAIL:I = 0x2

.field static final RESP_NONE:I = 0x0

.field static final RESP_NOTREADY:I = 0x3

.field static final RESP_SUCCESS:I = 0x1

.field static RegisterBroadcast:Z = false

.field static RegisterBroadcast1:Z = false

.field static RegisterBroadcastMtpCategory:Z = false

.field static final SENDING:I = 0x5

.field static final SSM_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover"

.field static final SSM_SERVICE_NAME:Ljava/lang/String; = "com.sec.android.easyMover.service.RemoteService"

.field static final STORAGE_INFO_EVENT:I = 0x1a

.field static final SYNCHRONIZING:I = 0xa

.field static final TAG:Ljava/lang/String; = "MTPJNIInterface"

.field static final USB_REMOVED:I = 0x13

.field static final USB_TETHERING_ENABLED:I = 0xe

.field static cr:Landroid/content/ContentResolver;

.field public static gadgetResetStatus:I

.field private static isMtpLogOn:Z

.field static jsonData:Ljava/lang/String;

.field private static mHandler:Landroid/os/Handler;

.field public static mVStoreCategory:Landroid/mtp/VStorage;

.field public static mVStoreShare:Landroid/mtp/VStorage;

.field private static mcontext:Landroid/content/Context;

.field public static mtpFileManager:Landroid/mtp/MtpFileManager;

.field private static mtpJNIInterface:Landroid/mtp/MTPJNIInterface;

.field public static objectEventReceived:Z

.field static resultResponse:[B

.field private static scannerStatus:I


# instance fields
.field private DeviceName:Ljava/lang/String;

.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private composer:Ljava/lang/String;

.field conn:[Landroid/content/ServiceConnection;

.field private creationDate:Ljava/lang/String;

.field private dateTaken:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private displayname:Ljava/lang/String;

.field private duration:J

.field private filename:Ljava/lang/String;

.field private genreName:Ljava/lang/String;

.field private height:J

.field private id:Ljava/lang/String;

.field isStratCommand:Z

.field private language:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field mIsBound:[Z

.field private mMediaAudioObserver:Landroid/mtp/MTPJNIInterface$MediaContentObserver;

.field private mMediaFilesObserver:Landroid/mtp/MTPJNIInterface$MediaContentObserver;

.field private mMediaImageObserver:Landroid/mtp/MTPJNIInterface$MediaContentObserver;

.field private mMediaVideoObserver:Landroid/mtp/MTPJNIInterface$MediaContentObserver;

.field private final mMessenger:Landroid/os/Messenger;

.field private final mMtpCategoryReceiver:Landroid/content/BroadcastReceiver;

.field private final mMtpReceiver1:Landroid/content/BroadcastReceiver;

.field private mService:[Landroid/os/Messenger;

.field private mimeType:Ljava/lang/String;

.field private modificationDate:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private resolution:Ljava/lang/String;

.field serviceComponent:[Landroid/content/ComponentName;

.field private size:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private width:J

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    sput v0, Landroid/mtp/MTPJNIInterface;->scannerStatus:I

    sput-boolean v0, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast:Z

    sput-boolean v0, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast1:Z

    sput-boolean v0, Landroid/mtp/MTPJNIInterface;->RegisterBroadcastMtpCategory:Z

    sput v0, Landroid/mtp/MTPJNIInterface;->gadgetResetStatus:I

    const-string v1, ""

    sput-object v1, Landroid/mtp/MTPJNIInterface;->MTP_DEBUG_LEVEL:Ljava/lang/String;

    sput-boolean v0, Landroid/mtp/MTPJNIInterface;->isMtpLogOn:Z

    sput-boolean v0, Landroid/mtp/MTPJNIInterface;->objectEventReceived:Z

    const/4 v1, 0x0

    sput-object v1, Landroid/mtp/MTPJNIInterface;->mVStoreCategory:Landroid/mtp/VStorage;

    sput-object v1, Landroid/mtp/MTPJNIInterface;->mVStoreShare:Landroid/mtp/VStorage;

    sput-object v1, Landroid/mtp/MTPJNIInterface;->mtpFileManager:Landroid/mtp/MtpFileManager;

    new-instance v2, Landroid/mtp/MTPJNIInterface;

    invoke-direct {v2}, Landroid/mtp/MTPJNIInterface;-><init>()V

    sput-object v2, Landroid/mtp/MTPJNIInterface;->mtpJNIInterface:Landroid/mtp/MTPJNIInterface;

    const-string/jumbo v2, "ro.boot.debug_level"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ro.build.type"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ro.csc.country_code"

    const-string v5, "Unknown"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "user"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "KOREA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "0x494d"

    sput-object v5, Landroid/mtp/MTPJNIInterface;->MTP_DEBUG_LEVEL:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v5, "0x4948"

    sput-object v5, Landroid/mtp/MTPJNIInterface;->MTP_DEBUG_LEVEL:Ljava/lang/String;

    :goto_0
    sget-object v5, Landroid/mtp/MTPJNIInterface;->MTP_DEBUG_LEVEL:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/mtp/MTPJNIInterface;->isMtpLogOn:Z

    goto :goto_1

    :cond_1
    sput-boolean v0, Landroid/mtp/MTPJNIInterface;->isMtpLogOn:Z

    :goto_1
    :try_start_0
    const-string/jumbo v0, "mtp_samsung_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v5, "MTPJNIInterface"

    const-string v6, "WARNING: Could not load libmtp__samsung_jni.so"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sput-object v1, Landroid/mtp/MTPJNIInterface;->jsonData:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->title:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->path:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->album:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->filename:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->displayname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->id:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/mtp/MTPJNIInterface;->duration:J

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MTPJNIInterface;->size:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MTPJNIInterface;->creationDate:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MTPJNIInterface;->modificationDate:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MTPJNIInterface;->artist:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MTPJNIInterface;->composer:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Landroid/mtp/MTPJNIInterface;->year:I

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MTPJNIInterface;->description:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MTPJNIInterface;->language:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MTPJNIInterface;->longitude:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MTPJNIInterface;->latitude:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MTPJNIInterface;->genreName:Ljava/lang/String;

    iput-wide v0, p0, Landroid/mtp/MTPJNIInterface;->width:J

    iput-wide v0, p0, Landroid/mtp/MTPJNIInterface;->height:J

    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->resolution:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->dateTaken:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->mMediaImageObserver:Landroid/mtp/MTPJNIInterface$MediaContentObserver;

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->mMediaVideoObserver:Landroid/mtp/MTPJNIInterface$MediaContentObserver;

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->mMediaAudioObserver:Landroid/mtp/MTPJNIInterface$MediaContentObserver;

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->mMediaFilesObserver:Landroid/mtp/MTPJNIInterface$MediaContentObserver;

    new-instance v0, Landroid/mtp/MTPJNIInterface$1;

    invoke-direct {v0, p0}, Landroid/mtp/MTPJNIInterface$1;-><init>(Landroid/mtp/MTPJNIInterface;)V

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver1:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/mtp/MTPJNIInterface$2;

    invoke-direct {v0, p0}, Landroid/mtp/MTPJNIInterface$2;-><init>(Landroid/mtp/MTPJNIInterface;)V

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->mMtpCategoryReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x2

    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    iput-object v1, p0, Landroid/mtp/MTPJNIInterface;->mIsBound:[Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/mtp/MTPJNIInterface;->isStratCommand:Z

    new-array v1, v0, [Landroid/os/Messenger;

    iput-object v1, p0, Landroid/mtp/MTPJNIInterface;->mService:[Landroid/os/Messenger;

    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Landroid/mtp/MTPJNIInterface$IncomingHandler;

    invoke-direct {v2}, Landroid/mtp/MTPJNIInterface$IncomingHandler;-><init>()V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/mtp/MTPJNIInterface;->mMessenger:Landroid/os/Messenger;

    new-array v1, v0, [Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/mtp/MTPJNIInterface;->serviceComponent:[Landroid/content/ComponentName;

    new-array v0, v0, [Landroid/content/ServiceConnection;

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->conn:[Landroid/content/ServiceConnection;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method private DoShellCmd(Ljava/lang/String;)I
    .locals 6

    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DoShellCmd : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "/system/bin/sh"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "-c"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, -0x1

    :try_start_0
    const-string v4, "MTPJNIInterface"

    const-string v5, "exec command"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    move-object v0, v4

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    const-string v4, "MTPJNIInterface"

    const-string v5, "exec done"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const-string v2, "MTPJNIInterface"

    const-string v4, "DoShellCmd done"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    return v2

    :catch_1
    move-exception v3

    const-string v4, "MTPJNIInterface"

    const-string v5, "DoShellCmd - SecurityException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_2
    move-exception v3

    const-string v4, "MTPJNIInterface"

    const-string v5, "DoShellCmd - IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public static MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Landroid/mtp/MTPJNIInterface;->isMtpLogOn:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Landroid/mtp/MTPJNIInterface;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MTPJNIInterface;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/mtp/MTPJNIInterface;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/mtp/MTPJNIInterface;->getTimeToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/mtp/MTPJNIInterface;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->DoShellCmd(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/mtp/MTPJNIInterface;)[Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MTPJNIInterface;->mService:[Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$400(Landroid/mtp/MTPJNIInterface;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Landroid/mtp/MTPJNIInterface;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method private native alertNotiHandler(I)V
.end method

.method private computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I
    .locals 7

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int v2, v0, p2

    div-int v3, v1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    return v5

    :cond_0
    if-le v4, v5, :cond_1

    if-le v0, p2, :cond_1

    div-int v6, v0, v4

    if-ge v6, p2, :cond_1

    add-int/lit8 v4, v4, -0x1

    :cond_1
    if-le v4, v5, :cond_2

    if-le v1, p2, :cond_2

    div-int v5, v1, v4

    if-ge v5, p2, :cond_2

    add-int/lit8 v4, v4, -0x1

    :cond_2
    return v4
.end method

.method private native enumerateMtp(II)V
.end method

.method private getExifOrientation(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MTPJNIInterface"

    const-string v4, "cannot read exif"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v1, :cond_3

    const-string v2, "Orientation"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/16 v0, 0x10e

    goto :goto_1

    :cond_1
    const/16 v0, 0x5a

    goto :goto_1

    :cond_2
    const/16 v0, 0xb4

    nop

    :cond_3
    :goto_1
    return v0
.end method

.method private getImageThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    const/4 v0, 0x0

    const/4 v2, 0x0

    move-object v6, v2

    const/16 v2, 0x400

    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/mtp/MTPJNIInterface;->getSampleSizeBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v7, v2

    const/16 v3, 0x100

    const/16 v4, 0x100

    const/4 v5, 0x1

    move-object v0, p0

    :try_start_1
    invoke-direct/range {v0 .. v5}, Landroid/mtp/MTPJNIInterface;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v6, v0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v7, v0

    move-object v0, v2

    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v6
.end method

.method public static declared-synchronized getInstance()Landroid/mtp/MTPJNIInterface;
    .locals 2

    const-class v0, Landroid/mtp/MTPJNIInterface;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mtpJNIInterface:Landroid/mtp/MTPJNIInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getMusicThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->getEmbeddedPicture()[B

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object v1, v4

    const/4 v4, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/high16 v7, 0x43800000    # 256.0f

    if-ge v5, v6, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v7, v5

    :goto_0
    move v4, v7

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v7, v5

    goto :goto_0

    :goto_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move-object v11, v5

    invoke-virtual {v11, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    const/16 v8, 0x100

    const/16 v9, 0x100

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v11

    move-object v7, v1

    invoke-direct/range {v5 .. v10}, Landroid/mtp/MTPJNIInterface;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :cond_1
    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object v1
.end method

.method private getSampleSizeBitmap(ILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    invoke-direct {p0, v0, p1}, Landroid/mtp/MTPJNIInterface;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :cond_0
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p2}, Landroid/mtp/MTPJNIInterface;->getExifOrientation(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, v2}, Landroid/mtp/MTPJNIInterface;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private getTimeToString()Ljava/lang/String;
    .locals 8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0000"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/2addr v4, v2

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "00"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "00"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private getVideoThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 10

    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x100

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/media/MediaMetadataRetriever;->semSetVideoSize(IIZZ)V

    const-wide/32 v2, 0xe4e1c0

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, v2

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/high16 v5, 0x43800000    # 256.0f

    if-ge v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v5, v3

    :goto_0
    move v2, v5

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v5, v3

    goto :goto_0

    :goto_1
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    move-object v9, v3

    invoke-virtual {v9, v2, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    const/16 v6, 0x100

    const/16 v7, 0x100

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, v9

    move-object v5, v1

    invoke-direct/range {v3 .. v8}, Landroid/mtp/MTPJNIInterface;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object v1
.end method

.method public static final intToByteArray(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    int-to-byte v1, p0

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    return-object v0
.end method

.method private makeThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x3c

    invoke-virtual {p1, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v0, v2

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_2
    move-exception v4

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :cond_0
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return v0

    :goto_2
    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    throw v4
.end method

.method private native objectAdded(IILjava/lang/String;)V
.end method

.method private native objectPlaAdded(Ljava/lang/String;)V
.end method

.method private native objectPlaRemoved(Ljava/lang/String;)V
.end method

.method private native objectPropChanged(IILjava/lang/String;)V
.end method

.method private native objectRemoved(IILjava/lang/String;)V
.end method

.method private registerBroadCastRec1()V
    .locals 3

    const-string v0, "MTPJNIInterface"

    const-string v1, "< MTP > Registering BroadCast receiver :::::::"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    sput-boolean v1, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast1:Z

    return-void
.end method

.method private registerBroadCastRecMtpCategory()V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.MtpApplication.NEW_VSHARE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface;->mMtpCategoryReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.samsung.android.MtpApplication.permission.SMARTMTP_PERMISSION"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v1, 0x1

    sput-boolean v1, Landroid/mtp/MTPJNIInterface;->RegisterBroadcastMtpCategory:Z

    return-void
.end method

.method private rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p1

    move-object v6, v0

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private native setCryptionKey(Ljava/lang/String;)V
.end method

.method private native testMtpCommands(II)V
.end method

.method private transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 8

    if-nez p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    int-to-float v0, p3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    int-to-float v0, p4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, p2

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, p2

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, p3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, p4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v4, v2, 0x2

    div-int/lit8 v5, v3, 0x2

    invoke-static {v1, v4, v5, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return-object v4
.end method

.method private native virtualObjectAdd(IIILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native virtualObjectRemove(III)V
.end method

.method private native virtualStorageEnable(IIJJ)V
.end method


# virtual methods
.method public GetBatteryLevel()I
    .locals 2

    const-string v0, "MTPJNIInterface"

    const-string v1, "Getting battery Level from JAVA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    return v0
.end method

.method public GetMediaObject(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 13

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v9, p1

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data =\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v10, :cond_0

    const-string v0, "MTPJNIInterface"

    const-string v1, "cursor is null for image"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-nez v12, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data =\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_1

    const-string v0, "MTPJNIInterface"

    const-string v1, "cursor is null for audio "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-nez v12, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data =\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v0, "MTPJNIInterface"

    const-string v1, "cursor is null for video "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-nez v12, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const-string v0, "MTPJNIInterface"

    const-string/jumbo v1, "objectCount is zero "

    invoke-static {v0, v1}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    :cond_3
    new-array v0, v12, [Landroid/mtp/MediaObject;

    invoke-virtual {p0, v10, v0}, Landroid/mtp/MTPJNIInterface;->getColumnData(Landroid/database/Cursor;[Landroid/mtp/MediaObject;)V

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-object v0
.end method

.method public GetVirtualObjects(II)[Ljava/lang/Object;
    .locals 2

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreCategory:Landroid/mtp/VStorage;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreCategory:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->getID()I

    move-result v0

    if-ne v0, p1, :cond_0

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreCategory:Landroid/mtp/VStorage;

    :goto_0
    goto :goto_1

    :cond_0
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreShare:Landroid/mtp/VStorage;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreShare:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->getID()I

    move-result v0

    if-ne v0, p1, :cond_1

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreShare:Landroid/mtp/VStorage;

    goto :goto_0

    :goto_1
    nop

    invoke-virtual {v0, p2}, Landroid/mtp/VStorage;->getList(I)[Landroid/mtp/VObject;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public GetVirtualStorageName(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreCategory:Landroid/mtp/VStorage;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreCategory:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->getID()I

    move-result v0

    if-ne v0, p1, :cond_0

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreCategory:Landroid/mtp/VStorage;

    :goto_0
    goto :goto_1

    :cond_0
    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreShare:Landroid/mtp/VStorage;

    if-eqz v0, :cond_1

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreShare:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->getID()I

    move-result v0

    if-ne v0, p1, :cond_1

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreShare:Landroid/mtp/VStorage;

    goto :goto_0

    :goto_1
    nop

    const-string v1, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetVirtualStorageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/mtp/VStorage;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public SendScanFile([B)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside SendScanFile : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/mtp/MTPJNIInterface;->sendScan(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public SetCryptionKey(Ljava/lang/String;)V
    .locals 2

    const-string v0, "MTPJNIInterface"

    const-string v1, "Getting CryptionKey from JAVA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->setCryptionKey(Ljava/lang/String;)V

    return-void
.end method

.method public UpdateMediaDB(Ljava/lang/String;)V
    .locals 4

    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filename got from JNI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    const-string v1, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContentName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public addPlaylist(Ljava/lang/String;Ljava/lang/String;)I
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "4"

    const-string v3, "47621"

    const/4 v4, 0x0

    const-string v5, "MTPJNIInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Playlistname :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "MTPJNIInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Playlist path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v12, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "external"

    invoke-static {v6}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object v14, v6

    const-string/jumbo v6, "name"

    invoke-virtual {v14, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_data"

    invoke-virtual {v14, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    move-object v13, v6

    const-string v6, "_data"

    invoke-virtual {v13, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "media_type"

    invoke-virtual {v13, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "format"

    invoke-virtual {v13, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v6, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "name=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v12

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v7, "MTPJNIInterface"

    const-string v8, "Cur is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, -0x1

    return v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const-string v8, "MTPJNIInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Count"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-nez v7, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    sget-object v10, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, v12, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_1

    const-string v10, "MTPJNIInterface"

    const-string/jumbo v11, "playlist Insertion failure"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v13

    move-object v0, v14

    move-object v11, v15

    goto/16 :goto_1

    :cond_1
    const-string v10, "MTPJNIInterface"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The New URI "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v10, 0x3

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_data=\""

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v13

    move-object v13, v0

    move-object v0, v14

    move-object v14, v15

    move-object v11, v15

    const/4 v15, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_2

    const-string v13, "MTPJNIInterface"

    const-string v14, "Cur is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const-string v13, "MTPJNIInterface"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Count"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v7, :cond_3

    sget-object v13, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_data=\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v13, v11, v10, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const-string v13, "MTPJNIInterface"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "noOfRowsUpdated = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-nez v7, :cond_4

    sget-object v13, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-virtual {v13, v11, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    if-nez v9, :cond_4

    const-string v13, "MTPJNIInterface"

    const-string/jumbo v14, "playlistFile Insertion failure"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_5
    move-object v10, v13

    move-object v0, v14

    move-object v11, v15

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v13, "_id"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_1
    return v8
.end method

.method public addtoPlaylist(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 27

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v0, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playlistname :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filename: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "name"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "name=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, -0x1

    if-nez v4, :cond_0

    const-string v6, "MTPJNIInterface"

    const-string v7, "Cur is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const-string v7, "MTPJNIInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Count"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v6, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v5

    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v9, "_id"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const-string v9, "MTPJNIInterface"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Playlist rowID"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    sget-object v15, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v10, "MTPJNIInterface"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "URI for the audio DB is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v12, 0x0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_data=\""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v11, v15

    move-object/from16 v17, v15

    move-object/from16 v15, v16

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_2

    const-string v11, "MTPJNIInterface"

    const-string v12, "c1 Cur is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v5

    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const-string v11, "MTPJNIInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Data from the audio count"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    if-nez v6, :cond_4

    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    move-object v0, v12

    const-string v12, "_data"

    invoke-virtual {v0, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "is_music"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "is_ringtone"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "is_alarm"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "is_notification"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v0, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v15, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v12, "MTPJNIInterface"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The audio URI "

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    const-string v11, "date_modified"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v8, :cond_3

    const-string v11, "MTPJNIInterface"

    const-string v12, "Insertion failure"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return v5

    :cond_3
    const-string v11, "MTPJNIInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The New URI "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v0, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v11, v8

    goto :goto_0

    :cond_4
    move-object v11, v8

    move-object/from16 v15, v17

    :goto_0
    move-object v8, v0

    if-nez v6, :cond_6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    move-object v9, v0

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v12, "MTPJNIInterface"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "URI for the audio DB is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    sget-object v12, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/16 v20, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_data=\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_5

    const-string v12, "MTPJNIInterface"

    const-string v13, "Cur is null"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    return v5

    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const-string v12, "MTPJNIInterface"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Data from the audio count"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v0

    :cond_6
    const/4 v0, 0x0

    const/4 v12, 0x1

    if-lez v6, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v13, "_id"

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v13, "external"

    move/from16 v24, v6

    int-to-long v5, v7

    invoke-static {v13, v5, v6}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const/16 v20, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "audio_id=\""

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "\""

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v19, v5

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v13, 0x0

    if-nez v6, :cond_7

    const-string v14, "MTPJNIInterface"

    move/from16 v25, v0

    const-string v0, "Cursor cur2 is null"

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v0, -0x1

    return v0

    :cond_7
    move/from16 v25, v0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v12, 0x0

    :cond_8
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_9
    move/from16 v24, v6

    move/from16 v25, v0

    :goto_1
    const/4 v5, 0x0

    if-lez v24, :cond_b

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v0, "MTPJNIInterface"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Row ID for audio file"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const-string v0, "audio_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v9, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v0, "play_order"

    add-int/lit8 v14, p3, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v9, v0, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "MTPJNIInterface"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Playlist ID"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "playlist_id"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v12, :cond_a

    :try_start_0
    const-string v0, "external"

    int-to-long v1, v7

    invoke-static {v0, v1, v2}, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Audio map URI"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    move-object v11, v1

    const-string v1, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The New URI for the audio map"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception"

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :cond_a
    const/4 v1, 0x1

    return v1

    :cond_b
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v0, -0x1

    return v0
.end method

.method public deleteAllItemofPlaylist(Ljava/lang/String;)V
    .locals 9

    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playlistName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "MTPJNIInterface"

    const-string v4, "Cur is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const-string v4, "MTPJNIInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v5, "MTPJNIInterface"

    const-string/jumbo v6, "playlist is not present"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "MTPJNIInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "playlist "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is not present"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v5, "_id"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const-string v5, "external"

    int-to-long v6, v4

    invoke-static {v5, v6, v7}, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "playlist_id=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v6, "MTPJNIInterface"

    const-string v7, "No of songs of playlistName deleted"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "MTPJNIInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No of songs of playlistName deleted="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deletePlaylist(Ljava/lang/String;)I
    .locals 9

    const-string v0, "MTPJNIInterface"

    const-string v1, "Playlist to be deleted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Playlist to be deleted  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "MTPJNIInterface"

    const-string v4, "Cur is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    return v3

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const-string v4, "MTPJNIInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "_data"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_data=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".pla\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const-string v6, "MTPJNIInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Files Count"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_1

    const-string v6, "MTPJNIInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deletion unsuccessful"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v6, "MTPJNIInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deletion successful"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x1

    return v4
.end method

.method public deletefromMediaPlayer(Ljava/lang/String;)V
    .locals 6

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_data=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Row deleted for Audio"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Row deleted Vedio"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Row deleted Vedio from Gallary DB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v2, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Row deleted Image"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_data=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Row deleted Vedio from Gallary DB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getColumnData(Landroid/database/Cursor;[Landroid/mtp/MediaObject;)V
    .locals 91

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "title"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "_data"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v0, "_display_name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v0, "_size"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v0, "mime_type"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v0, "date_added"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v0, "date_modified"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v0, "date_modified"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v0, "_display_name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v0, "duration"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v0, "album"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v0, "artist"

    move/from16 v16, v4

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v0, "composer"

    move/from16 v17, v3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v0, "year"

    move/from16 v18, v3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "duration"

    move/from16 v19, v3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "album"

    move/from16 v20, v3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "description"

    move/from16 v21, v3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v0, "latitude"

    move/from16 v22, v3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v0, "longitude"

    move/from16 v23, v3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v0, "language"

    move/from16 v24, v3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "artist"

    move/from16 v25, v3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "datetaken"

    move/from16 v26, v3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v0, "datetaken"

    move/from16 v27, v3

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v0, "resolution"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    move/from16 v28, v0

    :try_start_0
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->id:Ljava/lang/String;

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->filename:Ljava/lang/String;

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->title:Ljava/lang/String;

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->path:Ljava/lang/String;

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->size:Ljava/lang/String;

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->creationDate:Ljava/lang/String;

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->modificationDate:Ljava/lang/String;

    iget-object v0, v1, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_20

    move/from16 v29, v5

    :try_start_1
    const-string v5, "image"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1f

    if-eqz v0, :cond_0

    const/4 v5, 0x2

    :try_start_2
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->dateTaken:Ljava/lang/String;

    const-string/jumbo v0, "width"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v31, v5

    move/from16 v30, v6

    :try_start_3
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Landroid/mtp/MTPJNIInterface;->width:J

    const-string v0, "height"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Landroid/mtp/MTPJNIInterface;->height:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move/from16 v33, v3

    move/from16 v37, v4

    move/from16 v38, v18

    move/from16 v6, v19

    move/from16 v39, v20

    move/from16 v36, v21

    move/from16 v5, v22

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v35, v27

    move/from16 v44, v28

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move/from16 v33, v3

    move/from16 v37, v4

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v38, v18

    move/from16 v71, v19

    move/from16 v39, v20

    move/from16 v36, v21

    move/from16 v70, v22

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v35, v27

    move/from16 v44, v28

    :goto_0
    move/from16 v4, v31

    goto/16 :goto_3

    :catch_1
    move-exception v0

    move/from16 v31, v5

    move/from16 v30, v6

    move/from16 v33, v3

    move/from16 v37, v4

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v38, v18

    move/from16 v71, v19

    move/from16 v39, v20

    move/from16 v36, v21

    move/from16 v70, v22

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v35, v27

    move/from16 v44, v28

    move/from16 v4, v31

    goto/16 :goto_3

    :cond_0
    move/from16 v30, v6

    :try_start_4
    iget-object v0, v1, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;

    const-string v5, "audio"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1e

    if-eqz v0, :cond_1

    const/4 v5, 0x0

    :try_start_5
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->displayname:Ljava/lang/String;

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->album:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move/from16 v32, v5

    :try_start_6
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Landroid/mtp/MTPJNIInterface;->duration:J

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->artist:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move/from16 v5, v18

    :try_start_7
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->composer:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move/from16 v6, v19

    :try_start_8
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Landroid/mtp/MTPJNIInterface;->year:I

    const-string v0, "genre_name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->genreName:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move/from16 v33, v3

    move/from16 v37, v4

    move/from16 v38, v5

    move/from16 v39, v20

    move/from16 v36, v21

    move/from16 v5, v22

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v35, v27

    move/from16 v44, v28

    move/from16 v31, v32

    goto/16 :goto_2

    :catch_2
    move-exception v0

    move/from16 v33, v3

    move/from16 v37, v4

    move/from16 v38, v5

    move/from16 v71, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v39, v20

    move/from16 v36, v21

    move/from16 v70, v22

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v35, v27

    move/from16 v44, v28

    move/from16 v4, v32

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move/from16 v33, v3

    move/from16 v37, v4

    move/from16 v38, v5

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v71, v19

    move/from16 v39, v20

    move/from16 v36, v21

    move/from16 v70, v22

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v35, v27

    move/from16 v44, v28

    move/from16 v4, v32

    goto/16 :goto_3

    :catch_4
    move-exception v0

    move/from16 v33, v3

    move/from16 v37, v4

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v38, v18

    move/from16 v71, v19

    move/from16 v39, v20

    move/from16 v36, v21

    move/from16 v70, v22

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v35, v27

    move/from16 v44, v28

    move/from16 v4, v32

    goto/16 :goto_3

    :catch_5
    move-exception v0

    move/from16 v32, v5

    move/from16 v33, v3

    move/from16 v37, v4

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v38, v18

    move/from16 v71, v19

    move/from16 v39, v20

    move/from16 v36, v21

    move/from16 v70, v22

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v35, v27

    move/from16 v44, v28

    move/from16 v4, v32

    goto/16 :goto_3

    :cond_1
    move/from16 v5, v18

    move/from16 v6, v19

    :try_start_9
    iget-object v0, v1, Landroid/mtp/MTPJNIInterface;->mimeType:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1d

    move/from16 v33, v3

    :try_start_a
    const-string/jumbo v3, "video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1c

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    move/from16 v34, v3

    move/from16 v3, v27

    :try_start_b
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->dateTaken:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10

    move/from16 v35, v3

    move/from16 v3, v21

    :try_start_c
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->album:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f

    move/from16 v36, v3

    move/from16 v37, v4

    move/from16 v38, v5

    move/from16 v3, v20

    :try_start_d
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v1, Landroid/mtp/MTPJNIInterface;->duration:J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    move/from16 v4, v26

    :try_start_e
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->artist:Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_d

    move/from16 v5, v22

    :try_start_f
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->description:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    move/from16 v39, v3

    move/from16 v3, v24

    :try_start_10
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->longitude:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    move/from16 v40, v3

    move/from16 v3, v23

    :try_start_11
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->latitude:Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_a

    move/from16 v41, v3

    move/from16 v3, v25

    :try_start_12
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->language:Ljava/lang/String;

    const-string/jumbo v0, "width"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    move/from16 v43, v3

    move/from16 v42, v4

    :try_start_13
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Landroid/mtp/MTPJNIInterface;->width:J

    const-string v0, "height"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Landroid/mtp/MTPJNIInterface;->height:J
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    move/from16 v3, v28

    :try_start_14
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/mtp/MTPJNIInterface;->resolution:Ljava/lang/String;

    iget-object v0, v1, Landroid/mtp/MTPJNIInterface;->resolution:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    if-eqz v0, :cond_3

    move/from16 v44, v3

    :try_start_15
    iget-wide v2, v1, Landroid/mtp/MTPJNIInterface;->width:J

    const-wide/16 v18, 0x0

    cmp-long v0, v2, v18

    if-eqz v0, :cond_2

    iget-wide v2, v1, Landroid/mtp/MTPJNIInterface;->height:J

    cmp-long v0, v2, v18

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, v1, Landroid/mtp/MTPJNIInterface;->resolution:Ljava/lang/String;

    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Landroid/mtp/MTPJNIInterface;->width:J

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, v1, Landroid/mtp/MTPJNIInterface;->height:J
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6

    goto :goto_1

    :catch_6
    move-exception v0

    move/from16 v70, v5

    move/from16 v71, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v4, v34

    goto/16 :goto_3

    :cond_3
    move/from16 v44, v3

    :cond_4
    :goto_1
    move/from16 v31, v34

    goto/16 :goto_2

    :catch_7
    move-exception v0

    move/from16 v44, v3

    move/from16 v70, v5

    move/from16 v71, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v4, v34

    goto/16 :goto_3

    :catch_8
    move-exception v0

    move/from16 v44, v28

    move/from16 v70, v5

    move/from16 v71, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v4, v34

    goto/16 :goto_3

    :catch_9
    move-exception v0

    move/from16 v43, v3

    move/from16 v42, v4

    move/from16 v44, v28

    move/from16 v70, v5

    move/from16 v71, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v4, v34

    goto/16 :goto_3

    :catch_a
    move-exception v0

    move/from16 v41, v3

    move/from16 v42, v4

    move/from16 v43, v25

    move/from16 v44, v28

    move/from16 v70, v5

    move/from16 v71, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v4, v34

    goto/16 :goto_3

    :catch_b
    move-exception v0

    move/from16 v40, v3

    move/from16 v42, v4

    move/from16 v41, v23

    move/from16 v43, v25

    move/from16 v44, v28

    move/from16 v70, v5

    move/from16 v71, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v4, v34

    goto/16 :goto_3

    :catch_c
    move-exception v0

    move/from16 v39, v3

    move/from16 v42, v4

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v44, v28

    move/from16 v70, v5

    move/from16 v71, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v4, v34

    goto/16 :goto_3

    :catch_d
    move-exception v0

    move/from16 v39, v3

    move/from16 v42, v4

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v44, v28

    move/from16 v71, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v70, v22

    move/from16 v4, v34

    goto/16 :goto_3

    :catch_e
    move-exception v0

    move/from16 v39, v3

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v44, v28

    move/from16 v71, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v70, v22

    move/from16 v4, v34

    goto/16 :goto_3

    :catch_f
    move-exception v0

    move/from16 v36, v3

    move/from16 v37, v4

    move/from16 v38, v5

    move/from16 v39, v20

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v44, v28

    move/from16 v71, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v70, v22

    move/from16 v4, v34

    goto/16 :goto_3

    :catch_10
    move-exception v0

    move/from16 v35, v3

    move/from16 v37, v4

    move/from16 v38, v5

    move/from16 v39, v20

    move/from16 v36, v21

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v44, v28

    move/from16 v71, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v70, v22

    move/from16 v4, v34

    goto/16 :goto_3

    :cond_5
    move/from16 v37, v4

    move/from16 v38, v5

    move/from16 v39, v20

    move/from16 v36, v21

    move/from16 v5, v22

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v35, v27

    move/from16 v44, v28

    move/from16 v31, v16

    :goto_2
    :try_start_16
    new-instance v0, Landroid/mtp/MediaObject;

    iget-object v2, v1, Landroid/mtp/MTPJNIInterface;->filename:Ljava/lang/String;

    iget-object v3, v1, Landroid/mtp/MTPJNIInterface;->album:Ljava/lang/String;

    iget-object v4, v1, Landroid/mtp/MTPJNIInterface;->artist:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1b

    move/from16 v70, v5

    :try_start_17
    iget-object v5, v1, Landroid/mtp/MTPJNIInterface;->composer:Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1a

    move/from16 v71, v6

    :try_start_18
    iget-object v6, v1, Landroid/mtp/MTPJNIInterface;->creationDate:Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_19

    move/from16 v72, v7

    :try_start_19
    iget-object v7, v1, Landroid/mtp/MTPJNIInterface;->description:Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_18

    move/from16 v73, v8

    move/from16 v74, v9

    :try_start_1a
    iget-wide v8, v1, Landroid/mtp/MTPJNIInterface;->duration:J
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_17

    move/from16 v75, v10

    :try_start_1b
    iget-object v10, v1, Landroid/mtp/MTPJNIInterface;->id:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_16

    move/from16 v76, v11

    :try_start_1c
    iget-object v11, v1, Landroid/mtp/MTPJNIInterface;->language:Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_15

    move/from16 v77, v12

    :try_start_1d
    iget-object v12, v1, Landroid/mtp/MTPJNIInterface;->latitude:Ljava/lang/String;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_14

    move/from16 v78, v13

    :try_start_1e
    iget-object v13, v1, Landroid/mtp/MTPJNIInterface;->longitude:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_13

    move/from16 v79, v14

    :try_start_1f
    iget-object v14, v1, Landroid/mtp/MTPJNIInterface;->modificationDate:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_12

    move/from16 v80, v15

    :try_start_20
    iget-object v15, v1, Landroid/mtp/MTPJNIInterface;->path:Ljava/lang/String;

    move-object/from16 v81, v15

    iget-object v15, v1, Landroid/mtp/MTPJNIInterface;->size:Ljava/lang/String;

    move-object/from16 v82, v15

    iget-object v15, v1, Landroid/mtp/MTPJNIInterface;->title:Ljava/lang/String;

    move-object/from16 v83, v15

    iget v15, v1, Landroid/mtp/MTPJNIInterface;->year:I

    move/from16 v84, v15

    iget-object v15, v1, Landroid/mtp/MTPJNIInterface;->genreName:Ljava/lang/String;

    move-object/from16 v85, v14

    move-object/from16 v86, v15

    iget-wide v14, v1, Landroid/mtp/MTPJNIInterface;->width:J

    move-wide/from16 v87, v14

    iget-wide v14, v1, Landroid/mtp/MTPJNIInterface;->height:J

    move-wide/from16 v89, v14

    iget-object v14, v1, Landroid/mtp/MTPJNIInterface;->dateTaken:Ljava/lang/String;

    move-object/from16 v45, v0

    move-object/from16 v46, v2

    move-object/from16 v47, v3

    move-object/from16 v48, v4

    move-object/from16 v49, v5

    move-object/from16 v50, v6

    move-object/from16 v51, v7

    move-wide/from16 v52, v8

    move-object/from16 v54, v10

    move-object/from16 v55, v11

    move-object/from16 v56, v12

    move-object/from16 v57, v13

    move/from16 v58, v31

    move-object/from16 v59, v85

    move-object/from16 v60, v81

    move-object/from16 v61, v82

    move-object/from16 v62, v83

    move/from16 v63, v84

    move-object/from16 v64, v86

    move-wide/from16 v65, v87

    move-wide/from16 v67, v89

    move-object/from16 v69, v14

    invoke-direct/range {v45 .. v69}, Landroid/mtp/MediaObject;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)V

    aput-object v0, p2, v17
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_11

    add-int/lit8 v3, v17, 0x1

    nop

    move/from16 v17, v3

    goto/16 :goto_4

    :catch_11
    move-exception v0

    goto/16 :goto_0

    :catch_12
    move-exception v0

    move/from16 v80, v15

    move/from16 v4, v31

    goto/16 :goto_3

    :catch_13
    move-exception v0

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v4, v31

    goto/16 :goto_3

    :catch_14
    move-exception v0

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v4, v31

    goto/16 :goto_3

    :catch_15
    move-exception v0

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v4, v31

    goto/16 :goto_3

    :catch_16
    move-exception v0

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v4, v31

    goto/16 :goto_3

    :catch_17
    move-exception v0

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v4, v31

    goto/16 :goto_3

    :catch_18
    move-exception v0

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v4, v31

    goto/16 :goto_3

    :catch_19
    move-exception v0

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v4, v31

    goto/16 :goto_3

    :catch_1a
    move-exception v0

    move/from16 v71, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v4, v31

    goto/16 :goto_3

    :catch_1b
    move-exception v0

    move/from16 v70, v5

    move/from16 v71, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v4, v31

    goto/16 :goto_3

    :catch_1c
    move-exception v0

    move/from16 v37, v4

    move/from16 v38, v5

    move/from16 v71, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v39, v20

    move/from16 v36, v21

    move/from16 v70, v22

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v35, v27

    move/from16 v44, v28

    move/from16 v4, v16

    goto/16 :goto_3

    :catch_1d
    move-exception v0

    move/from16 v33, v3

    move/from16 v37, v4

    move/from16 v38, v5

    move/from16 v71, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v39, v20

    move/from16 v36, v21

    move/from16 v70, v22

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v35, v27

    move/from16 v44, v28

    move/from16 v4, v16

    goto/16 :goto_3

    :catch_1e
    move-exception v0

    move/from16 v33, v3

    move/from16 v37, v4

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v38, v18

    move/from16 v71, v19

    move/from16 v39, v20

    move/from16 v36, v21

    move/from16 v70, v22

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v35, v27

    move/from16 v44, v28

    move/from16 v4, v16

    goto/16 :goto_3

    :catch_1f
    move-exception v0

    move/from16 v33, v3

    move/from16 v37, v4

    move/from16 v30, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v38, v18

    move/from16 v71, v19

    move/from16 v39, v20

    move/from16 v36, v21

    move/from16 v70, v22

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v35, v27

    move/from16 v44, v28

    move/from16 v4, v16

    goto :goto_3

    :catch_20
    move-exception v0

    move/from16 v33, v3

    move/from16 v37, v4

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v72, v7

    move/from16 v73, v8

    move/from16 v74, v9

    move/from16 v75, v10

    move/from16 v76, v11

    move/from16 v77, v12

    move/from16 v78, v13

    move/from16 v79, v14

    move/from16 v80, v15

    move/from16 v38, v18

    move/from16 v71, v19

    move/from16 v39, v20

    move/from16 v36, v21

    move/from16 v70, v22

    move/from16 v41, v23

    move/from16 v40, v24

    move/from16 v43, v25

    move/from16 v42, v26

    move/from16 v35, v27

    move/from16 v44, v28

    move/from16 v4, v16

    :goto_3
    const-string v3, "MTPJNIInterface"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v31, v4

    goto :goto_4

    :cond_6
    move/from16 v17, v3

    move/from16 v16, v4

    move/from16 v31, v16

    :goto_4
    return-void
.end method

.method public getDeviceSerialNo()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "00000000000"

    :cond_0
    return-object v0
.end method

.method public getGadgetResetStatus(I)I
    .locals 3

    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting gadget reset status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/mtp/MTPJNIInterface;->gadgetResetStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/mtp/MTPJNIInterface;->gadgetResetStatus:I

    return v0
.end method

.method public getMediaScannerStatus(I)I
    .locals 3

    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting media scanner status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/mtp/MTPJNIInterface;->scannerStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/mtp/MTPJNIInterface;->scannerStatus:I

    return v0
.end method

.method public getMtpEnumerate()V
    .locals 2

    const-string v0, "MTPJNIInterface"

    const-string v1, "MTP in GetEnumerateMtp"

    invoke-static {v0, v1}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Landroid/mtp/MTPJNIInterface;->enumerateMtp(II)V

    return-void
.end method

.method public getObjectHandle(Ljava/lang/String;I)I
    .locals 12

    const-string/jumbo v0, "media"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "external/file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v3, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filePath is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, -0x1

    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    :try_start_0
    sget-object v3, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_data=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    move-object v9, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "MTPJNIInterface"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v9, :cond_0

    const-string v3, "MTPJNIInterface"

    const-string v4, "Cur is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    const-string v4, "MTPJNIInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "objectHandle Count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return v11

    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "_id"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const-string v4, "MTPJNIInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "objectHandle is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_4

    const/4 v3, 0x0

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "_data"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    sget-object v5, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v5

    goto :goto_1

    :catch_1
    move-exception v5

    const-string v6, "MTPJNIInterface"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v3, :cond_3

    const-string v5, "MTPJNIInterface"

    const-string v6, "Insertion failure"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_3
    const-string v5, "MTPJNIInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The New URI "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    long-to-int v10, v5

    const-string v5, "MTPJNIInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "objectHandle is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return v10
.end method

.method public getPathFromObjecthandle(I)Ljava/lang/String;
    .locals 11

    const-string/jumbo v0, "media"

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "external/file"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :try_start_0
    sget-object v4, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v7, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_id=\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "\""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "MTPJNIInterface"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v2, :cond_0

    const-string v4, "MTPJNIInterface"

    const-string v5, "Cur is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return-object v4

    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    const-string v5, "MTPJNIInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "objectHandle Count"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v5, "_data"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v5, "MTPJNIInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " filePath is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public getPlaylistId(Ljava/lang/String;)I
    .locals 7

    sget-object v6, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const-string v2, "MTPJNIInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Count"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-string v3, "MTPJNIInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playlist ID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getThumbnail(Ljava/lang/String;I)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v0, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/test_thumb_img.jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-ne v3, v6, :cond_9

    const-string v7, "MTPJNIInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inside getThumbnail for images for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const-string v8, "MTPJNIInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "try get thumbnail from MediaStore\'s API "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v8, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v12, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_data =\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v6, "MTPJNIInterface"

    const-string v9, "Cur is null and try to get thumbBitmap"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Landroid/mtp/MTPJNIInterface;->getImageThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-direct {v1, v6, v5}, Landroid/mtp/MTPJNIInterface;->makeThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    :cond_0
    return v0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    if-nez v9, :cond_3

    const-string v6, "MTPJNIInterface"

    const-string v13, "Count is zero and try to get thumbBitmap"

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    invoke-direct/range {p0 .. p1}, Landroid/mtp/MTPJNIInterface;->getImageThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-direct {v1, v6, v5}, Landroid/mtp/MTPJNIInterface;->makeThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result v7

    move v0, v7

    :cond_2
    return v0

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v13, "_id"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move v10, v13

    const-string/jumbo v13, "orientation"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move v12, v14

    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    sget-object v13, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    int-to-long v14, v10

    const/4 v4, 0x0

    invoke-static {v13, v14, v15, v6, v4}, Landroid/provider/MediaStore$Images$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v12, :cond_5

    const-string v6, "MTPJNIInterface"

    const-string v7, "get orientation from mediaStore equal 0  try to getExifOrientation"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Landroid/mtp/MTPJNIInterface;->getExifOrientation(Ljava/lang/String;)I

    move-result v6

    move v12, v6

    :cond_5
    if-eqz v4, :cond_7

    if-eqz v12, :cond_6

    invoke-direct {v1, v4, v12}, Landroid/mtp/MTPJNIInterface;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v4, v6

    :cond_6
    invoke-direct {v1, v4, v5}, Landroid/mtp/MTPJNIInterface;->makeThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result v6

    move v0, v6

    goto :goto_0

    :cond_7
    const-string v6, "MTPJNIInterface"

    const-string v7, "getThumbnail from mediaStore is coming null  try to get thumbBitmap"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Landroid/mtp/MTPJNIInterface;->getImageThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v4, v6

    if-eqz v4, :cond_8

    invoke-direct {v1, v4, v5}, Landroid/mtp/MTPJNIInterface;->makeThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result v6

    move v0, v6

    :cond_8
    :goto_0
    const-string v6, "MTPJNIInterface"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "image\'s thumb size is "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_9
    const/4 v4, 0x2

    if-ne v3, v4, :cond_b

    invoke-direct/range {p0 .. p1}, Landroid/mtp/MTPJNIInterface;->getVideoThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-direct {v1, v4, v5}, Landroid/mtp/MTPJNIInterface;->makeThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result v6

    move v0, v6

    goto :goto_1

    :cond_a
    const-string v6, "MTPJNIInterface"

    const-string v7, "Video\'s bitmap is coming null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_b
    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    const-string v4, "MTPJNIInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inside getThumbnail for music"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, Landroid/mtp/MTPJNIInterface;->getMusicThumbBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-direct {v1, v4, v5}, Landroid/mtp/MTPJNIInterface;->makeThumb(Landroid/graphics/Bitmap;Ljava/lang/String;)I

    move-result v6

    move v0, v6

    goto :goto_2

    :cond_c
    const-string v6, "MTPJNIInterface"

    const-string v7, "Music\'s bitmap is coming null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return v0

    :cond_d
    return v0

    :catch_0
    move-exception v0

    const/4 v4, 0x0

    return v4

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return v4
.end method

.method public getValueSettingDB(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Value of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getdeviceName(I)Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    iget-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "MTPJNIInterface"

    const-string v1, "DeviceName is Null in System"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_name"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    iget-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "MTPJNIInterface"

    const-string v1, "DeviceName is Null in Global"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Default"

    iput-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    :cond_0
    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/mtp/MTPJNIInterface;->DeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public initializeSerivce()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MTPJNIInterface;->isStratCommand:Z

    iget-object v1, p0, Landroid/mtp/MTPJNIInterface;->serviceComponent:[Landroid/content/ComponentName;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easyMover.Agent"

    const-string v4, "com.sec.android.easyMover.Agent.RemoteService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    iget-object v1, p0, Landroid/mtp/MTPJNIInterface;->serviceComponent:[Landroid/content/ComponentName;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.sec.android.easyMover"

    const-string v4, "com.sec.android.easyMover.service.RemoteService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v1, p0, Landroid/mtp/MTPJNIInterface;->conn:[Landroid/content/ServiceConnection;

    new-instance v2, Landroid/mtp/MTPJNIInterface$4;

    invoke-direct {v2, p0}, Landroid/mtp/MTPJNIInterface$4;-><init>(Landroid/mtp/MTPJNIInterface;)V

    aput-object v2, v1, v0

    iget-object v0, p0, Landroid/mtp/MTPJNIInterface;->conn:[Landroid/content/ServiceConnection;

    new-instance v1, Landroid/mtp/MTPJNIInterface$5;

    invoke-direct {v1, p0}, Landroid/mtp/MTPJNIInterface$5;-><init>(Landroid/mtp/MTPJNIInterface;)V

    aput-object v1, v0, v3

    return-void
.end method

.method public mtpCommands(II)V
    .locals 3

    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MTP in testMtpCommands of MTPJNIInterface: code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "transactionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/mtp/MTPJNIInterface;->alertNotiHandler(I)V

    return-void
.end method

.method public noOfSongsInPlaylist(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p1

    sget-object v7, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v3, "MTPJNIInterface"

    const-string v4, "Cur is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v3, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v8, "MTPJNIInterface"

    const-string v9, "MTPJNIInterface , Playlist is not present in media DB"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "MTPJNIInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MTPJNIInterface , Playlist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is not present in media DB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v6, "external"

    int-to-long v8, v2

    invoke-static {v6, v8, v9}, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    sget-object v8, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v12, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "playlist_id=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v6

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-eqz v5, :cond_2

    const-string v8, "MTPJNIInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MTPJNIInterface , no of songs in playlist  is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "MTPJNIInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MTPJNIInterface , no of songs in playlist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    return-object v4
.end method

.method public notifyMTPStack(I)V
    .locals 3

    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "noti = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast1:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MTPJNIInterface;->mMtpReceiver1:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-boolean v0, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast1:Z

    :cond_0
    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->alertNotiHandler(I)V

    return-void
.end method

.method public renamePlaylist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "MTPJNIInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "playlistOldName :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "MTPJNIInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "playlistNewName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "MTPJNIInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "playlistNewPath: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {p3, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v1, v5

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "MTPJNIInterface"

    const-string v7, "exception in getting last modified "

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v5, "MTPJNIInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "In updatePlaylistPath dateModified is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v7, "name"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "_data"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "date_modified"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v7, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const-string v7, "MTPJNIInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "noOfRowsUpdated = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x1

    if-ne v0, v7, :cond_0

    const-string v7, "MTPJNIInterface"

    const-string v8, "Playlist Renamed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "MTPJNIInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "playlist "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " is renamed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v7, "MTPJNIInterface"

    const-string v8, "Playlist Rename failed"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public sendObjectAdded(IILjava/lang/String;)V
    .locals 1

    const-string v0, ".pla"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MTPJNIInterface;->objectAdded(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendObjectPropChanged(IILjava/lang/String;)V
    .locals 1

    const-string v0, ".pla"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MTPJNIInterface;->objectPropChanged(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendObjectRemoved(IILjava/lang/String;)V
    .locals 1

    const-string v0, ".pla"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MTPJNIInterface;->objectRemoved(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendPlaAdded(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MTPJNIInterface"

    const-string v1, "In sendPlaAdded playlist file path"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In sendPlaAdded playlist file path is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectPlaAdded(Ljava/lang/String;)V

    return-void
.end method

.method public sendPlaRemoved(Ljava/lang/String;)V
    .locals 3

    const-string v0, ".pla"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".pla"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "MTPJNIInterface"

    const-string/jumbo v1, "sendPlaRemoved is added .pla "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendPlaRemoved is added .pla "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MTPJNIInterface"

    const-string v2, "calling objectPlaRemoved from sendPlaRemoved "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Landroid/mtp/MTPJNIInterface;->objectPlaRemoved(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "MTPJNIInterface"

    const-string/jumbo v2, "playlist file does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendScan(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    :try_start_0
    const-string v0, "MTPJNIInterface"

    const-string/jumbo v1, "sendScan file is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const-string v0, "MTPJNIInterface"

    const-string v4, "Scan Directories"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0, v3}, Landroid/media/MediaScannerConnection;->semScanDirectories(Landroid/content/Context;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    goto :goto_0

    :cond_1
    const-string v0, "MTPJNIInterface"

    const-string/jumbo v4, "scan File"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v2, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-static {p1, v0, v3, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    const-string v1, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendScan - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public sendkiesmessage(IILjava/lang/String;)I
    .locals 4

    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendkiesmessage: MsgId=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "MsgVal=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " MsgStr=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.intent.action.KIES_MTP_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "MsgId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "MsgVal"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "MsgStr"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string v0, "/storage/emulated/0/DeviceLogFile"

    move v1, p2

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/mtp/MTPJNIInterface$3;

    invoke-direct {v3, p0, v1}, Landroid/mtp/MTPJNIInterface$3;-><init>(Landroid/mtp/MTPJNIInterface;I)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    nop

    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public sendssmmessage(II[B)[B
    .locals 8

    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendssmmessage: commandId=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "serviceID=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sendData=>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroid/mtp/MTPJNIInterface;->isStratCommand:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/mtp/MTPJNIInterface;->initializeSerivce()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x4

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v6, p0, Landroid/mtp/MTPJNIInterface;->mService:[Landroid/os/Messenger;

    aget-object v6, v6, p2

    if-nez v6, :cond_1

    new-array v0, v5, [B

    sput-object v0, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    invoke-static {v4}, Landroid/mtp/MTPJNIInterface;->intToByteArray(I)[B

    move-result-object v0

    sput-object v0, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    goto/16 :goto_1

    :cond_1
    sget-object v6, Landroid/mtp/MTPJNIInterface;->jsonData:Ljava/lang/String;

    if-nez v6, :cond_2

    new-array v0, v5, [B

    sput-object v0, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    invoke-static {v1}, Landroid/mtp/MTPJNIInterface;->intToByteArray(I)[B

    move-result-object v0

    sput-object v0, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    goto/16 :goto_1

    :cond_2
    :try_start_0
    sget-object v1, Landroid/mtp/MTPJNIInterface;->jsonData:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v6, v1

    const/16 v7, 0x8

    add-int/2addr v6, v7

    new-array v6, v6, [B

    sput-object v6, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    invoke-static {v3}, Landroid/mtp/MTPJNIInterface;->intToByteArray(I)[B

    move-result-object v3

    sget-object v6, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    invoke-static {v3, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v3, v1

    invoke-static {v3}, Landroid/mtp/MTPJNIInterface;->intToByteArray(I)[B

    move-result-object v3

    sget-object v6, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    invoke-static {v3, v2, v6, v5, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    sget-object v3, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    array-length v6, v1

    invoke-static {v1, v2, v3, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    sput-object v0, Landroid/mtp/MTPJNIInterface;->jsonData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "MTPJNIInterface"

    const-string v2, "get command exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v1, v5, [B

    sput-object v1, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    invoke-static {v4}, Landroid/mtp/MTPJNIInterface;->intToByteArray(I)[B

    move-result-object v1

    sput-object v1, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    goto/16 :goto_1

    :pswitch_1
    new-array v2, v5, [B

    sput-object v2, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface;->mService:[Landroid/os/Messenger;

    aget-object v2, v2, p2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/mtp/MTPJNIInterface;->intToByteArray(I)[B

    move-result-object v0

    sput-object v0, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    goto/16 :goto_1

    :cond_3
    :try_start_1
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MTPJNIInterface;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "json"

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface;->mService:[Landroid/os/Messenger;

    aget-object v2, v2, p2

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    invoke-static {v3}, Landroid/mtp/MTPJNIInterface;->intToByteArray(I)[B

    move-result-object v2

    sput-object v2, Landroid/mtp/MTPJNIInterface;->resultResponse:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "MTPJNIInterface"

    const-string/jumbo v2, "send command exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Landroid/mtp/MTPJNIInterface;->intToByteArray(I)[B

    move-result-object v1

    sput-object v1, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    goto/16 :goto_1

    :pswitch_2
    new-array v5, v5, [B

    sput-object v5, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    iget-object v5, p0, Landroid/mtp/MTPJNIInterface;->mService:[Landroid/os/Messenger;

    aget-object v5, v5, p2

    if-nez v5, :cond_4

    invoke-static {v1}, Landroid/mtp/MTPJNIInterface;->intToByteArray(I)[B

    move-result-object v0

    sput-object v0, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    goto/16 :goto_1

    :cond_4
    :try_start_2
    invoke-static {v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    iget-object v5, p0, Landroid/mtp/MTPJNIInterface;->mMessenger:Landroid/os/Messenger;

    iput-object v5, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v5, p0, Landroid/mtp/MTPJNIInterface;->mService:[Landroid/os/Messenger;

    aget-object v5, v5, p2

    invoke-virtual {v5, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object v5, p0, Landroid/mtp/MTPJNIInterface;->mIsBound:[Z

    aget-boolean v5, v5, p2

    if-eqz v5, :cond_5

    sget-object v5, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    iget-object v6, p0, Landroid/mtp/MTPJNIInterface;->conn:[Landroid/content/ServiceConnection;

    aget-object v6, v6, p2

    invoke-virtual {v5, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_5
    iget-object v5, p0, Landroid/mtp/MTPJNIInterface;->mIsBound:[Z

    aput-boolean v2, v5, p2

    invoke-static {v3}, Landroid/mtp/MTPJNIInterface;->intToByteArray(I)[B

    move-result-object v2

    sput-object v2, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface;->mService:[Landroid/os/Messenger;

    aput-object v0, v2, p2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "MTPJNIInterface"

    const-string v2, "byebye exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Landroid/mtp/MTPJNIInterface;->intToByteArray(I)[B

    move-result-object v1

    sput-object v1, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    goto :goto_1

    :pswitch_3
    new-array v0, v5, [B

    sput-object v0, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    iget-object v0, p0, Landroid/mtp/MTPJNIInterface;->mIsBound:[Z

    aget-boolean v0, v0, p2

    if-ne v0, v3, :cond_6

    const-string v0, "MTPJNIInterface"

    const-string v1, "Already bindservice."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Landroid/mtp/MTPJNIInterface;->intToByteArray(I)[B

    move-result-object v0

    sput-object v0, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    goto :goto_1

    :cond_6
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Landroid/mtp/MTPJNIInterface;->serviceComponent:[Landroid/content/ComponentName;

    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface;->conn:[Landroid/content/ServiceConnection;

    aget-object v2, v2, p2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface;->mIsBound:[Z

    aput-boolean v3, v2, p2

    :cond_7
    const-string v2, "MTPJNIInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bind result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/mtp/MTPJNIInterface;->mIsBound:[Z

    aget-boolean v2, v2, p2

    if-eqz v2, :cond_8

    invoke-static {v3}, Landroid/mtp/MTPJNIInterface;->intToByteArray(I)[B

    move-result-object v2

    sput-object v2, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    goto :goto_0

    :cond_8
    invoke-static {v4}, Landroid/mtp/MTPJNIInterface;->intToByteArray(I)[B

    move-result-object v2

    sput-object v2, Landroid/mtp/MTPJNIInterface;->resultResponse:[B
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_0
    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "MTPJNIInterface"

    const-string v2, "bind exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Landroid/mtp/MTPJNIInterface;->intToByteArray(I)[B

    move-result-object v1

    sput-object v1, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    nop

    :goto_1
    sget-object v0, Landroid/mtp/MTPJNIInterface;->resultResponse:[B

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sentVirtualObjectAdd(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/mtp/MTPJNIInterface;->virtualObjectAdd(IIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sentVirtualObjectRemove(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MTPJNIInterface;->virtualObjectRemove(III)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    sput-object p1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Landroid/mtp/MTPJNIInterface;->cr:Landroid/content/ContentResolver;

    sget-boolean v0, Landroid/mtp/MTPJNIInterface;->RegisterBroadcast1:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/mtp/MTPJNIInterface;->registerBroadCastRec1()V

    :cond_0
    return-void
.end method

.method public setDeviceName([B)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Modify device_name to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "MTPJNIInterface"

    const-string v2, "DeviceName is Null in System"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_name"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    sput-object p1, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setMediaScannerStatus(I)V
    .locals 3

    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setting Media scanner status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sput p1, Landroid/mtp/MTPJNIInterface;->scannerStatus:I

    const-string v0, "MTPJNIInterface"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After setting Media scanner status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMtpEventStatus()V
    .locals 3

    const-string v0, "MTPJNIInterface"

    const-string/jumbo v1, "set ready receiving intent from media provider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mtp_event_status"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public songPresentCheck(Ljava/lang/String;)I
    .locals 7

    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_data=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "MTPJNIInterface"

    const-string v2, "Cur is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-lez v1, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public songsPathOfPlaylist(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    invoke-virtual {p0, p1}, Landroid/mtp/MTPJNIInterface;->getPlaylistId(Ljava/lang/String;)I

    move-result v0

    const-string v1, "external"

    int-to-long v2, v0

    invoke-static {v1, v2, v3}, Landroid/mtp/MTPJNIInterface$MusicPlaylist;->getMembersContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v2, "audio_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playlist_id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v4, "MTPJNIInterface"

    const-string v5, "Cur is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v6, v5, [I

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    if-ge v4, v5, :cond_1

    :try_start_0
    const-string v7, "audio_id"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v6, v4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return-object v3

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v7, ""

    :goto_1
    if-ge v4, v5, :cond_3

    sget-object v8, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "_data"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id=\""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v11, v6, v4

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "\""

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v9, v3

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v8, "MTPJNIInterface"

    const-string v9, "Cur is null but continue since checking for audio index"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v8, "_data"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-string v8, "MTPJNIInterface"

    const-string v9, "MTPJNIInterface,pipe seperated Path of playlist song "

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "MTPJNIInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MTPJNIInterface,pipe seperated Path of playlist song is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7
.end method

.method public startObjectObserver(II[B)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "utf-8"

    invoke-direct {v0, p3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v1, "MTPJNIInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside startObjectObserver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/MTPJNIInterface;->MTP_LOG_PRINT(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/mtp/MtpFileManager;

    invoke-direct {v1}, Landroid/mtp/MtpFileManager;-><init>()V

    sput-object v1, Landroid/mtp/MTPJNIInterface;->mtpFileManager:Landroid/mtp/MtpFileManager;

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mtpFileManager:Landroid/mtp/MtpFileManager;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mtpFileManager:Landroid/mtp/MtpFileManager;

    invoke-virtual {v1, p1, p2, v0}, Landroid/mtp/MtpFileManager;->openObject(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public updateUiState(I)V
    .locals 2

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public virtualCategoryStorageEnable()V
    .locals 8

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreCategory:Landroid/mtp/VStorage;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreCategory:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->stop()V

    :cond_0
    new-instance v0, Landroid/mtp/VStorageCategory;

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/mtp/VStorageCategory;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreCategory:Landroid/mtp/VStorage;

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreCategory:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->getID()I

    move-result v2

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreCategory:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->getRDAttr()I

    move-result v3

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreCategory:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->getTotalSize()J

    move-result-wide v4

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreCategory:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->getmFreeSize()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/mtp/MTPJNIInterface;->virtualStorageEnable(IIJJ)V

    return-void
.end method

.method public virtualShareStorageEnable([Ljava/lang/String;)V
    .locals 8

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreShare:Landroid/mtp/VStorage;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreShare:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->stop()V

    :cond_0
    new-instance v0, Landroid/mtp/VStorageShare;

    sget-object v1, Landroid/mtp/MTPJNIInterface;->mcontext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Landroid/mtp/VStorageShare;-><init>([Ljava/lang/String;Landroid/content/Context;)V

    sput-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreShare:Landroid/mtp/VStorage;

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreShare:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->getID()I

    move-result v2

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreShare:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->getRDAttr()I

    move-result v3

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreShare:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->getTotalSize()J

    move-result-wide v4

    sget-object v0, Landroid/mtp/MTPJNIInterface;->mVStoreShare:Landroid/mtp/VStorage;

    invoke-virtual {v0}, Landroid/mtp/VStorage;->getmFreeSize()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/mtp/MTPJNIInterface;->virtualStorageEnable(IIJJ)V

    return-void
.end method
