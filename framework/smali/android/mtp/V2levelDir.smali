.class Landroid/mtp/V2levelDir;
.super Landroid/mtp/VDir;
.source "VStorage.java"


# static fields
.field private static final OTHER_PATH:Ljava/lang/String;


# instance fields
.field private defaultVDir:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/mtp/VDir;",
            ">;"
        }
    .end annotation
.end field

.field private dirOther:Landroid/mtp/VDir;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/backups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/mtp/V2levelDir;->OTHER_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/mtp/VStorage;)V
    .locals 11

    move-object v10, p0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Landroid/mtp/VDir;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/mtp/VStorage;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v10, Landroid/mtp/V2levelDir;->defaultVDir:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, v10, Landroid/mtp/V2levelDir;->dirOther:Landroid/mtp/VDir;

    return-void
.end method

.method private createOtherDir()Landroid/mtp/VDir;
    .locals 8

    iget-object v0, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    const-string v1, "VTYPE_OTHER"

    invoke-virtual {v0, v1}, Landroid/mtp/VStorage;->getRString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/mtp/VDir;

    iget-object v2, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    invoke-virtual {v2}, Landroid/mtp/VStorage;->getNewID()I

    move-result v3

    iget v4, p0, Landroid/mtp/V2levelDir;->mId:I

    sget-object v5, Landroid/mtp/V2levelDir;->OTHER_PATH:Ljava/lang/String;

    iget-object v7, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    move-object v2, v1

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Landroid/mtp/VDir;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/mtp/VStorage;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Landroid/mtp/V2levelDir;->OTHER_PATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    invoke-virtual {p0, v1}, Landroid/mtp/V2levelDir;->addDir(Landroid/mtp/VDir;)V

    const-string v3, "VStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "V2levelDir create others "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/mtp/VDir;->mId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public addDefaultDir(Landroid/mtp/VDir;)V
    .locals 1

    iget-object v0, p0, Landroid/mtp/V2levelDir;->defaultVDir:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFile(Ljava/lang/String;)V
    .locals 14

    iget-boolean v0, p0, Landroid/mtp/V2levelDir;->enumerated:Z

    if-nez v0, :cond_0

    const-string v0, "VStorage"

    const-string v1, "V2 directory is not enumerated yet"

    invoke-static {v0, v1}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v11

    iget-object v1, p0, Landroid/mtp/V2levelDir;->defaultVDir:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroid/mtp/V2levelDir;->defaultVDir:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/VDir;

    iget-object v4, v3, Landroid/mtp/VDir;->mPath:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, v3, Landroid/mtp/VDir;->mExternal:Z

    if-ne v4, v2, :cond_3

    iget-object v4, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    sget-object v4, Landroid/mtp/VStorage;->INTERNAL_SD_PATH:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Landroid/mtp/VDir;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const-string v4, "VStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "V2levelDir addFile found default dir"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/mtp/VDir;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ext = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Landroid/mtp/VDir;->mExternal:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Landroid/mtp/V2levelDir;->mSubdir:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, v11}, Landroid/mtp/VDir;->updatePath(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/mtp/V2levelDir;->addDir(Landroid/mtp/VDir;)V

    iget-object v1, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    iget v2, v3, Landroid/mtp/VDir;->mId:I

    invoke-virtual {v1, v2, v3}, Landroid/mtp/VStorage;->saveDir(ILandroid/mtp/VDir;)V

    iget-object v1, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    iget-object v2, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    invoke-virtual {v2}, Landroid/mtp/VStorage;->getID()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Landroid/mtp/VStorage;->sendVObjAdd(ILandroid/mtp/VObject;)V

    const-string v1, "VStorage"

    const-string v2, "create default dir"

    invoke-static {v1, v2}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v4, v3, Landroid/mtp/VDir;->mPath:Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3, p1}, Landroid/mtp/VDir;->addFile(Ljava/lang/String;)V

    const-string v1, "VStorage"

    const-string v2, "V2levelDir default dir add file"

    invoke-static {v1, v2}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Landroid/mtp/V2levelDir;->dirOther:Landroid/mtp/VDir;

    if-nez v1, :cond_5

    invoke-direct {p0}, Landroid/mtp/V2levelDir;->createOtherDir()Landroid/mtp/VDir;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/V2levelDir;->dirOther:Landroid/mtp/VDir;

    iget-object v1, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    iget-object v3, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    invoke-virtual {v3}, Landroid/mtp/VStorage;->getID()I

    move-result v3

    iget-object v4, p0, Landroid/mtp/V2levelDir;->dirOther:Landroid/mtp/VDir;

    invoke-virtual {v1, v3, v4}, Landroid/mtp/VStorage;->sendVObjAdd(ILandroid/mtp/VObject;)V

    :cond_5
    iget-object v1, p0, Landroid/mtp/V2levelDir;->dirOther:Landroid/mtp/VDir;

    invoke-virtual {v1, v11}, Landroid/mtp/VDir;->getDir(Ljava/lang/String;)Landroid/mtp/VDir;

    move-result-object v12

    if-eqz v12, :cond_6

    const-string v1, "VStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V2levelDir other dir="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Landroid/mtp/VDir;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "add file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Landroid/mtp/VDir;->addFile(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v13, Landroid/mtp/V1levelDir;

    iget-object v1, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    invoke-virtual {v1}, Landroid/mtp/VStorage;->getNewID()I

    move-result v3

    iget-object v1, p0, Landroid/mtp/V2levelDir;->dirOther:Landroid/mtp/VDir;

    iget v4, v1, Landroid/mtp/VDir;->mId:I

    iget v5, p0, Landroid/mtp/V2levelDir;->mMediaType:I

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Landroid/mtp/V2levelDir;->mRegex:[Ljava/lang/String;

    iget-object v9, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    iget-object v1, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    sget-object v1, Landroid/mtp/VStorage;->INTERNAL_SD_PATH:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v10, v1, 0x1

    move-object v1, v13

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v11

    move-object v7, v11

    invoke-direct/range {v1 .. v10}, Landroid/mtp/V1levelDir;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/mtp/VStorage;Z)V

    iget-object v2, p0, Landroid/mtp/V2levelDir;->dirOther:Landroid/mtp/VDir;

    invoke-virtual {v2, v1}, Landroid/mtp/VDir;->addDir(Landroid/mtp/VDir;)V

    iget-object v2, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    iget-object v3, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    invoke-virtual {v3}, Landroid/mtp/VStorage;->getID()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/mtp/VStorage;->sendVObjAdd(ILandroid/mtp/VObject;)V

    const-string v2, "VStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V2levelDir other add dir="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/mtp/VDir;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/mtp/VDir;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    goto :goto_2

    :cond_7
    invoke-virtual {p0, v11}, Landroid/mtp/V2levelDir;->getDir(Ljava/lang/String;)Landroid/mtp/VDir;

    move-result-object v12

    if-eqz v12, :cond_8

    const-string v1, "VStorage"

    const-string v2, "V2levelDir add file"

    invoke-static {v1, v2}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, p1}, Landroid/mtp/VDir;->addFile(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    new-instance v13, Landroid/mtp/V1levelDir;

    iget-object v1, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    invoke-virtual {v1}, Landroid/mtp/VStorage;->getNewID()I

    move-result v3

    iget v4, p0, Landroid/mtp/V2levelDir;->mId:I

    iget v5, p0, Landroid/mtp/V2levelDir;->mMediaType:I

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Landroid/mtp/V2levelDir;->mRegex:[Ljava/lang/String;

    iget-object v9, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    iget-object v1, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    sget-object v1, Landroid/mtp/VStorage;->INTERNAL_SD_PATH:Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v10, v1, 0x1

    move-object v1, v13

    move v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v11

    move-object v7, v11

    invoke-direct/range {v1 .. v10}, Landroid/mtp/V1levelDir;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/mtp/VStorage;Z)V

    invoke-virtual {p0, v1}, Landroid/mtp/V2levelDir;->addDir(Landroid/mtp/VDir;)V

    iget-object v2, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    iget-object v3, p0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    invoke-virtual {v3}, Landroid/mtp/VStorage;->getID()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/mtp/VStorage;->sendVObjAdd(ILandroid/mtp/VObject;)V

    const-string v2, "VStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "V2levelDir add dir="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/mtp/VDir;->mPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/mtp/VDir;->mId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public getList()[Landroid/mtp/VObject;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "VStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "V2levelDir getListDB type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/mtp/V2levelDir;->mMediaType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/mtp/V2levelDir;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/mtp/V2levelDir;->mSubdir:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-super/range {p0 .. p0}, Landroid/mtp/VDir;->getListFromDB()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v3, v0, Landroid/mtp/V2levelDir;->defaultVDir:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_5

    iget-object v3, v0, Landroid/mtp/V2levelDir;->defaultVDir:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/mtp/VDir;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, v5, Landroid/mtp/VDir;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-boolean v8, v5, Landroid/mtp/VDir;->mExternal:Z

    if-ne v8, v4, :cond_3

    iget-object v8, v0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    sget-object v8, Landroid/mtp/VStorage;->INTERNAL_SD_PATH:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v5, Landroid/mtp/VDir;->mConfigPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const-string v8, "VStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "V2levelDir add default dir "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Landroid/mtp/VDir;->mPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v5, Landroid/mtp/VDir;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " ext = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v5, Landroid/mtp/VDir;->mExternal:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Landroid/mtp/VDir;->updatePath(Ljava/lang/String;)V

    iget-object v8, v0, Landroid/mtp/V2levelDir;->mSubdir:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    :cond_3
    goto :goto_2

    :cond_4
    goto :goto_1

    :cond_5
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v0, Landroid/mtp/V2levelDir;->defaultVDir:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct/range {p0 .. p0}, Landroid/mtp/V2levelDir;->createOtherDir()Landroid/mtp/VDir;

    move-result-object v3

    iput-object v3, v0, Landroid/mtp/V2levelDir;->dirOther:Landroid/mtp/VDir;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v17, Landroid/mtp/V1levelDir;

    iget-object v7, v0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    invoke-virtual {v7}, Landroid/mtp/VStorage;->getNewID()I

    move-result v8

    iget-object v7, v0, Landroid/mtp/V2levelDir;->dirOther:Landroid/mtp/VDir;

    iget v9, v7, Landroid/mtp/VDir;->mId:I

    iget v10, v0, Landroid/mtp/V2levelDir;->mMediaType:I

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Landroid/mtp/V2levelDir;->mRegex:[Ljava/lang/String;

    iget-object v15, v0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    iget-object v7, v0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    sget-object v7, Landroid/mtp/VStorage;->INTERNAL_SD_PATH:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    xor-int/lit8 v16, v7, 0x1

    move-object/from16 v7, v17

    invoke-direct/range {v7 .. v16}, Landroid/mtp/V1levelDir;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/mtp/VStorage;Z)V

    iget-object v8, v0, Landroid/mtp/V2levelDir;->dirOther:Landroid/mtp/VDir;

    invoke-virtual {v8, v7}, Landroid/mtp/VDir;->addDir(Landroid/mtp/VDir;)V

    const-string v8, "VStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "V2levelDir others add dir "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Landroid/mtp/VDir;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v17, Landroid/mtp/V1levelDir;

    iget-object v7, v0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    invoke-virtual {v7}, Landroid/mtp/VStorage;->getNewID()I

    move-result v8

    iget v9, v0, Landroid/mtp/V2levelDir;->mId:I

    iget v10, v0, Landroid/mtp/V2levelDir;->mMediaType:I

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Landroid/mtp/V2levelDir;->mRegex:[Ljava/lang/String;

    iget-object v15, v0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    iget-object v7, v0, Landroid/mtp/V2levelDir;->mStorage:Landroid/mtp/VStorage;

    sget-object v7, Landroid/mtp/VStorage;->INTERNAL_SD_PATH:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    xor-int/lit8 v16, v7, 0x1

    move-object/from16 v7, v17

    invoke-direct/range {v7 .. v16}, Landroid/mtp/V1levelDir;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/mtp/VStorage;Z)V

    invoke-virtual {v0, v7}, Landroid/mtp/V2levelDir;->addDir(Landroid/mtp/VDir;)V

    const-string v8, "VStorage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "V2levelDir add dir "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Landroid/mtp/VDir;->mId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    iput-boolean v4, v0, Landroid/mtp/V2levelDir;->enumerated:Z

    :cond_8
    invoke-super/range {p0 .. p0}, Landroid/mtp/VDir;->getList()[Landroid/mtp/VObject;

    move-result-object v1

    return-object v1
.end method
