.class public Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;
.super Ljava/lang/Object;
.source "RecordReader.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private jsonReaderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/JsonReader;",
            ">;"
        }
    .end annotation
.end field

.field private location:I

.field private reader:Landroid/util/JsonReader;

.field private size:I

.field private final sourceKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/JsonReader;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->location:I

    iput v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->size:I

    iput-object p2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->sourceKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->jsonReaderList:Ljava/util/List;

    iput v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->location:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->size:I

    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->jsonReaderList:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->location:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->location:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonReader;

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->reader:Landroid/util/JsonReader;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/scloud/oem/lib/backup/record/RecordReader;->reader:Landroid/util/JsonReader;

    invoke-virtual {v0}, Landroid/util/JsonReader;->beginArray()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
