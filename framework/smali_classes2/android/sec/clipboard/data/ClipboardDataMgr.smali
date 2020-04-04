.class public Landroid/sec/clipboard/data/ClipboardDataMgr;
.super Ljava/lang/Object;
.source "ClipboardDataMgr.java"

# interfaces
.implements Landroid/sec/clipboard/data/IClipboardDataList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

.field private mContext:Landroid/content/Context;

.field private mCurrentListIndex:I

.field private mCurrentListOwnerUid:I

.field private mFileManager:Landroid/sec/clipboard/data/file/FileManager;

.field private mFileManagerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/sec/clipboard/data/file/FileManager;",
            ">;"
        }
    .end annotation
.end field

.field private mIsShared:Z

.field private mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

.field private final mMaxSize:I

.field private mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

.field private mUserManager:Landroid/os/UserManager;

.field private tempDeleteItem:Lcom/samsung/android/content/clipboard/data/SemClipData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;

    invoke-direct {v0, p0}, Landroid/sec/clipboard/data/ClipboardDataMgr$1;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    new-instance v0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;Landroid/sec/clipboard/data/ClipboardDataMgr$1;)V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    iput-boolean v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    iput-object p2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persona"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->initializeClipboardDataMgr(I)V

    return-void
.end method

.method static synthetic access$000(Landroid/sec/clipboard/data/ClipboardDataMgr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;
    .locals 8

    const/4 v0, 0x0

    add-int/lit16 v1, p1, -0x3e8

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    add-int/lit16 v2, p1, -0x3e8

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v2

    if-ltz v2, :cond_1

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/sec/clipboard/data/file/FileManager;

    return-object v3

    :cond_1
    const/16 v3, 0xc9

    if-lt p1, v3, :cond_2

    const/16 v3, 0x1f4

    if-gt p1, v3, :cond_2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/clipboard/secontainer/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v5, Ljava/io/File;

    const-string v6, "clips.info"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p1, v6}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    move-object v0, v4

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createUserDBAndConnect, third party container, cat:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/clipboard/secontainer/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    return-object v0

    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/clipboard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 v5, p1, -0x3e8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v5, Ljava/io/File;

    const-string v6, "clips.info"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p1, v6}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    move-object v0, v4

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->SUPPORT_KNOX:Z

    if-nez v4, :cond_3

    add-int/lit16 v4, p1, -0x3e8

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/clipboard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 v5, p1, -0x3e8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit16 v5, p1, -0x3e8

    invoke-static {v4, v5}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    :cond_3
    if-eqz p1, :cond_4

    add-int/lit16 v4, p1, -0x3e8

    invoke-virtual {p0, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/clipboard"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit16 v5, p1, -0x3e8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit16 v5, p1, -0x3e8

    invoke-static {v4, v5}, Landroid/os/SELinux;->restorecon_with_category(Ljava/lang/String;I)Z

    :cond_4
    return-object v0

    :cond_5
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v3

    if-ltz v3, :cond_6

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    return-object v2

    :cond_6
    new-instance v4, Ljava/io/File;

    const-string v5, "/data/clipboard"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v6, Ljava/io/File;

    const-string v7, "clips.info"

    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v2, v7}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    move-object v0, v5

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getAllSEContainerCategory()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "content://com.sec.knox.provider/SeamsPolicy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getAllSEContainerCategory"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1
    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllSEContainerCategory, cat result from query:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "getAllSEContainerCategory"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "getAllSEContainerCategory"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    nop

    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string v4, "getAllSEContainerCategory success, return res"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catchall_0
    move-exception v3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_2
    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string v4, "getAllSEContainerCategory query error, return -1"

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method private getFileManagerIndexById(I)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v1

    const/16 v2, 0x3e8

    add-int/2addr v2, p1

    if-ne v1, v2, :cond_0

    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findFileManagerIndex. find DB... id :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", i :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find index of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0
.end method

