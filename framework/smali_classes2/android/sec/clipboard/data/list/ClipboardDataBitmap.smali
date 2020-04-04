.class public Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataBitmap.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mExtraDataPath:Ljava/lang/String;

.field private mInitBaseValue:Ljava/lang/String;

.field private mInitBaseValueCheck:Z

.field private mValue:Ljava/lang/String;

.field private mValueUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardData;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreToSemClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;-><init>()V

    invoke-virtual {p0, v1}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->restoreBaseData(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mValue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setImagePath(Ljava/lang/String;)Z

    move-object v2, v1

    check-cast v2, Lcom/samsung/android/content/clipboard/data/SemImageClipData;

    iget-object v3, p0, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->mExtraDataPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/content/clipboard/data/SemImageClipData;->setExtraDataPath(Ljava/lang/String;)Z

    return-object v1
.end method
