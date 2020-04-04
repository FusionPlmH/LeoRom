.class public Landroid/mtp/VStorage;
.super Ljava/lang/Object;
.source "VStorage.java"


# static fields
.field public static final INTERNAL_SD_PATH:Ljava/lang/String;

.field public static final OBJECT_HANDLE_ROOT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "VStorage"

.field public static final VIRTUAL_STORAGEACCESS_R:I = 0x1

.field public static final VIRTUAL_STORAGEACCESS_RD:I = 0x2

.field public static final VIRTUAL_STORAGEACCESS_RWD:I = 0x0

.field public static final VIRTUAL_STORAGE_CATEGORY:I = 0x10000001

.field public static final VIRTUAL_STORAGE_SHARE:I = 0x20000001

.field public static final mVStorageHandler:Landroid/os/Handler;

.field private static final mVStorageThread:Landroid/os/HandlerThread;


# instance fields
.field public mDbChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mFreeSize:J

.field private mId:I

.field public mName:Ljava/lang/String;

.field private mObjId:I

.field private mRDAttr:I

.field public mTotalSize:J

.field private mcontext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/VStorage;->INTERNAL_SD_PATH:Ljava/lang/String;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VStorage"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/mtp/VStorage;->mVStorageThread:Landroid/os/HandlerThread;

    sget-object v0, Landroid/mtp/VStorage;->mVStorageThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroid/mtp/VStorage;->mVStorageThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/mtp/VStorage;->mVStorageHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/mtp/VStorage;->mTotalSize:J

    iput-wide v0, p0, Landroid/mtp/VStorage;->mFreeSize:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/mtp/VStorage;->mObjId:I

    iput v0, p0, Landroid/mtp/VStorage;->mId:I

    iput v0, p0, Landroid/mtp/VStorage;->mRDAttr:I

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/mtp/VStorage;->mDbChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Landroid/mtp/VStorage;->mcontext:Landroid/content/Context;

    iput p2, p0, Landroid/mtp/VStorage;->mObjId:I

    iput p2, p0, Landroid/mtp/VStorage;->mId:I

    iput p3, p0, Landroid/mtp/VStorage;->mRDAttr:I

    return-void
.end method

.method public static LogPrint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addFile(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dbChange()V
    .locals 0

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/mtp/VStorage;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Landroid/mtp/VStorage;->mId:I

    return v0
.end method

.method public getList(I)[Landroid/mtp/VObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/mtp/VStorage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewID()I
    .locals 1

    iget v0, p0, Landroid/mtp/VStorage;->mObjId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/mtp/VStorage;->mObjId:I

    return v0
.end method

.method public getRDAttr()I
    .locals 1

    iget v0, p0, Landroid/mtp/VStorage;->mRDAttr:I

    return v0
.end method

.method public getRString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroid/mtp/VStorage;->mcontext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "string"

    iget-object v2, p0, Landroid/mtp/VStorage;->mcontext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Landroid/mtp/VStorage;->mcontext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTotalSize()J
    .locals 2

    iget-wide v0, p0, Landroid/mtp/VStorage;->mTotalSize:J

    return-wide v0
.end method

.method public getmFreeSize()J
    .locals 2

    iget-wide v0, p0, Landroid/mtp/VStorage;->mFreeSize:J

    return-wide v0
.end method

.method public removeDir(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public saveDir(ILandroid/mtp/VDir;)V
    .locals 0

    return-void
.end method

.method public saveMediaFile(Ljava/lang/String;Landroid/mtp/VObject;)V
    .locals 0

    return-void
.end method

.method public sendVObjAdd(ILandroid/mtp/VObject;)V
    .locals 2

    sget-object v0, Landroid/mtp/VStorage;->mVStorageHandler:Landroid/os/Handler;

    new-instance v1, Landroid/mtp/VStorage$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/mtp/VStorage$1;-><init>(Landroid/mtp/VStorage;Landroid/mtp/VObject;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendVObjRemove(ILandroid/mtp/VObject;)V
    .locals 2

    sget-object v0, Landroid/mtp/VStorage;->mVStorageHandler:Landroid/os/Handler;

    new-instance v1, Landroid/mtp/VStorage$2;

    invoke-direct {v1, p0, p2, p1}, Landroid/mtp/VStorage$2;-><init>(Landroid/mtp/VStorage;Landroid/mtp/VObject;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
