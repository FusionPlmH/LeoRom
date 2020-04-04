.class public Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private m3dvideotype:Ljava/lang/String;

.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mAudioCodecInfo:Ljava/lang/String;

.field private mBitDepth:I

.field private mCityID:J

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mCreationTime:J

.field private mDate:J

.field private final mDateFormatter:Ljava/text/SimpleDateFormat;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mFormat:I

.field private mGenre:Ljava/lang/String;

.field private mHDR10video:I

.field private mHeight:I

.field private mIs360video:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mRecordingMode:I

.field private mRecordingType:I

.field private mSamplingRate:I

.field private mScanSuccess:Z

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mVideoCodecInfo:Ljava/lang/String;

.field private mVideoLatitude:F

.field private mVideoLongitude:F

.field private mVoiceLatitude:F

.field private mVoiceLongitude:F

.field private mWeatherID:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method public constructor <init>(Landroid/media/MediaScanner;)V
    .locals 3

    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHDR10video:I

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method private convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string v1, "MediaScanner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' -> \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', expected \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    sget-char v0, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, p2, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int v4, v0, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1
.end method

.method private endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v3

    const-string/jumbo v0, "title"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move-object v4, v0

    goto :goto_2

    :cond_3
    :goto_1
    const-string v4, "_data"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :goto_2
    const-string v0, "album"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "<unknown>"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    const-string v5, "_data"

    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    if-ltz v7, :cond_6

    move v8, v6

    :goto_3
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v5, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    if-ltz v9, :cond_5

    if-lt v9, v7, :cond_4

    goto :goto_4

    :cond_4
    move v8, v9

    goto :goto_3

    :cond_5
    :goto_4
    if-eqz v8, :cond_6

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v0, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v5, "album"

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v5, v0

    iget-wide v7, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    const/16 v14, 0x25

    const-wide/16 v16, 0x0

    if-eqz v0, :cond_9

    cmp-long v0, v7, v16

    if-eqz v0, :cond_7

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)I

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    const-string/jumbo v0, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v3, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v3, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v3, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v0, "recordingtype"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-lez v13, :cond_8

    const-string/jumbo v13, "is_music"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    :cond_8
    const-string/jumbo v13, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v3, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_5
    const-string/jumbo v13, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v3, v13, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_6

    :cond_9
    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v13, 0x1f

    if-eq v0, v13, :cond_b

    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isRawImageFileType(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-ne v0, v14, :cond_a

    goto :goto_7

    :cond_a
    :goto_6
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    goto/16 :goto_f

    :cond_b
    :goto_7
    iget-boolean v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v0, :cond_18

    const/4 v13, -0x1

    const/4 v15, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/16 v20, 0x0

    move-object/from16 v21, v20

    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    iget-object v14, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-direct {v0, v14}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v21, v0

    nop

    move-object/from16 v22, v4

    goto :goto_8

    :catch_0
    move-exception v0

    const-string v14, "MediaScanner"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v4

    const-string v4, "Exception in ExifInterface. path: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, v21

    :goto_8
    if-eqz v0, :cond_13

    const/4 v4, 0x2

    new-array v6, v4, [F

    invoke-virtual {v0, v6}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string/jumbo v4, "latitude"

    move-object/from16 v23, v5

    const/4 v14, 0x0

    aget v5, v6, v14

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string/jumbo v4, "longitude"

    const/4 v5, 0x1

    aget v14, v6, v5

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto :goto_9

    :cond_c
    move-object/from16 v23, v5

    :goto_9
    invoke-virtual {v0}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v4

    cmp-long v14, v16, v4

    if-gez v14, :cond_d

    cmp-long v14, v4, v9

    if-gtz v14, :cond_d

    const-string v14, "datetaken"

    move-object/from16 v24, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_a

    :cond_d
    move-object/from16 v24, v6

    invoke-virtual {v0}, Landroid/media/ExifInterface;->getDateTimeOriginal()J

    move-result-wide v4

    cmp-long v6, v16, v4

    if-gez v6, :cond_e

    cmp-long v6, v4, v9

    if-gtz v6, :cond_e

    const-string v6, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v6, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_e
    :goto_a
    const-string v6, "ImageWidth"

    const/4 v14, -0x1

    invoke-virtual {v0, v6, v14}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v13

    const-string v6, "ImageLength"

    invoke-virtual {v0, v6, v14}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v15

    const-string v6, "Orientation"

    invoke-virtual {v0, v6, v14}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v14, :cond_12

    const/4 v14, 0x3

    if-eq v6, v14, :cond_11

    const/4 v14, 0x6

    if-eq v6, v14, :cond_10

    const/16 v14, 0x8

    if-eq v6, v14, :cond_f

    const/4 v14, 0x0

    goto :goto_b

    :cond_f
    const/16 v14, 0x10e

    goto :goto_b

    :cond_10
    const/16 v14, 0x5a

    goto :goto_b

    :cond_11
    const/16 v14, 0xb4

    nop

    :goto_b
    nop

    move-object/from16 v25, v0

    const-string/jumbo v0, "orientation"

    move-wide/from16 v26, v4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_c

    :cond_12
    move-object/from16 v25, v0

    goto :goto_c

    :cond_13
    move-object/from16 v25, v0

    move-object/from16 v23, v5

    :goto_c
    const/4 v4, -0x1

    if-eq v13, v4, :cond_15

    if-ne v15, v4, :cond_14

    goto :goto_d

    :cond_14
    iput v13, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    iput v15, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto :goto_e

    :cond_15
    :goto_d
    iget-object v0, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-direct {v1, v0}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)Z

    :goto_e
    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v0, :cond_16

    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v0, :cond_16

    const-string/jumbo v0, "width"

    iget v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "height"

    iget v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v11, v4, v9

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-wide v4, v0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    add-long/2addr v4, v11

    iput-wide v4, v0, Landroid/media/MediaScanner;->mTotalExifExtractingTime:J

    iget-object v0, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v4, "."

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v4, v4, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    if-eqz v4, :cond_19

    if-lez v0, :cond_19

    cmp-long v4, v9, v16

    if-eqz v4, :cond_19

    cmp-long v4, v11, v16

    if-eqz v4, :cond_19

    iget-object v4, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v5, v5, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/MediaScanner$FileParsingTime;

    if-eqz v5, :cond_17

    invoke-virtual {v5, v11, v12}, Landroid/media/MediaScanner$FileParsingTime;->addParsingTime(J)V

    iget-object v6, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v6, v6, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_17
    iget-object v6, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v6, v6, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    new-instance v14, Landroid/media/MediaScanner$FileParsingTime;

    invoke-direct {v14, v4, v11, v12}, Landroid/media/MediaScanner$FileParsingTime;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v6, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_18
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    :cond_19
    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :try_start_1
    iget-boolean v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v0, :cond_29

    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    const/16 v6, 0x25

    if-eq v0, v6, :cond_1a

    packed-switch v0, :pswitch_data_0

    :goto_10
    move-wide/from16 v28, v9

    move-wide/from16 v30, v11

    goto/16 :goto_1a

    :cond_1a
    :pswitch_0
    iget-object v0, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/media/SemExtendedFormat;->isSEFFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_10

    :cond_1b
    iget-object v0, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/media/SemExtendedFormat;->listSEFDataTypes(Ljava/lang/String;)[I

    move-result-object v0

    move-object v6, v0

    if-eqz v6, :cond_29

    const-string v0, ""

    const/4 v13, 0x1

    array-length v14, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    move v15, v13

    move-object v13, v0

    :goto_11
    move-wide/from16 v28, v9

    const/4 v9, -0x1

    if-le v14, v9, :cond_27

    :try_start_2
    aget v0, v6, v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7

    const/16 v10, 0xa01

    if-ne v0, v10, :cond_1d

    :try_start_3
    iget-object v0, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v10, "Image_UTC_Data"

    invoke-static {v0, v10}, Lcom/samsung/android/media/SemExtendedFormat;->getSEFData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1c

    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    const-string v9, "datetaken"
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    move-wide/from16 v30, v11

    :try_start_4
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    goto :goto_12

    :catch_1
    move-exception v0

    goto :goto_13

    :catch_2
    move-exception v0

    goto :goto_14

    :cond_1c
    move-wide/from16 v30, v11

    :goto_12
    goto :goto_15

    :catch_3
    move-exception v0

    move-wide/from16 v30, v11

    :goto_13
    :try_start_5
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NumberFormatException in parseLong. path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v11}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    :catch_4
    move-exception v0

    move-wide/from16 v30, v11

    :goto_14
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException in getSEFData. path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v11}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    :cond_1d
    move-wide/from16 v30, v11

    aget v0, v6, v14

    const/16 v9, 0xa41

    if-ne v0, v9, :cond_1e

    goto :goto_15

    :cond_1e
    aget v0, v6, v14

    const/16 v9, 0x850

    if-ne v0, v9, :cond_1f

    nop

    :goto_15
    const/4 v11, 0x2

    goto/16 :goto_19

    :cond_1f
    aget v0, v6, v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    const/16 v9, 0x9e0

    if-ne v0, v9, :cond_21

    :try_start_6
    iget-object v0, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    const-string v9, "Burst_Shot_Info"

    invoke-static {v0, v9}, Lcom/samsung/android/media/SemExtendedFormat;->getSEFData(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_20

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([B)V

    const-string v10, "group_id"

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    :cond_20
    :goto_16
    goto :goto_17

    :catch_5
    move-exception v0

    :try_start_7
    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " NumberFormatException in parseLong. path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v11}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :catch_6
    move-exception v0

    const-string v9, "MediaScanner"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException in getSEFData. path: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v11}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    :cond_21
    aget v0, v6, v14

    const/16 v9, 0x9e1

    if-ne v0, v9, :cond_22

    const-string v0, "best_image"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_22
    :goto_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, v6, v14

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v15, :cond_26

    aget v9, v6, v14

    const/16 v10, 0x800

    if-lt v9, v10, :cond_26

    aget v9, v6, v14

    const/16 v10, 0x10

    rem-int/2addr v9, v10

    if-nez v9, :cond_26

    const-string v9, "MediaScanner"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "sef_file_type set to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v12, v6, v14

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "sef_file_type"

    aget v11, v6, v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    array-length v9, v6

    const/4 v11, 0x2

    if-le v9, v11, :cond_25

    const/4 v9, 0x0

    move v12, v9

    const/4 v9, 0x0

    :goto_18
    array-length v13, v6

    if-ge v9, v13, :cond_24

    aget v13, v6, v9

    aget v18, v6, v14

    sub-int v13, v13, v18

    if-eq v14, v9, :cond_23

    if-ge v13, v10, :cond_23

    if-lez v13, :cond_23

    add-int/lit8 v18, v13, -0x1

    const/16 v19, 0x1

    shl-int v18, v19, v18

    or-int v12, v12, v18

    :cond_23
    add-int/lit8 v9, v9, 0x1

    goto :goto_18

    :cond_24
    const-string/jumbo v9, "sef_file_sub_type"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_25
    const/4 v9, 0x0

    move-object v13, v0

    move v15, v9

    goto :goto_19

    :cond_26
    const/4 v11, 0x2

    move-object v13, v0

    :goto_19
    add-int/lit8 v14, v14, -0x1

    move-wide/from16 v9, v28

    move-wide/from16 v11, v30

    goto/16 :goto_11

    :catch_7
    move-exception v0

    move-wide/from16 v30, v11

    goto :goto_1b

    :cond_27
    move-wide/from16 v30, v11

    const-string v0, ""

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    const-string v0, "MediaScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sef_file_types set to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const-string/jumbo v0, "sef_file_types"

    invoke-virtual {v3, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_1a

    :catch_8
    move-exception v0

    goto :goto_1b

    :cond_29
    move-wide/from16 v28, v9

    move-wide/from16 v30, v11

    :goto_1a
    goto :goto_1c

    :catch_9
    move-exception v0

    move-wide/from16 v28, v9

    move-wide/from16 v30, v11

    :goto_1b
    const-string v6, "MediaScanner"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception while SEF parsing. path: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v10}, Landroid/media/MediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-wide v9, v0, Landroid/media/MediaScanner;->mTotalSefExtractingTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v4

    add-long/2addr v9, v11

    iput-wide v9, v0, Landroid/media/MediaScanner;->mTotalSefExtractingTime:J

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v0, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    iget-object v6, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v6, v6, Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    const-wide/16 v9, 0x0

    iget-boolean v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v11, :cond_2c

    iget-boolean v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v11, :cond_2c

    iget v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v11}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v11

    if-eqz v11, :cond_2a

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v0, v11, Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;

    goto :goto_1d

    :cond_2a
    iget v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v11}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v11

    if-eqz v11, :cond_2b

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v0, v11, Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;

    goto :goto_1d

    :cond_2b
    iget v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v11}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v11

    if-eqz v11, :cond_2c

    iget-object v11, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v11}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v0

    :cond_2c
    :goto_1d
    move-object v11, v0

    const/4 v12, 0x0

    const/4 v0, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v32, v0

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Z

    move-result v0

    if-eqz v0, :cond_3a

    if-eqz p3, :cond_32

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move-wide/from16 v33, v4

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_1e

    :cond_2d
    move-wide/from16 v33, v4

    :goto_1e
    const/4 v0, 0x1

    const/4 v13, 0x1

    goto :goto_1f

    :cond_2e
    move-wide/from16 v33, v4

    :cond_2f
    move/from16 v0, v32

    :goto_1f
    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_31

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    iget-object v4, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    :cond_30
    const/4 v0, 0x1

    const/4 v14, 0x1

    :cond_31
    :goto_20
    move/from16 v32, v0

    goto/16 :goto_22

    :cond_32
    move-wide/from16 v33, v4

    if-eqz p2, :cond_38

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_33
    const/4 v0, 0x1

    const/4 v15, 0x1

    goto :goto_21

    :cond_34
    move/from16 v0, v32

    :goto_21
    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)I

    move-result v5

    const/4 v4, 0x1

    if-le v5, v4, :cond_36

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_36

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_35

    iget-object v4, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    :cond_35
    const/4 v0, 0x1

    const/16 v18, 0x1

    :cond_36
    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_37

    iget-object v4, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    :cond_37
    const/4 v0, 0x1

    const/16 v19, 0x1

    goto/16 :goto_20

    :cond_38
    if-eqz p4, :cond_3b

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_39
    const/4 v0, 0x1

    const/16 v19, 0x1

    goto/16 :goto_20

    :cond_3a
    move-wide/from16 v33, v4

    :cond_3b
    :goto_22
    cmp-long v0, v7, v16

    const-wide/16 v16, 0x1

    if-nez v0, :cond_43

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)I

    move-result v0

    if-eqz v0, :cond_3c

    const-string/jumbo v0, "media_scanner_new_object_id"

    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v5}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3c
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v0, v0, Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;

    if-ne v11, v0, :cond_3e

    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    if-nez v0, :cond_3d

    iget-object v5, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    move/from16 v35, v0

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v5, v0}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_23

    :cond_3d
    move/from16 v35, v0

    :goto_23
    const-string v5, "format"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3e
    const-string/jumbo v0, "storage_id"

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget v4, v4, Landroid/media/MediaScanner;->mStorageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    if-eqz v6, :cond_41

    if-eqz v32, :cond_3f

    goto :goto_25

    :cond_3f
    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    const/16 v4, 0x3001

    if-ne v0, v4, :cond_40

    invoke-virtual {v6, v11, v3}, Landroid/media/MediaInserter;->insertwithPriority(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto :goto_24

    :cond_40
    invoke-virtual {v6, v11, v3}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    :goto_24
    move-object/from16 v36, v6

    goto :goto_28

    :cond_41
    :goto_25
    if-eqz v6, :cond_42

    :try_start_8
    invoke-virtual {v6}, Landroid/media/MediaInserter;->flushAll()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "volume"

    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v5, v5, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v4, v4, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v5, "sync_full"
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_8 .. :try_end_8} :catch_b

    move-object/from16 v36, v6

    const/4 v6, 0x0

    :try_start_9
    invoke-virtual {v4, v5, v6, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v4, v4, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v4, v11, v3}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_9 .. :try_end_9} :catch_c

    :try_start_a
    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v5, v5, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v6, "sync_normal"

    const/4 v12, 0x0

    invoke-virtual {v5, v6, v12, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_a} :catch_a

    nop

    move-object v12, v4

    goto :goto_27

    :catch_a
    move-exception v0

    move-object v12, v4

    goto :goto_26

    :catch_b
    move-exception v0

    move-object/from16 v36, v6

    goto :goto_26

    :cond_42
    move-object/from16 v36, v6

    :try_start_b
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual {v0, v11, v3}, Landroid/content/ContentProviderClient;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_b .. :try_end_b} :catch_c

    move-object v12, v0

    goto :goto_27

    :catch_c
    move-exception v0

    :goto_26
    const-string v4, "MediaScanner"

    const-string v5, "SQLiteFullException in MediaScanner.endFile()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    nop

    :goto_28
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-wide v4, v0, Landroid/media/MediaScanner;->mTotalInserted:J

    add-long v4, v4, v16

    iput-wide v4, v0, Landroid/media/MediaScanner;->mTotalInserted:J

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-wide v4, v0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v9

    add-long v4, v4, v16

    iput-wide v4, v0, Landroid/media/MediaScanner;->mTotalBulkInserterTime:J

    if-eqz v12, :cond_4a

    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    iput-wide v7, v2, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    goto/16 :goto_2c

    :cond_43
    move-object/from16 v36, v6

    invoke-static {v11, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    const-string v0, "_data"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-boolean v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v4, :cond_49

    iget-object v4, v2, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_49

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v5

    if-eqz v5, :cond_44

    const/4 v0, 0x2

    goto :goto_2a

    :cond_44
    invoke-static {v4}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v5

    if-eqz v5, :cond_45

    const/4 v0, 0x3

    goto :goto_2a

    :cond_45
    invoke-static {v4}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v5

    if-eqz v5, :cond_46

    const/4 v0, 0x1

    goto :goto_2a

    :cond_46
    invoke-static {v4}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v5

    if-eqz v5, :cond_47

    const/4 v0, 0x4

    goto :goto_2a

    :cond_47
    invoke-static {v4}, Landroid/media/MediaFile;->isDocFileType(I)Z

    move-result v5

    if-eqz v5, :cond_48

    const-string/jumbo v5, "is_doc"

    move/from16 v37, v0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_29

    :cond_48
    move/from16 v37, v0

    :goto_29
    move/from16 v0, v37

    :goto_2a
    const-string/jumbo v5, "media_type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move/from16 v37, v0

    goto :goto_2b

    :cond_49
    move/from16 v37, v0

    :goto_2b
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-wide v4, v0, Landroid/media/MediaScanner;->mTotalUpdated:J

    add-long v4, v4, v16

    iput-wide v4, v0, Landroid/media/MediaScanner;->mTotalUpdated:J

    :try_start_c
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v0, v0, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/4 v4, 0x0

    invoke-virtual {v0, v12, v3, v4, v4}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c .. :try_end_c} :catch_d

    goto :goto_2c

    :catch_d
    move-exception v0

    const-string v4, "MediaScanner"

    const-string v5, "SQLiteFullException in MediaScanner.endFile()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4a
    :goto_2c
    if-eqz v32, :cond_4f

    if-eqz v13, :cond_4b

    const-string/jumbo v0, "notification_sound"

    invoke-direct {v1, v0, v11, v7, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    const/4 v4, 0x1

    invoke-static {v0, v4}, Landroid/media/MediaScanner;->access$602(Landroid/media/MediaScanner;Z)Z

    goto :goto_2d

    :cond_4b
    const/4 v4, 0x1

    if-eqz v14, :cond_4c

    const-string/jumbo v0, "notification_sound_2"

    invoke-direct {v1, v0, v11, v7, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0, v4}, Landroid/media/MediaScanner;->access$1302(Landroid/media/MediaScanner;Z)Z

    goto :goto_2d

    :cond_4c
    if-eqz v15, :cond_4d

    const-string/jumbo v0, "ringtone"

    invoke-direct {v1, v0, v11, v7, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0, v4}, Landroid/media/MediaScanner;->access$802(Landroid/media/MediaScanner;Z)Z

    goto :goto_2d

    :cond_4d
    if-eqz v18, :cond_4e

    const-string/jumbo v0, "ringtone_2"

    invoke-direct {v1, v0, v11, v7, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0, v4}, Landroid/media/MediaScanner;->access$1502(Landroid/media/MediaScanner;Z)Z

    goto :goto_2d

    :cond_4e
    if-eqz v19, :cond_4f

    const-string v0, "alarm_alert"

    invoke-direct {v1, v0, v11, v7, v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0, v4}, Landroid/media/MediaScanner;->access$1002(Landroid/media/MediaScanner;Z)Z

    :cond_4f
    :goto_2d
    return-object v12

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-instance v2, Landroid/drm/DrmManagerClient;

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Landroid/media/MediaScanner;->access$2502(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    :cond_1
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {v1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    :cond_2
    return v0
.end method

.method private parseDate(Ljava/lang/String;)J
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDateFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p2, v0, :cond_0

    return p3

    :cond_0
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x30

    if-lt p2, v2, :cond_5

    const/16 v3, 0x39

    if-le p2, v3, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, p2, -0x30

    :goto_0
    if-ge v1, v0, :cond_4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    if-lt p2, v2, :cond_3

    if-le p2, v3, :cond_2

    goto :goto_1

    :cond_2
    mul-int/lit8 v1, v4, 0xa

    add-int/lit8 v6, p2, -0x30

    add-int v4, v1, v6

    move v1, v5

    goto :goto_0

    :cond_3
    :goto_1
    return v4

    :cond_4
    return v4

    :cond_5
    :goto_2
    return p3
.end method

.method private processImageFile(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v1}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private setRingtoneIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0, p1}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v5

    invoke-static {v4, v5, v3}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "volume"

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v6, v6, Landroid/media/MediaScanner;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaScanner"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v6, v6, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v7, "sync_full"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v6, v6, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v7, "mediadb_log"

    invoke-virtual {v6, v7, v5, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v6, v6, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v7, "sync_normal"

    invoke-virtual {v6, v7, v8, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_1
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v2, p1}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaScanner"

    const-string v2, "RemoteException in setRingtoneIfNotSet"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private testGenreNameConverter()V
    .locals 2

    const-string v0, "2"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2)"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2"

    const-string v1, "(2"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "2 Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2) Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2 Foo"

    const-string v1, "(2 Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "2Foo"

    const-string v1, "2Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(2)Foo"

    const-string v1, "Country"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200 Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(200) Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200Foo"

    const-string v1, "200Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "(200)Foo"

    const-string v1, "Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200)Foo"

    const-string v1, "200)Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "200) Foo"

    const-string v1, "200) Foo"

    invoke-direct {p0, v0, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->convertGenreCode(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 8

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_data"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date_modified"

    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "_size"

    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "mime_type"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "is_drm"

    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v2, :cond_0

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v2, :cond_0

    const-string/jumbo v2, "width"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "height"

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v2, :cond_11

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v2

    const-wide/16 v3, -0x1

    const/high16 v5, -0x800000    # Float.NEGATIVE_INFINITY

    if-eqz v2, :cond_9

    const-string v2, "artist"

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v6, "<unknown>"

    :goto_0
    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "album"

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v6, "<unknown>"

    :goto_1
    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "duration"

    iget v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v1, :cond_3

    const-string/jumbo v2, "resolution"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v2, "weather_ID"

    iget v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "city_ID"

    iget-wide v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_4

    const-string/jumbo v2, "latitude"

    iget v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string/jumbo v2, "longitude"

    iget v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_4
    const-string/jumbo v2, "is_360_video"

    iget v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "recordingtype"

    iget v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "recording_mode"

    iget v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHDR10video:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_5

    const-string/jumbo v2, "is_hdr10_video"

    iget v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHDR10video:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_5
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->m3dvideotype:Ljava/lang/String;

    if-eqz v2, :cond_6

    const-string/jumbo v2, "type3dvideo"

    iget-object v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->m3dvideotype:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoCodecInfo:Ljava/lang/String;

    if-eqz v2, :cond_7

    const-string/jumbo v2, "video_codec_info"

    iget-object v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoCodecInfo:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAudioCodecInfo:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v2, "audio_codec_info"

    iget-object v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAudioCodecInfo:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-wide v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_10

    const-string v2, "datetaken"

    iget-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_6

    :cond_9
    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_6

    :cond_a
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v2, :cond_10

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v2}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "artist"

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v6, :cond_b

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_b

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_2

    :cond_b
    const-string v6, "<unknown>"

    :goto_2
    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "album_artist"

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    const/4 v7, 0x0

    if-eqz v6, :cond_c

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_c

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_3

    :cond_c
    move-object v6, v7

    :goto_3
    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "album"

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v6, :cond_d

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_d

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_4

    :cond_d
    const-string v6, "<unknown>"

    :goto_4
    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "composer"

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "genre"

    iget-object v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "year"

    iget v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-nez v6, :cond_e

    goto :goto_5

    :cond_e
    iget v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_5
    invoke-virtual {v0, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "track"

    iget v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "duration"

    iget v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "compilation"

    iget v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "recordingtype"

    iget v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "recording_mode"

    iget v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "bit_depth"

    iget v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "sampling_rate"

    iget v6, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_f

    const-string/jumbo v2, "latitude"

    iget v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string/jumbo v2, "longitude"

    iget v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_f
    iget-wide v5, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_10

    const-string v2, "datetaken"

    iget-wide v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_10
    :goto_6
    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-nez v2, :cond_11

    const-string/jumbo v2, "media_type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_11
    return-object v0
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    iput-object v9, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    const/4 v14, 0x0

    iput v14, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    iput-wide v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    iput-boolean v14, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-nez p7, :cond_4

    if-nez p8, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/media/MediaScanner;->access$000(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move/from16 v2, p8

    :goto_0
    iput-boolean v2, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-eqz v9, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    :cond_1
    iget v3, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    invoke-static/range {p1 .. p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v4, v3, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, v3, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    :cond_2
    iget-object v3, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v3}, Landroid/media/MediaScanner;->access$100(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    :cond_3
    move v15, v2

    goto :goto_1

    :cond_4
    move/from16 v15, p8

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const/4 v2, 0x0

    move-object v3, v8

    iget-object v4, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :cond_5
    move-object v6, v3

    iget-object v3, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v3, v3, Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Landroid/media/MediaScanner$FileEntry;

    if-nez v2, :cond_6

    iget-object v3, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-boolean v3, v3, Landroid/media/MediaScanner;->mIsFileCacheFull:Z

    if-eqz v3, :cond_6

    iget-object v3, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-virtual {v3, v8}, Landroid/media/MediaScanner;->makeEntryFor(Ljava/lang/String;)Landroid/media/MediaScanner$FileEntry;

    move-result-object v2

    :cond_6
    move-object v7, v2

    iget-object v2, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-wide v3, v2, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v16

    add-long v3, v3, v18

    iput-wide v3, v2, Landroid/media/MediaScanner;->mTotalMakeEntryTime:J

    if-eqz v7, :cond_7

    iget-wide v3, v7, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    sub-long v3, v10, v3

    goto :goto_2

    :cond_7
    const-wide/16 v3, 0x0

    :goto_2
    move-wide/from16 v18, v3

    const-wide/16 v2, 0x1

    cmp-long v4, v18, v2

    const-wide/16 v2, -0x1

    if-gtz v4, :cond_9

    cmp-long v4, v18, v2

    if-gez v4, :cond_8

    goto :goto_3

    :cond_8
    move v4, v14

    goto :goto_4

    :cond_9
    :goto_3
    move v4, v0

    :goto_4
    move/from16 v24, v4

    if-eqz v7, :cond_b

    if-eqz v24, :cond_a

    goto :goto_5

    :cond_a
    move-object/from16 v25, v6

    const/4 v5, 0x0

    const-wide/16 v20, 0x0

    goto/16 :goto_9

    :cond_b
    :goto_5
    if-eqz v24, :cond_e

    iget-wide v2, v7, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    iput-boolean v0, v7, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    iput-wide v10, v7, Landroid/media/MediaScanner$FileEntry;->mLastModified:J

    const-wide/16 v20, 0x0

    cmp-long v4, v2, v20

    if-eqz v4, :cond_d

    move-object/from16 v25, v6

    iget-wide v5, v7, Landroid/media/MediaScanner$FileEntry;->mSize:J

    cmp-long v4, v12, v5

    if-nez v4, :cond_c

    const-wide/16 v4, 0x384

    rem-long v4, v18, v4

    cmp-long v4, v4, v20

    if-nez v4, :cond_c

    iput-boolean v14, v7, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    move-object v0, v4

    const-string v4, "date_modified"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "content://media/external/date_modified/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-wide v5, v7, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_4

    move-wide/from16 v26, v2

    :try_start_1
    iget-wide v2, v5, Landroid/media/MediaScanner;->mTotalUpdated:J

    const-wide/16 v22, 0x1

    add-long v2, v2, v22

    iput-wide v2, v5, Landroid/media/MediaScanner;->mTotalUpdated:J

    iget-object v2, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v2, v2, Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v2, v4, v0, v5, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    const/4 v5, 0x0

    goto :goto_6

    :catch_3
    move-exception v0

    const/4 v5, 0x0

    goto :goto_7

    :catch_4
    move-exception v0

    move-wide/from16 v26, v2

    const/4 v5, 0x0

    :goto_6
    const-string v2, "MediaScanner"

    const-string v3, "SQLiteFullException in MediaScanner.beginFile()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catch_5
    move-exception v0

    move-wide/from16 v26, v2

    const/4 v5, 0x0

    :goto_7
    const-string v2, "MediaScanner"

    const-string v3, "RemoteException in MediaScanner.beginFile()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    goto :goto_9

    :cond_c
    const/4 v5, 0x0

    goto :goto_9

    :cond_d
    move-object/from16 v25, v6

    const/4 v5, 0x0

    :goto_9
    move-object v12, v5

    move-object/from16 v20, v25

    goto :goto_b

    :cond_e
    move-object/from16 v25, v6

    const/4 v5, 0x0

    const-wide/16 v20, 0x0

    new-instance v22, Landroid/media/MediaScanner$FileEntry;

    const-wide/16 v3, 0x0

    const-wide/16 v12, -0x1

    move-object/from16 v2, v22

    move-wide/from16 v12, v20

    move-object v6, v5

    move-object v5, v8

    move-object v12, v6

    move-object/from16 v21, v7

    move-object/from16 v20, v25

    move-wide v6, v10

    invoke-direct/range {v2 .. v7}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;J)V

    move-object/from16 v7, v22

    if-eqz p7, :cond_f

    const/16 v2, 0x3001

    goto :goto_a

    :cond_f
    move v2, v14

    :goto_a
    iput v2, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFormat:I

    iput-boolean v0, v7, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    :goto_b
    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v0, v0, Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v12

    :cond_10
    iput-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    iput-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    iput-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    iput-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    iput-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    iput-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    iput v14, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    iput v14, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    iput v14, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    iput-object v8, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    iput-wide v10, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    iput-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    iput v14, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    iput v14, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    iput v14, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    iput v14, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    iput v14, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    const/4 v0, -0x1

    iput v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    iput v14, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    iput v14, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    iput v14, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    iput-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->m3dvideotype:Ljava/lang/String;

    iput-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoCodecInfo:Ljava/lang/String;

    iput-object v12, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mAudioCodecInfo:Ljava/lang/String;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    iput v14, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mHDR10video:I

    return-object v7
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 27

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    const/4 v0, 0x0

    move-object v12, v0

    move-object v1, v10

    move-object v2, v11

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p9

    :try_start_0
    invoke-virtual/range {v1 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileEntry;

    move-result-object v1

    move-object v8, v1

    if-nez v8, :cond_0

    return-object v0

    :cond_0
    iget-object v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)I

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iput-wide v1, v8, Landroid/media/MediaScanner$FileEntry;->mRowId:J

    :cond_1
    iget-object v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    iget-object v0, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v4, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v0, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    iget-object v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v4, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$900(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v0, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_3
    iget-object v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v4, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v0, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_4
    iget-object v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)I

    move-result v0

    if-le v0, v3, :cond_7

    iget-object v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v4, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v0, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    iget-object v4, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v4}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v0, v4}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "MediaScanner"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forcing rescan of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Landroid/media/MediaScanner$FileEntry;->mPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " since ringtone setting didn\'t finish"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    move v9, v0

    goto :goto_0

    :cond_7
    move/from16 v9, p8

    :goto_0
    if-eqz v8, :cond_1c

    :try_start_1
    iget-boolean v0, v8, Landroid/media/MediaScanner$FileEntry;->mLastModifiedChanged:Z

    if-nez v0, :cond_8

    if-eqz v9, :cond_1c

    :cond_8
    iget-boolean v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-eqz v0, :cond_10

    iget v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/ringtones/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    move v1, v3

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    :goto_1
    move v13, v1

    const-string v1, "/notifications/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_a

    move v1, v3

    goto :goto_2

    :cond_a
    const/4 v1, 0x0

    :goto_2
    move v14, v1

    const-string v1, "/alarms/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_b

    move v1, v3

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    :goto_3
    move v15, v1

    const-string v1, "/podcasts/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_c

    move v1, v3

    goto :goto_4

    :cond_c
    const/4 v1, 0x0

    :goto_4
    move/from16 v16, v1

    const-string v1, "/music/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gtz v1, :cond_e

    if-nez v13, :cond_d

    if-nez v14, :cond_d

    if-nez v15, :cond_d

    if-nez v16, :cond_d

    goto :goto_5

    :cond_d
    const/4 v6, 0x0

    goto :goto_6

    :cond_e
    :goto_5
    move v6, v3

    :goto_6
    move-object v1, v10

    move-object v2, v8

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v7, v16

    invoke-direct/range {v1 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v1

    move-object v12, v1

    goto/16 :goto_f

    :cond_f
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v10

    move-object v2, v8

    invoke-direct/range {v1 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v0

    move-object v12, v0

    goto/16 :goto_f

    :cond_10
    const-wide/16 v5, 0x0

    const-wide/16 v13, 0x0

    iget v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    iget v7, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v7}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v7

    move v15, v7

    iget v7, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v7}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v7

    move/from16 v16, v7

    if-nez v0, :cond_12

    if-eqz v15, :cond_11

    goto :goto_7

    :cond_11
    move-object/from16 v1, p2

    goto :goto_8

    :cond_12
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v5, v17

    iget-object v7, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v1, p2

    invoke-static {v7, v11, v1, v10}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)Z

    move-result v2

    iput-boolean v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v13, v17, v5

    iget-object v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-wide v3, v2, Landroid/media/MediaScanner;->mTotalParsingTime:J

    add-long/2addr v3, v13

    iput-wide v3, v2, Landroid/media/MediaScanner;->mTotalParsingTime:J

    :goto_8
    if-eqz v16, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide v5, v2

    invoke-direct/range {p0 .. p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v13, v2, v5

    iget-object v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-wide v3, v2, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    add-long/2addr v3, v13

    iput-wide v3, v2, Landroid/media/MediaScanner;->mTotalBitmapDecodingTime:J

    :cond_13
    move-wide/from16 v25, v5

    move-wide v4, v13

    move-wide/from16 v13, v25

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    const-string v2, "/ringtones/"

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_14

    const/4 v2, 0x1

    goto :goto_9

    :cond_14
    const/4 v2, 0x0

    :goto_9
    move/from16 v17, v2

    const-string v2, "/notifications/"

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_15

    const/4 v2, 0x1

    goto :goto_a

    :cond_15
    const/4 v2, 0x0

    :goto_a
    move/from16 v18, v2

    const-string v2, "/alarms/"

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_16

    const/4 v2, 0x1

    goto :goto_b

    :cond_16
    const/4 v2, 0x0

    :goto_b
    move/from16 v22, v2

    iget-boolean v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v2, :cond_17

    const-string v2, "/podcasts/"

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_c

    :cond_17
    const/4 v2, 0x0

    :goto_c
    move/from16 v23, v2

    iget-boolean v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->mScanSuccess:Z

    if-eqz v2, :cond_19

    const-string v2, "/music/"

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_18

    if-nez v17, :cond_19

    if-nez v18, :cond_19

    if-nez v22, :cond_19

    if-nez v23, :cond_19

    :cond_18
    const/4 v6, 0x1

    goto :goto_d

    :cond_19
    const/4 v6, 0x0

    :goto_d
    const-string v2, "."

    invoke-virtual {v11, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    iget-object v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v2, v2, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    if-eqz v2, :cond_1b

    if-lez v21, :cond_1b

    const-wide/16 v2, 0x0

    cmp-long v19, v13, v2

    if-eqz v19, :cond_1b

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1b

    add-int/lit8 v2, v21, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v3, v3, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaScanner$FileParsingTime;

    if-eqz v3, :cond_1a

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaScanner$FileParsingTime;->addParsingTime(J)V

    move/from16 v24, v0

    iget-object v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_1a
    move/from16 v24, v0

    iget-object v0, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-object v0, v0, Landroid/media/MediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    new-instance v1, Landroid/media/MediaScanner$FileParsingTime;

    invoke-direct {v1, v2, v4, v5}, Landroid/media/MediaScanner$FileParsingTime;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_1b
    move/from16 v24, v0

    :goto_e
    move-object v1, v10

    move-object v2, v8

    move/from16 v3, v17

    move-wide/from16 v19, v4

    move/from16 v4, v18

    move/from16 v5, v22

    move-object v0, v7

    move/from16 v7, v23

    invoke-direct/range {v1 .. v7}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v12, v1

    goto :goto_f

    :catch_0
    move-exception v0

    goto :goto_10

    :cond_1c
    :goto_f
    goto :goto_11

    :catch_1
    move-exception v0

    move/from16 v9, p8

    :goto_10
    const-string v1, "MediaScanner"

    const-string v2, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-object v12
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-nez v4, :cond_1

    const/16 v6, 0x28

    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ge v4, v1, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_2

    :cond_3
    const/16 v5, 0x20

    :goto_2
    const/16 v6, 0x29

    if-eqz v2, :cond_4

    if-eq v5, v6, :cond_5

    :cond_4
    if-nez v2, :cond_c

    invoke-static {v5}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_5
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v7

    if-ltz v7, :cond_b

    invoke-static {}, Landroid/media/MediaScanner;->access$1900()[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_6

    invoke-static {}, Landroid/media/MediaScanner;->access$1900()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v7

    if-eqz v8, :cond_6

    invoke-static {}, Landroid/media/MediaScanner;->access$1900()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    return-object v0

    :cond_6
    const/16 v8, 0xff

    if-ne v7, v8, :cond_7

    return-object v0

    :cond_7
    if-ge v7, v8, :cond_a

    add-int/lit8 v0, v4, 0x1

    if-ge v0, v1, :cond_a

    if-eqz v2, :cond_8

    if-ne v5, v6, :cond_8

    add-int/lit8 v4, v4, 0x1

    :cond_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    return-object v0

    :cond_9
    goto :goto_3

    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_b
    :goto_3
    goto :goto_4

    :catch_0
    move-exception v0

    :cond_c
    :goto_4
    return-object p1
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "title;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_a

    :cond_0
    const-string v0, "artist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string v0, "artist;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_9

    :cond_1
    const-string v0, "albumartist"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "albumartist;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "band"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "band;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_8

    :cond_2
    const-string v0, "album"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "album;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_7

    :cond_3
    const-string v0, "composer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "composer;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_6

    :cond_4
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "genre"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "genre;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_b

    :cond_6
    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_22

    const-string/jumbo v0, "year;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_5

    :cond_7
    const-string/jumbo v0, "tracknumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string/jumbo v0, "tracknumber;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_4

    :cond_8
    const-string v0, "discnumber"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "set"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string/jumbo v0, "set;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_3

    :cond_9
    const-string v0, "duration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_b

    :cond_a
    const-string/jumbo v0, "writer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string/jumbo v0, "writer;"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto/16 :goto_2

    :cond_b
    const-string v0, "compilation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_b

    :cond_c
    const-string/jumbo v0, "isdrm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_d

    move v1, v2

    nop

    :cond_d
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_b

    :cond_e
    const-string v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDate:J

    goto/16 :goto_b

    :cond_f
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    goto/16 :goto_b

    :cond_10
    const-string v0, "height"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto/16 :goto_b

    :cond_11
    const-string/jumbo v0, "recordingtype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingType:I

    goto/16 :goto_b

    :cond_12
    const-string/jumbo v0, "recordingmode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mRecordingMode:I

    goto/16 :goto_b

    :cond_13
    const-string/jumbo v0, "weather"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWeatherID:I

    goto/16 :goto_b

    :cond_14
    const-string v0, "cityid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCityID:J

    goto/16 :goto_b

    :cond_15
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x2b

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/16 v5, 0x2d

    invoke-virtual {p2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p2, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v8, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v9

    if-nez v9, :cond_16

    invoke-virtual {p2, v1, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_16
    invoke-virtual {v8, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    iput v10, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v10

    const/16 v11, 0x43

    :try_start_1
    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v3, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_1
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLatitude:F

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLatitude:F

    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoLongitude:F

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVoiceLongitude:F

    goto/16 :goto_b

    :cond_17
    const-string/jumbo v0, "samplingrate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mSamplingRate:I

    goto/16 :goto_b

    :cond_18
    const-string v0, "bitspersample"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mBitDepth:I

    goto/16 :goto_b

    :cond_19
    const-string v0, "is360video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIs360video:I

    goto/16 :goto_b

    :cond_1a
    const-string v0, "3dvideotype"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->m3dvideotype:Ljava/lang/String;

    goto/16 :goto_b

    :cond_1b
    const-string/jumbo v0, "videocodecinfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mVideoCodecInfo:Ljava/lang/String;

    goto/16 :goto_b

    :cond_1c
    const-string v0, "audiocodecinfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAudioCodecInfo:Ljava/lang/String;

    goto/16 :goto_b

    :cond_1d
    const-string v0, "creationtime"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    if-eqz p2, :cond_28

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCreationTime:J

    goto :goto_b

    :cond_1e
    const-string v0, "isHDR10video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string/jumbo v0, "yes"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iput v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHDR10video:I

    goto :goto_b

    :cond_1f
    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto :goto_b

    :cond_20
    :goto_3
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto :goto_b

    :cond_21
    :goto_4
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto :goto_b

    :cond_22
    :goto_5
    invoke-direct {p0, p2, v1, v1}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto :goto_b

    :cond_23
    :goto_6
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_b

    :cond_24
    :goto_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_b

    :cond_25
    :goto_8
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_b

    :cond_26
    :goto_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_b

    :cond_27
    :goto_a
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    :cond_28
    :goto_b
    return-void
.end method

.method public isNoMediaPath(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 12

    move-object v10, p0

    const-wide/16 v0, 0x1

    if-eqz p6, :cond_0

    iget-object v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-wide v3, v2, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    add-long/2addr v3, v0

    iput-wide v3, v2, Landroid/media/MediaScanner;->mTotalCheckedDirectories:J

    goto :goto_0

    :cond_0
    iget-object v2, v10, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    iget-wide v3, v2, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    add-long/2addr v3, v0

    iput-wide v3, v2, Landroid/media/MediaScanner;->mTotalCheckedFiles:J

    :goto_0
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, v10

    move-object v1, p1

    move-wide v3, p2

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2

    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-static {v0}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "application/ogg"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    return-void
.end method
