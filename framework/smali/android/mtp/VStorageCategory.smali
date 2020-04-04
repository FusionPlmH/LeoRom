.class Landroid/mtp/VStorageCategory;
.super Landroid/mtp/VStorage;
.source "VStorage.java"


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/mtp/VDir;",
            ">;"
        }
    .end annotation
.end field

.field private mMdFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/mtp/VObject;",
            ">;"
        }
    .end annotation
.end field

.field private mStartListenTime:J

.field private mVDirMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/VDir;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 26

    move-object/from16 v11, p0

    const/4 v0, 0x2

    const v1, 0x10000001

    move-object/from16 v12, p1

    invoke-direct {v11, v12, v1, v0}, Landroid/mtp/VStorage;-><init>(Landroid/content/Context;II)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v11, Landroid/mtp/VStorageCategory;->mCategories:Ljava/util/List;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v11, Landroid/mtp/VStorageCategory;->mVDirMap:Ljava/util/Map;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v11, Landroid/mtp/VStorageCategory;->mMdFileMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v11, Landroid/mtp/VStorageCategory;->mStartListenTime:J

    const-string v1, "VStorage"

    const-string v2, "VStorage of category created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/mtp/VStorageCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "mediacategories"

    const-string/jumbo v3, "xml"

    invoke-virtual/range {p0 .. p0}, Landroid/mtp/VStorageCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v13, v1

    invoke-virtual/range {p0 .. p0}, Landroid/mtp/VStorageCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    move-object v14, v1

    const/4 v1, 0x0

    if-nez v14, :cond_0

    const-string v0, "VStorage"

    const-string v2, "category xml is empty"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v15, v1

    :goto_0
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    move/from16 v16, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_12

    packed-switch v16, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v11, Landroid/mtp/VStorageCategory;->mCategories:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :pswitch_1
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "categories"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v14, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/mtp/VStorageCategory;->getRString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Landroid/mtp/VStorageCategory;->mName:Ljava/lang/String;

    goto/16 :goto_9

    :cond_1
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "category"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string/jumbo v1, "null"

    const-string/jumbo v4, "null"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v17, v1

    move v1, v3

    move-object v10, v4

    move-object/from16 v18, v5

    move/from16 v19, v6

    move v9, v7

    :goto_1
    const/4 v4, 0x5

    if-ge v1, v4, :cond_7

    invoke-interface {v14, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v14, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/mtp/VStorageCategory;->getRString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v17, v5

    goto :goto_2

    :cond_2
    const-string/jumbo v5, "mediatype"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v14, v1, v3}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v5

    move/from16 v19, v5

    goto :goto_2

    :cond_3
    const-string/jumbo v5, "level"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v14, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(II)I

    move-result v5

    move v9, v5

    goto :goto_2

    :cond_4
    const-string/jumbo v5, "path"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v14, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    goto :goto_2

    :cond_5
    const-string v5, "filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v14, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v18, v6

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    :cond_8
    if-ne v9, v0, :cond_9

    new-instance v20, Landroid/mtp/V2levelDir;

    invoke-virtual/range {p0 .. p0}, Landroid/mtp/VStorageCategory;->getNewID()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v1, v20

    move/from16 v4, v19

    move-object v5, v10

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v21, v8

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Landroid/mtp/V2levelDir;-><init>(IIILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/mtp/VStorage;)V

    move-object/from16 v1, v20

    :goto_3
    move-object v15, v1

    goto :goto_4

    :cond_9
    move-object/from16 v21, v8

    new-instance v20, Landroid/mtp/V1levelDir;

    invoke-virtual/range {p0 .. p0}, Landroid/mtp/VStorageCategory;->getNewID()I

    move-result v2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v22, 0x0

    move-object/from16 v1, v20

    move/from16 v4, v19

    move-object v5, v10

    move-object/from16 v6, v17

    move-object/from16 v8, v18

    move/from16 v23, v9

    move-object v9, v11

    move-object/from16 v24, v10

    move/from16 v10, v22

    invoke-direct/range {v1 .. v10}, Landroid/mtp/V1levelDir;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/mtp/VStorage;Z)V

    move-object/from16 v1, v20

    goto :goto_3

    :goto_4
    goto/16 :goto_0

    :cond_a
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string/jumbo v1, "null"

    const-string/jumbo v2, "null"

    const-string/jumbo v4, "null"

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object v10, v4

    :goto_5
    move v1, v3

    const/4 v2, 0x3

    if-ge v1, v2, :cond_10

    invoke-interface {v14, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v14, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "INT_DCIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CAMERA"

    invoke-virtual {v11, v5}, Landroid/mtp/VStorageCategory;->getRString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "INT_MEM"

    invoke-virtual {v11, v5}, Landroid/mtp/VStorageCategory;->getRString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_6
    move-object/from16 v17, v4

    goto :goto_7

    :cond_b
    const-string v4, "EXT_DCIM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CAMERA"

    invoke-virtual {v11, v5}, Landroid/mtp/VStorageCategory;->getRString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "EXT_MEM"

    invoke-virtual {v11, v5}, Landroid/mtp/VStorageCategory;->getRString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_c
    invoke-virtual {v11, v3}, Landroid/mtp/VStorageCategory;->getRString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object/from16 v17, v3

    :goto_7
    goto :goto_8

    :cond_d
    const-string/jumbo v3, "path"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v14, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v3

    goto :goto_8

    :cond_e
    const-string/jumbo v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v14, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v10, v2

    :cond_f
    :goto_8
    add-int/lit8 v3, v1, 0x1

    goto/16 :goto_5

    :cond_10
    new-instance v9, Landroid/mtp/V1levelDir;

    invoke-virtual/range {p0 .. p0}, Landroid/mtp/VStorageCategory;->getNewID()I

    move-result v2

    iget v3, v15, Landroid/mtp/VDir;->mId:I

    iget v4, v15, Landroid/mtp/VDir;->mMediaType:I

    iget-object v8, v15, Landroid/mtp/VDir;->mRegex:[Ljava/lang/String;

    const-string v1, "ext"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-object v1, v9

    move-object/from16 v5, v18

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object v0, v9

    move-object v9, v11

    move-object/from16 v20, v10

    move/from16 v10, v19

    invoke-direct/range {v1 .. v10}, Landroid/mtp/V1levelDir;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/mtp/VStorage;Z)V

    invoke-virtual {v15, v0}, Landroid/mtp/VDir;->addDefaultDir(Landroid/mtp/VDir;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :cond_11
    :goto_9
    const/4 v0, 0x2

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "category xml IO excpetion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :catch_1
    move-exception v0

    const-string v1, "VStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "category xml parse error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    nop

    :goto_a
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iget-wide v1, v11, Landroid/mtp/VStorageCategory;->mTotalSize:J

    invoke-virtual {v0}, Landroid/os/StatFs;->getTotalBytes()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v11, Landroid/mtp/VStorageCategory;->mTotalSize:J

    iget-wide v1, v11, Landroid/mtp/VStorageCategory;->mFreeSize:J

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, v11, Landroid/mtp/VStorageCategory;->mFreeSize:J

    const-string v1, "VStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Total size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v11, Landroid/mtp/VStorageCategory;->mTotalSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " Free size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v11, Landroid/mtp/VStorageCategory;->mFreeSize:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$000(Landroid/mtp/VStorageCategory;)V
    .locals 0

    invoke-direct {p0}, Landroid/mtp/VStorageCategory;->scanAddedFile()V

    return-void
.end method

.method static synthetic access$100(Landroid/mtp/VStorageCategory;)V
    .locals 0

    invoke-direct {p0}, Landroid/mtp/VStorageCategory;->scanDeletedFile()V

    return-void
.end method

.method private scanAddedFile()V
    .locals 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "_data"

    const-string v4, "date_added"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v7

    const-string v3, "external"

    invoke-static {v3}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Landroid/mtp/VStorageCategory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "date_added >= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Landroid/mtp/VStorageCategory;->mStartListenTime:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v3

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const-string v6, "VStorage"

    const-string v8, "Check dbchange MediaStore objects is empty."

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_1
    :try_start_0
    const-string v6, "_data"

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "VStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "from db is not exsit, suspect db error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/mtp/VStorageCategory;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_1

    goto :goto_1

    :catch_0
    move-exception v6

    const-string v8, "VStorage"

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "VStorage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "scaned file "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " is added."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, Landroid/mtp/VStorageCategory;->addFile(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iput-wide v0, p0, Landroid/mtp/VStorageCategory;->mStartListenTime:J

    return-void
.end method

.method private scanDeletedFile()V
    .locals 8

    iget-object v0, p0, Landroid/mtp/VStorageCategory;->mMdFileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/mtp/VStorageCategory;->mMdFileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "VStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "scaned file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is removed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/mtp/VStorageCategory;->removeFile(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addFile(Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    nop

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add file is not exsited "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/VStorageCategory;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v2, "VStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VStorageCategory add file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/mtp/VStorageCategory;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/mtp/VStorageCategory;->mMdFileMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "VStorage"

    const-string v3, "VStorageCategory already contain path"

    invoke-static {v2, v3}, Landroid/mtp/VStorageCategory;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    return-void

    :cond_5
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/mtp/VStorageCategory;->mCategories:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/mtp/VDir;

    invoke-virtual {v5, v3}, Landroid/mtp/VDir;->isPathMatch(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v4, "VStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VStorageCategory found match type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/mtp/VDir;->mMediaType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/mtp/VStorageCategory;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Landroid/mtp/VDir;->addFile(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    goto :goto_0

    :cond_7
    :goto_1
    return-void

    :cond_8
    :goto_2
    const-string v2, "VStorage"

    const-string/jumbo v3, "skip hidden file or directory"

    invoke-static {v2, v3}, Landroid/mtp/VStorageCategory;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dbChange()V
    .locals 4

    iget-object v0, p0, Landroid/mtp/VStorageCategory;->mDbChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/mtp/VStorageCategory;->mDbChanged:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Landroid/mtp/VStorageCategory;->mVStorageHandler:Landroid/os/Handler;

    new-instance v1, Landroid/mtp/VStorageCategory$1;

    invoke-direct {v1, p0}, Landroid/mtp/VStorageCategory$1;-><init>(Landroid/mtp/VStorageCategory;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public getList(I)[Landroid/mtp/VObject;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-object v1, p0, Landroid/mtp/VStorageCategory;->mCategories:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/mtp/VStorageCategory;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/mtp/VObject;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/mtp/VStorageCategory;->mCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/mtp/VStorageCategory;->mCategories:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/mtp/VDir;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, p0, Landroid/mtp/VStorageCategory;->mVDirMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/VDir;

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {v1}, Landroid/mtp/VDir;->getList()[Landroid/mtp/VObject;

    move-result-object v0

    return-object v0
.end method

.method public removeFile(Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/mtp/VStorageCategory;->mMdFileMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/VObject;

    if-eqz v0, :cond_2

    const-string v1, "VStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VStorageCategory found remove path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/mtp/VObject;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/VStorageCategory;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/mtp/VStorageCategory;->mMdFileMap:Ljava/util/Map;

    iget-object v2, v0, Landroid/mtp/VObject;->mPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/mtp/VStorageCategory;->getID()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/mtp/VStorageCategory;->sendVObjRemove(ILandroid/mtp/VObject;)V

    const-string v1, "VStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "obj removed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/mtp/VObject;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/VStorageCategory;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Landroid/mtp/VStorageCategory;->mVDirMap:Ljava/util/Map;

    iget v2, v0, Landroid/mtp/VObject;->mPid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/mtp/VDir;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/mtp/VDir;->removeList(Landroid/mtp/VObject;)V

    invoke-virtual {v1}, Landroid/mtp/VDir;->isListEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v1, Landroid/mtp/VDir;->mPid:I

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Landroid/mtp/VDir;->mPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    iput-boolean v3, v1, Landroid/mtp/VDir;->enumerated:Z

    iget-object v3, p0, Landroid/mtp/VStorageCategory;->mVDirMap:Ljava/util/Map;

    iget v4, v1, Landroid/mtp/VDir;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/mtp/VStorageCategory;->getID()I

    move-result v3

    invoke-virtual {p0, v3, v1}, Landroid/mtp/VStorageCategory;->sendVObjRemove(ILandroid/mtp/VObject;)V

    iget-object v3, p0, Landroid/mtp/VStorageCategory;->mVDirMap:Ljava/util/Map;

    iget v4, v1, Landroid/mtp/VDir;->mPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/VDir;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v1}, Landroid/mtp/VDir;->removeDir(Landroid/mtp/VDir;)V

    :cond_1
    goto :goto_0

    :cond_2
    const-string v1, "VStorage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "path "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not enumerated yet."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/mtp/VStorageCategory;->LogPrint(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public saveDir(ILandroid/mtp/VDir;)V
    .locals 2

    iget-object v0, p0, Landroid/mtp/VStorageCategory;->mVDirMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public saveMediaFile(Ljava/lang/String;Landroid/mtp/VObject;)V
    .locals 1

    iget-object v0, p0, Landroid/mtp/VStorageCategory;->mMdFileMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
