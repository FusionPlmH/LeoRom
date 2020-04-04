.class Landroid/os/Environment$KnoxUtil;
.super Ljava/lang/Object;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KnoxUtil"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getExternalDirs(I)[Ljava/io/File;
    .locals 10

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isExternalStorageEnabled(I)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v2

    array-length v3, v2

    new-array v3, v3, [Ljava/io/File;

    const/4 v4, 0x0

    move v5, v4

    move v4, v1

    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_3

    aget-object v6, v2, v4

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/storage/Private"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    aget-object v6, v2, v4

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    aget-object v6, v2, v4

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v2, v4

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "knox"

    aput-object v8, v7, v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    aput-object v6, v3, v4

    goto :goto_1

    :cond_2
    aget-object v6, v2, v4

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v6

    aput-object v6, v3, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    array-length v4, v2

    if-ge v5, v4, :cond_5

    new-array v4, v5, [Ljava/io/File;

    nop

    :goto_2
    if-ge v1, v5, :cond_4

    aget-object v6, v3, v1

    aput-object v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object v4

    :cond_5
    return-object v3
.end method