.method private getUserId()I
    .locals 4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUserId is BBC or DualAppp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private initializeClipboardDataMgr(I)V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/clipboard"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClipboardDefine.SUPPORT_KNOX :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardConstants;->SUPPORT_KNOX:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "clips.info"

    new-instance v3, Landroid/sec/clipboard/data/file/FileManager;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0, v5}, Landroid/sec/clipboard/data/file/FileManager;-><init>(Ljava/io/File;ILandroid/content/Context;)V

    iput-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    nop

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    sget-object v5, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add multi user db...id :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit16 v5, v4, 0x3e8

    sget-object v6, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "RS:add multi user db...cat :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_1

    :cond_0
    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v4}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "secondary user usecase :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit16 v5, v4, 0x3e8

    invoke-direct {p0, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getAllSEContainerCategory()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_2

    :cond_3
    return-void
.end method

.method private isPersonaManagerEnabled()Z
    .locals 3

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "personaManager is null!"

    invoke-static {v0, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    :cond_1
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public declared-synchronized addData(Lcom/samsung/android/content/clipboard/data/SemClipData;I)Z
    .locals 9

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/content/clipboard/data/SemTextClipData;

    invoke-virtual {v2}, Lcom/samsung/android/content/clipboard/data/SemTextClipData;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit p0

    return v4

    :cond_0
    const/4 v2, -0x1

    :try_start_1
    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mMaxSize:I

    if-lt v1, v3, :cond_4

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_3

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v5, v3}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardConstants;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[addData] deleteData.isProtected() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v5}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v6

    if-nez v6, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-ltz v2, :cond_9

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    iput-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    invoke-virtual {p0, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->removeData(I)Z

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v4, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v3

    move v0, v3

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v5

    if-nez v5, :cond_5

    add-int/lit16 v3, p2, 0x3e8

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v5

    if-nez v5, :cond_6

    add-int/lit16 v3, p2, 0x3e8

    goto :goto_2

    :cond_6
    invoke-static {p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    move v3, p2

    :goto_2
    invoke-virtual {p0, v3}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_8

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v6

    if-eq p2, v6, :cond_8

    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v6, v4, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v4

    move v0, v4

    goto :goto_3

    :cond_8
    iget-object v6, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v6, v4, p1}, Landroid/sec/clipboard/data/file/FileManager;->add(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v4

    :cond_9
    :goto_3
    goto :goto_4

    :catch_0
    move-exception v2

    const/4 v0, 0x0

    :goto_4
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mBinder:Landroid/sec/clipboard/data/IClipboardDataList$Stub;

    return-object v0
.end method

.method public findFileManagerIndex(I)I
    .locals 5

    sget-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findFileManagerIndex. id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v2

    if-ne v2, p1, :cond_0

    sget-object v2, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex. find DB... id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", i :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not find file manager. id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    return v1
.end method

.method public getClipByID(Ljava/lang/String;)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/file/FileManager;->getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x0

    nop

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v3

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v4, p1}, Landroid/sec/clipboard/data/file/FileManager;->getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v5

    return-object v5

    :cond_2
    sget-object v5, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "not allow! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    return-object v1

    :cond_5
    const/4 v1, 0x0

    return-object v1
.end method

.method public getCurrentListOwnerUid()I
    .locals 1

    iget v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    return v0
.end method

.method public getFileManagerList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/sec/clipboard/data/file/FileManager;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 12

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p1}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    goto/16 :goto_2

    :cond_0
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v0

    const/4 v7, 0x0

    move v8, v7

    move v7, v6

    move v6, v5

    move-object v5, v4

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_4

    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v6

    if-gez v6, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v9, v3}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int v9, v7, v8

    if-ge p1, v9, :cond_2

    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "return : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v10, p1, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v3, p1, v7

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemClipData;

    return-object v3

    :cond_2
    add-int/2addr v7, v8

    sget-object v9, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "next : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    sget-object v9, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "not allow! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "overflow! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_5
    :goto_2
    return-object v1
.end method

.method public getPersonaId()I
    .locals 2

    const/4 v0, 0x0

    sget-boolean v1, Landroid/sec/clipboard/data/ClipboardConstants;->HAS_KNOX_FEATURE:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v1}, Lcom/samsung/android/knox/SemPersonaManager;->getFocusedKnoxId()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getUserId()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getUserId()I

    move-result v0

    :cond_1
    :goto_0
    return v0
.end method

.method public getSharedItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v1}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v3

    move-object v2, v3

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/content/clipboard/data/SemClipData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getTopItem(I)Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 12

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v4}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v1

    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "in own condtn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-wide v8, v1

    move-object v1, v0

    move v0, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v2

    if-gez v2, :cond_2

    nop

    :cond_1
    :goto_1
    move v7, v2

    goto :goto_2

    :cond_2
    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v7, v4}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClips(I)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    check-cast v6, Lcom/samsung/android/content/clipboard/data/SemClipData;

    sget-object v7, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "knoxdata"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v10

    cmp-long v7, v10, v8

    if-lez v7, :cond_1

    invoke-virtual {v6}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getTimestamp()J

    move-result-wide v8

    move-object v1, v6

    sget-object v7, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "in knox condtn"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    move-object v0, v1

    move-wide v1, v8

    :cond_5
    sget-object v4, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before return latestdatal"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getdeletedItem()Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    return-object v0
.end method

