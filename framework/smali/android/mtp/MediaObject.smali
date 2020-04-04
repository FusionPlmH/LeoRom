.class Landroid/mtp/MediaObject;
.super Ljava/lang/Object;
.source "MTPJNIInterface.java"


# static fields
.field static final TAG:Ljava/lang/String; = "MTPJNIInterface"


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public composer:Ljava/lang/String;

.field public creationDate:Ljava/lang/String;

.field public dateTaken:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public duration:J

.field public filename:Ljava/lang/String;

.field public genreName:Ljava/lang/String;

.field public height:J

.field public id:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;

.field public mimeTypeEnum:I

.field public modificationDate:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public size:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public width:J

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/mtp/MediaObject;->duration:J

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    const/4 v2, 0x3

    iput v2, p0, Landroid/mtp/MediaObject;->mimeTypeEnum:I

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Landroid/mtp/MediaObject;->year:I

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    iput-wide v0, p0, Landroid/mtp/MediaObject;->width:J

    iput-wide v0, p0, Landroid/mtp/MediaObject;->height:J

    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MediaObject;->dateTaken:Ljava/lang/String;

    const-string v0, "MTPJNIInterface"

    const-string v1, "Inside MediaObject Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, v0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/mtp/MediaObject;->duration:J

    const-string v3, ""

    iput-object v3, v0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    const/4 v3, 0x3

    iput v3, v0, Landroid/mtp/MediaObject;->mimeTypeEnum:I

    const-string v3, ""

    iput-object v3, v0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, v0, Landroid/mtp/MediaObject;->year:I

    const-string v3, ""

    iput-object v3, v0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, v0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    iput-wide v1, v0, Landroid/mtp/MediaObject;->width:J

    iput-wide v1, v0, Landroid/mtp/MediaObject;->height:J

    const-string v1, ""

    iput-object v1, v0, Landroid/mtp/MediaObject;->dateTaken:Ljava/lang/String;

    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/mtp/MediaObject;->filename:Ljava/lang/String;

    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/mtp/MediaObject;->album:Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/mtp/MediaObject;->artist:Ljava/lang/String;

    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/mtp/MediaObject;->composer:Ljava/lang/String;

    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/mtp/MediaObject;->creationDate:Ljava/lang/String;

    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/mtp/MediaObject;->description:Ljava/lang/String;

    move-wide/from16 v7, p7

    iput-wide v7, v0, Landroid/mtp/MediaObject;->duration:J

    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/mtp/MediaObject;->id:Ljava/lang/String;

    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/mtp/MediaObject;->language:Ljava/lang/String;

    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/mtp/MediaObject;->latitude:Ljava/lang/String;

    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/mtp/MediaObject;->longitude:Ljava/lang/String;

    move/from16 v13, p13

    iput v13, v0, Landroid/mtp/MediaObject;->mimeTypeEnum:I

    move-object/from16 v14, p14

    iput-object v14, v0, Landroid/mtp/MediaObject;->modificationDate:Ljava/lang/String;

    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/mtp/MediaObject;->path:Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Landroid/mtp/MediaObject;->size:Ljava/lang/String;

    move-object/from16 v1, p17

    iput-object v1, v0, Landroid/mtp/MediaObject;->title:Ljava/lang/String;

    move/from16 v1, p18

    iput v1, v0, Landroid/mtp/MediaObject;->year:I

    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/mtp/MediaObject;->genreName:Ljava/lang/String;

    move-wide/from16 v1, p20

    iput-wide v1, v0, Landroid/mtp/MediaObject;->width:J

    move-wide/from16 v1, p22

    iput-wide v1, v0, Landroid/mtp/MediaObject;->height:J

    move-object/from16 v1, p24

    iput-object v1, v0, Landroid/mtp/MediaObject;->dateTaken:Ljava/lang/String;

    return-void
.end method
