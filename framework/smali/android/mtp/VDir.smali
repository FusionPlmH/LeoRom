.class Landroid/mtp/VDir;
.super Landroid/mtp/VObject;
.source "VStorage.java"


# static fields
.field public static final MEDIA_TYPE_AUDIO:I = 0x2

.field public static final MEDIA_TYPE_IMAGE:I = 0x1

.field public static final MEDIA_TYPE_NONE:I = 0x0

.field public static final MEDIA_TYPE_VIDEO:I = 0x3

.field private static mImeTypeMap:Landroid/webkit/MimeTypeMap;


# instance fields
.field public enumerated:Z

.field public mConfigPath:Ljava/lang/String;

.field public mExternal:Z

.field public mMediaType:I

.field public mRegex:[Ljava/lang/String;

.field private mSearchPath:Ljava/lang/String;

.field public mStorage:Landroid/mtp/VStorage;

.field public mSubdir:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/mtp/VDir;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    sput-object v0, Landroid/mtp/VDir;->mImeTypeMap:Landroid/webkit/MimeTypeMap;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/mtp/VStorage;Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Landroid/mtp/VDir;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/mtp/VStorage;)V

    iput p3, p0, Landroid/mtp/VDir;->mMediaType:I

    iput-object p6, p0, Landroid/mtp/VDir;->mSearchPath:Ljava/lang/String;

    iput-object p7, p0, Landroid/mtp/VDir;->mRegex:[Ljava/lang/String;

    iput-boolean p9, p0, Landroid/mtp/VDir;->mExternal:Z

    iput-object p4, p0, Landroid/mtp/VDir;->mConfigPath:Ljava/lang/String;

    iget v0, p0, Landroid/mtp/VDir;->mMediaType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/mtp/VDir;->mUri:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/mtp/VDir;->mMediaType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/mtp/VDir;->mUri:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/mtp/VDir;->mMediaType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Landroid/mtp/VDir;->mUri:Landroid/net/Uri;

    goto :goto_0

    :cond_2
    const-string v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/mtp/VDir;->mUri:Landroid/net/Uri;

    :goto_0
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/mtp/VStorage;)V
    .locals 6

    const/4 v3, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/mtp/VObject;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/mtp/VDir;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/mtp/VDir;->mSearchPath:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/mtp/VDir;->enumerated:Z

    iput-object v0, p0, Landroid/mtp/VDir;->mConfigPath:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/mtp/VDir;->mSubdir:Ljava/util/List;

    iput-object v0, p0, Landroid/mtp/VDir;->mStorage:Landroid/mtp/VStorage;

    iput-object v0, p0, Landroid/mtp/VDir;->mRegex:[Ljava/lang/String;

    iput-object p5, p0, Landroid/mtp/VDir;->mStorage:Landroid/mtp/VStorage;

    iget-object v0, p0, Landroid/mtp/VDir;->mStorage:Landroid/mtp/VStorage;

    iget v1, p0, Landroid/mtp/VDir;->mId:I

    invoke-virtual {v0, v1, p0}, Landroid/mtp/VStorage;->saveDir(ILandroid/mtp/VDir;)V

    return-void
.end method


# virtual methods
.method public addDefaultDir(Landroid/mtp/VDir;)V
    .locals 0

    return-void
.end method

.method public addDir(Landroid/mtp/VDir;)V
    .locals 1

    iget-object v0, p0, Landroid/mtp/VDir;->mSubdir:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFile(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getDir(Ljava/lang/String;)Landroid/mtp/VDir;
    .locals 3

    iget-object v0, p0, Landroid/mtp/VDir;->mSubdir:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/VDir;

    iget-object v2, v1, Landroid/mtp/VDir;->mPath:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getList()[Landroid/mtp/VObject;
    .locals 3

    iget-object v0, p0, Landroid/mtp/VDir;->mSubdir:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/mtp/VDir;->mSubdir:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/mtp/VObject;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/mtp/VDir;->mSubdir:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/mtp/VDir;->mSubdir:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/VDir;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getListFromDB()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "_data"

    const-string v3, "_display_name"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Landroid/mtp/VDir;->mSearchPath:Ljava/lang/String;

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    const-string v0, "_data like ?"

    new-array v4, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Landroid/mtp/VDir;->mSearchPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object v1, v4

    :cond_0
    iget-object v4, p0, Landroid/mtp/VDir;->mStorage:Landroid/mtp/VStorage;

    invoke-virtual {v4}, Landroid/mtp/VStorage;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Landroid/mtp/VDir;->mUri:Landroid/net/Uri;

    const/4 v11, 0x0

    move-object v8, v2

    move-object v9, v0

    move-object v10, v1

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v5, "VStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Get MediaStore objects error. TYPE="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Landroid/mtp/VDir;->mMediaType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " path="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/mtp/VDir;->mPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const-string v5, "VStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MediaStore objects is empty. TYPE="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Landroid/mtp/VDir;->mMediaType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " path="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/mtp/VDir;->mPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_2
    const-string v7, "VStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "read db count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_3
    :try_start_0
    const-string v7, "_data"

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    goto/16 :goto_0

    :cond_4
    const-string v8, "VStorage"

    invoke-static {v8, v7}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "VStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "from db is not exsit, suspect db error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_0

    :cond_6
    iget-object v9, p0, Landroid/mtp/VDir;->mSearchPath:Ljava/lang/String;

    if-eqz v9, :cond_7

    iget-object v9, p0, Landroid/mtp/VDir;->mSearchPath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_0

    :cond_7
    iget v9, p0, Landroid/mtp/VDir;->mMediaType:I

    if-eq v9, v5, :cond_9

    iget v9, p0, Landroid/mtp/VDir;->mMediaType:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_9

    iget v9, p0, Landroid/mtp/VDir;->mMediaType:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_9

    const-string v9, "."

    invoke-virtual {v7, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8

    goto :goto_0

    :cond_8
    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/mtp/VDir;->isPathMatch(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    goto :goto_0

    :cond_9
    const-string v9, "VStorage"

    const-string/jumbo v10, "path added"

    invoke-static {v9, v10}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_3

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v7, "VStorage"

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const-string v5, "VStorage"

    const-string v7, "done"

    invoke-static {v5, v7}, Landroid/mtp/VStorage;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public isListEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPathMatch(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object v1, p0, Landroid/mtp/VDir;->mRegex:[Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Landroid/mtp/VDir;->mImeTypeMap:Landroid/webkit/MimeTypeMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v2, p0, Landroid/mtp/VDir;->mRegex:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    invoke-virtual {v1, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    return v0

    :cond_4
    :goto_1
    return v0
.end method

.method public removeDir(Landroid/mtp/VDir;)V
    .locals 1

    iget-object v0, p0, Landroid/mtp/VDir;->mSubdir:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeList(Landroid/mtp/VObject;)V
    .locals 0

    return-void
.end method

.method public updatePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/mtp/VDir;->mSearchPath:Ljava/lang/String;

    iput-object p1, p0, Landroid/mtp/VDir;->mPath:Ljava/lang/String;

    return-void
.end method