.method public isManagedProfile(I)Z
    .locals 9

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    move-wide v0, v5

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    move v2, v6

    sget-object v6, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isManagedProfile for userId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v5

    goto :goto_2

    :catch_0
    move-exception v5

    :try_start_1
    sget-object v6, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "isManagedProfile() Exception!"

    invoke-static {v6, v7}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isManagedProfile for userId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :goto_2
    cmp-long v3, v0, v3

    if-eqz v3, :cond_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_1
    throw v5
.end method

.method public loadSEContainerDB(I)V
    .locals 4

    sget-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loadSEContainerDB, category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", previous category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v0

    if-eq v0, p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->refresh()V

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadSEContainerDB, findFileManagerIndex returned -1, create db, category :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    :cond_1
    :goto_0
    return-void
.end method

.method public multiUserMode(ILjava/lang/String;)V
    .locals 5

    sget-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "multiUserMode_Called mode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentListIndex :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit16 v0, p1, 0x3e8

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit16 v0, p1, 0x3e8

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit16 v0, p1, 0x3e8

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    if-eqz p2, :cond_a

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    const-string v1, "ADDED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    goto/16 :goto_2

    :cond_3
    const-string v1, "REMOVED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v1

    if-eq v1, v2, :cond_5

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager;->removeClipboardDB()V

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v0}, Landroid/sec/clipboard/data/file/FileManager;->resetOwnerClips(I)V

    :cond_4
    goto :goto_1

    :cond_5
    sget-object v2, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findFileManagerIndex return an invalid index. id :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", return value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto/16 :goto_2

    :cond_6
    const-string v1, "SWITCHED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    if-ne v0, v1, :cond_7

    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USER_SWITCHED, but same user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", category: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentListIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v1

    iput v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    iget v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    iget v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RS, multiUserMode, findFileManagerIndex returned index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", now getting relevant datalist with handleid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findFileManagerIndex return an invalid index. id :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", return value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    move-result-object v1

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    goto :goto_2

    :cond_9
    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "multiUserMode_Called wrong mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    return-void
.end method

