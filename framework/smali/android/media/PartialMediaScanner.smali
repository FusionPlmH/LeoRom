.class public Landroid/media/PartialMediaScanner;
.super Landroid/media/MediaScanner;
.source "PartialMediaScanner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PartialMediaScanner"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "external"

    invoke-direct {p0, p1, v0}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private prescan(Ljava/lang/String;)V
    .locals 39
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-string v5, "_id>? AND _data>= ? AND _data < ?"

    const/4 v6, 0x3

    new-array v0, v6, [Ljava/lang/String;

    const-string v7, ""

    const/4 v8, 0x0

    aput-object v7, v0, v8

    const/4 v7, 0x1

    aput-object v2, v0, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v0, v10

    move-object v4, v0

    iput-boolean v8, v1, Landroid/media/PartialMediaScanner;->mIsFileCacheFull:Z

    iget-object v0, v1, Landroid/media/PartialMediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, v1, Landroid/media/PartialMediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v9

    const-string v0, "deletedata"

    const-string v11, "false"

    invoke-virtual {v9, v0, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v0, Landroid/media/MediaScanner$MediaBulkDeleter;

    iget-object v11, v1, Landroid/media/PartialMediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V

    move-object v15, v0

    const-wide/high16 v13, -0x8000000000000000L

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT _id, _data, format, date_modified, media_type, _size FROM files INDEXED BY path_index WHERE "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ORDER BY _id limit 3000"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    const-string v0, "content://media/external/sec/media/raw_sql"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v12, v0

    invoke-virtual {v12}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    move-object/from16 v18, v12

    move-object v12, v0

    move v0, v8

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v38, v4

    move-object v6, v15

    goto/16 :goto_d

    :cond_0
    :goto_1
    :try_start_2
    iget-object v6, v1, Landroid/media/PartialMediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v11

    move-object v11, v6

    move-wide/from16 v23, v13

    move-object v13, v10

    move-object/from16 v14, v16

    move-object v6, v15

    move-object v15, v4

    move-object/from16 v16, v17

    move-object/from16 v17, v21

    :try_start_3
    invoke-virtual/range {v11 .. v17}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    move-object v3, v10

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-nez v10, :cond_4

    :goto_2
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-virtual {v6}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    nop

    iput v8, v1, Landroid/media/PartialMediaScanner;->mOriginalCount:I

    iget-object v0, v1, Landroid/media/PartialMediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    iget-object v7, v1, Landroid/media/PartialMediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v27, Landroid/media/PartialMediaScanner;->ID_PROJECTION_COUNT:[Ljava/lang/String;

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v25, v0

    move-object/from16 v26, v7

    invoke-virtual/range {v25 .. v31}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Landroid/media/PartialMediaScanner;->mOriginalCount:I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :cond_4
    move v10, v0

    move-wide/from16 v13, v23

    :goto_3
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    move-wide/from16 v32, v15

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    const/4 v15, 0x2

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v34, v0

    const/4 v15, 0x3

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    const/4 v0, 0x5

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v29

    move-wide/from16 v13, v32

    if-eqz v11, :cond_b

    const-string v0, "/"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_b

    move/from16 v16, v8

    :try_start_6
    sget v0, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v11, v0}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v0
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move/from16 v16, v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v38, v4

    goto/16 :goto_d

    :catch_0
    move-exception v0

    :goto_4
    if-nez v16, :cond_8

    move/from16 v8, v34

    :try_start_7
    invoke-static {v8}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x4

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v35, v17

    move/from16 v15, v35

    if-eq v15, v0, :cond_6

    packed-switch v15, :pswitch_data_0

    iget v0, v1, Landroid/media/PartialMediaScanner;->mDeleteEtcNum:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_5

    :pswitch_0
    :try_start_8
    iget v0, v1, Landroid/media/PartialMediaScanner;->mDeleteVideoNum:I

    add-int/2addr v0, v7

    iput v0, v1, Landroid/media/PartialMediaScanner;->mDeleteVideoNum:I

    goto :goto_6

    :pswitch_1
    iget v0, v1, Landroid/media/PartialMediaScanner;->mDeleteAudioNum:I

    add-int/2addr v0, v7

    iput v0, v1, Landroid/media/PartialMediaScanner;->mDeleteAudioNum:I

    goto :goto_6

    :pswitch_2
    iget v0, v1, Landroid/media/PartialMediaScanner;->mDeleteImageNum:I

    add-int/2addr v0, v7

    iput v0, v1, Landroid/media/PartialMediaScanner;->mDeleteImageNum:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_6

    :goto_5
    add-int/2addr v0, v7

    :try_start_9
    iput v0, v1, Landroid/media/PartialMediaScanner;->mDeleteEtcNum:I

    :goto_6
    move/from16 v36, v8

    iget-wide v7, v1, Landroid/media/PartialMediaScanner;->mPrescanBulkDeleted:J

    const-wide/16 v19, 0x1

    add-long v7, v7, v19

    iput-wide v7, v1, Landroid/media/PartialMediaScanner;->mPrescanBulkDeleted:J

    move-wide/from16 v7, v32

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "/.nomedia"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    move-object v2, v0

    :try_start_a
    sget v0, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v2, v0}, Landroid/system/Os;->access(Ljava/lang/String;I)Z

    move-result v0
    :try_end_a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move/from16 v16, v0

    goto :goto_7

    :catch_1
    move-exception v0

    :goto_7
    if-eqz v16, :cond_5

    :try_start_b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object/from16 v37, v3

    :try_start_c
    const-string/jumbo v3, "volume"
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object/from16 v38, v4

    :try_start_d
    iget-object v4, v1, Landroid/media/PartialMediaScanner;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Landroid/media/PartialMediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v4, "unhide"

    invoke-virtual {v3, v4, v2, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v38, v4

    move-object/from16 v3, v37

    goto/16 :goto_c

    :cond_5
    move-object/from16 v37, v3

    move-object/from16 v38, v4

    goto :goto_8

    :cond_6
    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move/from16 v36, v8

    move-wide/from16 v7, v32

    :goto_8
    goto :goto_a

    :cond_7
    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move/from16 v36, v8

    move-wide/from16 v7, v32

    goto :goto_9

    :cond_8
    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-wide/from16 v7, v32

    move/from16 v36, v34

    :goto_9
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x6d

    if-ne v0, v2, :cond_9

    invoke-virtual {v6, v7, v8}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    goto :goto_a

    :cond_9
    const v0, 0x9c40

    if-ge v10, v0, :cond_a

    new-instance v0, Landroid/media/MediaScanner$FileEntry;

    move-object/from16 v23, v0

    move-wide/from16 v24, v7

    move-object/from16 v26, v11

    invoke-direct/range {v23 .. v30}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;JJ)V

    iget-object v2, v1, Landroid/media/PartialMediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    nop

    :goto_a
    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/media/PartialMediaScanner;->mIsFileCacheFull:Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v0

    move-object/from16 v3, v37

    goto :goto_d

    :cond_b
    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move v2, v7

    :goto_b
    move v7, v2

    move-object/from16 v3, v37

    move-object/from16 v4, v38

    move-object/from16 v2, p1

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_c
    move-object/from16 v37, v3

    move-object v15, v6

    move v0, v10

    move-object/from16 v11, v22

    move-object/from16 v2, p1

    const/4 v6, 0x3

    const/4 v10, 0x2

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    goto :goto_d

    :catchall_5
    move-exception v0

    move-object/from16 v38, v4

    :goto_c
    goto :goto_d

    :catchall_6
    move-exception v0

    move-object/from16 v38, v4

    move-object v6, v15

    :goto_d
    if-eqz v3, :cond_d

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_d
    invoke-virtual {v6}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public scanDirectories([Ljava/lang/String;)V
    .locals 14

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    iget-object v1, p0, Landroid/media/PartialMediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/media/PartialMediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/media/PartialMediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :goto_0
    iget-object v1, p0, Landroid/media/PartialMediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Landroid/media/MediaInserter;

    iget-object v6, p0, Landroid/media/PartialMediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/16 v7, 0x64

    invoke-direct {v1, v6, v7}, Landroid/media/MediaInserter;-><init>(Landroid/content/ContentProviderClient;I)V

    iput-object v1, p0, Landroid/media/PartialMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    array-length v1, p1

    const/4 v6, 0x0

    move-wide v10, v4

    :goto_1
    if-ge v6, v1, :cond_1

    aget-object v4, p1, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {p0, v4}, Landroid/media/PartialMediaScanner;->prescan(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v7

    add-long/2addr v10, v12

    const-string v5, "PartialMediaScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "processDirectory :  "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/media/PartialMediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4}, Landroid/media/PartialMediaScanner;->getStorageId(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/media/PartialMediaScanner;->mStorageId:I

    iget-object v5, p0, Landroid/media/PartialMediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    invoke-virtual {p0, v4, v5}, Landroid/media/PartialMediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v12, v4

    iget-object v1, p0, Landroid/media/PartialMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v1}, Landroid/media/MediaInserter;->flushAll()V

    iget-wide v4, p0, Landroid/media/PartialMediaScanner;->mTotalBulkInserterTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v12

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/PartialMediaScanner;->mTotalBulkInserterTime:J

    iput-object v0, p0, Landroid/media/PartialMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0, p1}, Landroid/media/PartialMediaScanner;->postscan([Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v1, p0

    move-wide v4, v10

    invoke-virtual/range {v1 .. v9}, Landroid/media/PartialMediaScanner;->printScanResultLogs(JJJJ)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "PartialMediaScanner"

    const-string v3, "RemoteException in MediaScanner.scan()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "PartialMediaScanner"

    const-string v3, "UnsupportedOperationException in MediaScanner.scan()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v2, "PartialMediaScanner"

    const-string v3, "SQLException in MediaScanner.scan()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {p0}, Landroid/media/PartialMediaScanner;->releaseResources()V

    iput-object v0, p0, Landroid/media/PartialMediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    nop

    return-void

    :goto_3
    invoke-virtual {p0}, Landroid/media/PartialMediaScanner;->releaseResources()V

    iput-object v0, p0, Landroid/media/PartialMediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    throw v1
.end method
