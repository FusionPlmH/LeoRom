.class Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;
.super Ljava/lang/Object;
.source "ClipboardConverter.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/ClipboardConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageFileFilter"
.end annotation


# instance fields
.field private final extensions:[Ljava/lang/String;

.field mFileHelper:Landroid/sec/clipboard/util/FileHelper;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/sec/clipboard/util/FileHelper;->getInstance()Landroid/sec/clipboard/util/FileHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;->mFileHelper:Landroid/sec/clipboard/util/FileHelper;

    const-string/jumbo v0, "jpg"

    const-string/jumbo v1, "png"

    const-string/jumbo v2, "gif"

    const-string/jumbo v3, "jpeg"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;->extensions:[Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/sec/clipboard/ClipboardConverter$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;->extensions:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/sec/clipboard/ClipboardConverter$ImageFileFilter;->mFileHelper:Landroid/sec/clipboard/util/FileHelper;

    invoke-virtual {v5, p1}, Landroid/sec/clipboard/util/FileHelper;->checkFile(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method