.method public reAddForKnox(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 6

    sget-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reAddForKnox"

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/data/file/FileManager;->get(I)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v3

    invoke-virtual {v0}, Lcom/samsung/android/content/clipboard/data/SemClipData;->getClipType()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/data/file/FileManager;->reAddForKnox(I)V

    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public refresh()V
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->refresh()V

    :cond_0
    return-void
.end method

.method public removeAll()Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v2, :cond_6

    iget-object v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v5, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-lez v6, :cond_6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, v1

    move v1, v4

    :goto_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v1, v10, :cond_5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v10

    move v7, v10

    if-gez v7, :cond_1

    goto :goto_3

    :cond_1
    iget-object v10, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v10, v4}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClipsFromKnox(I)Ljava/util/ArrayList;

    move-result-object v10

    move-object v8, v10

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v6, v10

    move v10, v9

    move v9, v4

    :goto_2
    if-ge v9, v6, :cond_3

    :try_start_2
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v11}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/android/content/clipboard/data/SemClipData;->isProtected()Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v11, v4}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v10, 0x1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    move v9, v10

    goto :goto_5

    :cond_3
    move v9, v10

    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v1, v9

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_5

    :cond_6
    :goto_4
    :try_start_3
    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    iget-boolean v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    xor-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/sec/clipboard/data/file/FileManager;->removeAll(ZI)Z

    move-result v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move v0, v3

    goto :goto_6

    :catch_2
    move-exception v3

    move v9, v1

    move-object v1, v3

    :goto_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v9

    :goto_6
    if-eqz v2, :cond_7

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method public removeClipByID(Ljava/lang/String;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v3

    iget v5, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListOwnerUid:I

    if-eq v3, v5, :cond_1

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/file/FileManager;->getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v3

    move-object v1, v3

    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeClipById - remove SharedData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    return v4

    :cond_0
    return v2

    :cond_1
    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/file/FileManager;->removeDataByID(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    if-ne v0, v4, :cond_2

    return v4

    :cond_2
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-lez v5, :cond_7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v1

    move v1, v2

    :goto_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_6

    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {p0, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v8

    move v5, v8

    if-gez v5, :cond_3

    goto :goto_1

    :cond_3
    iget-object v8, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/sec/clipboard/data/file/FileManager;

    move-object v6, v8

    invoke-virtual {v6, p1}, Landroid/sec/clipboard/data/file/FileManager;->getDataByID(Ljava/lang/String;)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v8

    move-object v7, v8

    if-eqz v7, :cond_5

    invoke-virtual {v7, v2}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    return v4

    :cond_4
    sget-object v8, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "not allow! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    move-object v1, v7

    goto :goto_2

    :catch_0
    move-exception v3

    move-object v1, v7

    goto :goto_3

    :cond_7
    :goto_2
    goto :goto_4

    :catch_1
    move-exception v3

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return v2
.end method

.method public removeData(I)Z
    .locals 12

    sget-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "inside removeData method"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge p1, v1, :cond_1

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    iget-boolean v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mIsShared:Z

    xor-int/2addr v4, v2

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/sec/clipboard/data/file/FileManager;->remove(ZII)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v3

    if-eqz v3, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    :cond_1
    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v3, v0}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v1

    move v8, v7

    move v7, v5

    move-object v5, v4

    move v4, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_4

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v9

    move v7, v9

    if-gez v7, :cond_2

    goto :goto_1

    :cond_2
    iget-object v9, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v9, v0}, Landroid/sec/clipboard/data/file/FileManager;->getNonDeletedClipsFromKnox(I)Ljava/util/ArrayList;

    move-result-object v9

    move-object v5, v9

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v4, v9

    add-int v9, v8, v4

    if-ge p1, v9, :cond_3

    sget-object v9, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "return : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int v11, p1, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v9, p1, v8

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/sec/clipboard/data/file/WrapFileClipData;

    invoke-virtual {v9, v0}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    return v2

    :cond_3
    add-int/2addr v8, v4

    sget-object v9, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "next : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_4
    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v0
.end method

.method public replaceWithTargetForUser(Landroid/sec/clipboard/data/ClipboardDataMgr;I)V
    .locals 7

    sget-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "replaceWithTargetForUser : userId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit16 v0, p2, 0x3e8

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isManagedProfile(I)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit16 v0, p2, 0x3e8

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_0
    invoke-virtual {p0, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-eqz p1, :cond_2

    sget-object v3, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "replaceWithTargetForUser : targetId - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v3

    if-eq v3, v2, :cond_2

    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/sec/clipboard/data/file/FileManager;

    sget-object v4, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    iput v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mCurrentListIndex:I

    :cond_2
    return-void
.end method

.method public secontainerClipboardMode(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "com.samsung.intent.action.SECONTAINER_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->findFileManagerIndex(I)I

    move-result v0

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->getHandleId()I

    move-result v1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    iput-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->removeClipboardDB()V

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v2, p2}, Landroid/sec/clipboard/data/file/FileManager;->resetOwnerClips(I)V

    :cond_1
    goto :goto_0

    :cond_2
    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findFileManagerIndex return an invalid index. id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", return value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_3
    const-string v0, "com.samsung.intent.action.SECONTAINER_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action secontainer added for category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", creating clipboard db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/sec/clipboard/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Landroid/sec/clipboard/data/ClipboardDataMgr;->createUserDBAndConnect(I)Landroid/sec/clipboard/data/file/FileManager;

    :cond_4
    :goto_1
    return-void
.end method

.method public setdeletedItem(Lcom/samsung/android/content/clipboard/data/SemClipData;)V
    .locals 0

    iput-object p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->tempDeleteItem:Lcom/samsung/android/content/clipboard/data/SemClipData;

    return-void
.end method

.method public sharedSize()I
    .locals 3

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v0

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingPersonalDataToKnox(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "not allowed sharing personal data to knox"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1, v0}, Landroid/sec/clipboard/data/file/FileManager;->sharedSize(I)I

    move-result v1

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public size()I
    .locals 10

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->isPersonaManagerEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getPersonaId()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mPersonaManager:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v6, v0

    move v0, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mKnoxPolicy:Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v4

    sget-object v7, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "policy is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getFileManagerIndexById(I)I

    move-result v5

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v7, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v2}, Landroid/sec/clipboard/data/file/FileManager;->sharedSize(I)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_1

    :cond_1
    sget-object v7, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data list is less than "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/sec/clipboard/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v6

    :cond_4
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v1

    add-int/2addr v1, v0

    return v1

    :cond_5
    return v0
.end method

.method public updateData(ILcom/samsung/android/content/clipboard/data/SemClipData;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManager:Landroid/sec/clipboard/data/file/FileManager;

    invoke-virtual {v1, p1, p2}, Landroid/sec/clipboard/data/file/FileManager;->set(ILcom/samsung/android/content/clipboard/data/SemClipData;)Lcom/samsung/android/content/clipboard/data/SemClipData;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    sget-object v1, Landroid/sec/clipboard/data/ClipboardDataMgr;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "updateData-ClipboardData is null"

    invoke-static {v1, v2}, Landroid/sec/clipboard/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_0
    nop

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public updateFotaClips(ILjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr;->mFileManagerList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/file/FileManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/sec/clipboard/data/file/FileManager;->size()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, ""

    nop

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/sec/clipboard/data/file/FileManager;->getWrap(I)Landroid/sec/clipboard/data/file/WrapFileClipData;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/sec/clipboard/data/file/WrapFileClipData;->getDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3, p1}, Landroid/sec/clipboard/data/file/WrapFileClipData;->addDeletedUserList(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
