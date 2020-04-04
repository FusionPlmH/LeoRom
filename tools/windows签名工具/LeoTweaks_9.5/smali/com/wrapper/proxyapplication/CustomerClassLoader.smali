.class public Lcom/wrapper/proxyapplication/CustomerClassLoader;
.super Ldalvik/system/PathClassLoader;
.source "CustomerClassLoader.java"


# static fields
.field private static final VERBOSE_DEBUG:Z


# instance fields
.field private initialized:Z

.field private final libPath:Ljava/lang/String;

.field private final mDexOutputPath:Ljava/lang/String;

.field private mDexs:[Ldalvik/system/DexFile;

.field private mFiles:[Ljava/io/File;

.field private mLibPaths:[Ljava/lang/String;

.field private mPaths:[Ljava/lang/String;

.field private mZips:[Ljava/util/zip/ZipFile;

.field private final path:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v3, ""

    invoke-virtual {p4}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {p0, v3, p3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    :cond_1
    iput-object p1, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->path:Ljava/lang/String;

    iput-object p3, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->libPath:Ljava/lang/String;

    iput-object p2, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mDexOutputPath:Ljava/lang/String;

    :try_start_0
    const-string v3, "parent"

    invoke-static {p4, v3}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, p4, p0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->ensureInit()V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v1

    throw v1
.end method

.method private native ShowLogs(Ljava/lang/String;I)I
.end method

.method private declared-synchronized ensureInit()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v9, 0x1

    :try_start_1
    iput-boolean v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->initialized:Z

    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->path:Ljava/lang/String;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    array-length v3, v9

    new-array v9, v3, [Ljava/io/File;

    iput-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mFiles:[Ljava/io/File;

    new-array v9, v3, [Ljava/util/zip/ZipFile;

    iput-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    new-array v9, v3, [Ldalvik/system/DexFile;

    iput-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mDexs:[Ldalvik/system/DexFile;

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_4

    const-string v9, "java.library.path"

    const-string v10, "."

    invoke-static {v9, v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "path.separator"

    const-string v10, ":"

    invoke-static {v9, v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "file.separator"

    const-string v10, "/"

    invoke-static {v9, v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->libPath:Ljava/lang/String;

    if-eqz v9, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->libPath:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    :cond_2
    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mLibPaths:[Ljava/lang/String;

    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mLibPaths:[Ljava/lang/String;

    array-length v3, v9

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_0

    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-virtual {v9, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v10, v9, v1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance v5, Ljava/io/File;

    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v9, v9, v1

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mFiles:[Ljava/io/File;

    aput-object v5, v9, v1

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_5

    :try_start_2
    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    new-instance v10, Ljava/util/zip/ZipFile;

    invoke-direct {v10, v5}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    aput-object v10, v9, v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    :try_start_3
    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mDexOutputPath:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v9, v9, v1

    iget-object v10, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mDexOutputPath:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mDexs:[Ldalvik/system/DexFile;

    iget-object v10, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v10, v10, v1

    const/4 v11, 0x0

    invoke-static {v10, v4, v11}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    move-result-object v10

    aput-object v10, v9, v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    new-instance v9, Ljava/io/IOException;

    const-string v10, "load dex fail"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    :catch_1
    move-exception v2

    :try_start_5
    new-instance v9, Ljava/io/IOException;

    const-string v10, "load dex fail"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    iget-object v6, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->libPath:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :catch_2
    move-exception v9

    goto :goto_3
.end method

.method private static findField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/NoSuchFieldException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Field "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private static generateOutputName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x50

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    move-object v3, p0

    :goto_0
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v4, ".dex"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private isInArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadFromArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p1, p2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return-object v6

    :cond_0
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v8

    long-to-int v7, v8

    invoke-direct {v1, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v7, 0x1000

    new-array v0, v7, [B

    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v1, v0, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private loadFromDirectory(Ljava/lang/String;)[B
    .locals 7

    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v4, v4

    new-array v0, v4, [B

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->read([B)I

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error reading from "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/16 v12, 0x2f

    const/16 v11, 0x2e

    :try_start_0
    invoke-direct {p0}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->ensureInit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    array-length v6, v9

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v6, :cond_0

    new-instance v9, Ljava/lang/ClassNotFoundException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " in loader "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v9, v9, v5

    if-eqz v9, :cond_2

    invoke-direct {p0, p1, v5}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->ShowLogs(Ljava/lang/String;I)I

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mDexs:[Ldalvik/system/DexFile;

    aget-object v9, v9, v5

    invoke-virtual {v9, v8, p0}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_2
    return-object v1

    :cond_1
    :try_start_1
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v1, v0

    goto :goto_2

    :cond_2
    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v9, v9, v5

    if-eqz v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".class"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v9, v9, v5

    invoke-direct {p0, v9, v4}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->loadFromArchive(Ljava/util/zip/ZipFile;Ljava/lang/String;)[B

    move-result-object v2

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-object v9, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mFiles:[Ljava/io/File;

    aget-object v7, v9, v5

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".class"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->loadFromDirectory(Ljava/lang/String;)[B

    move-result-object v2

    goto :goto_3

    :catch_1
    move-exception v9

    goto :goto_3
.end method

.method public findLibrary(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    :try_start_0
    invoke-direct {p0}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->ensureInit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    iget-object v6, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mLibPaths:[Ljava/lang/String;

    array-length v6, v6

    if-lt v2, v6, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_2
    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mLibPaths:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findLibrary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected findResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 8

    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    if-eqz v4, :cond_0

    :goto_0
    return-object v4

    :cond_0
    iget-object v6, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    array-length v2, v6

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mFiles:[Ljava/io/File;

    aget-object v3, v6, v1

    iget-object v6, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mZips:[Ljava/util/zip/ZipFile;

    aget-object v5, v6, v1

    iget-object v6, p0, Lcom/wrapper/proxyapplication/CustomerClassLoader;->mPaths:[Ljava/lang/String;

    aget-object v6, v6, v1

    const-string v7, ".dex"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    new-instance v4, Ljava/net/URL;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "jar:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toURL()Ljava/net/URL;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v9, 0x0

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ldalvik/system/PathClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v2, "Unknown"

    const-string v3, "0.0"

    const-string v4, "Unknown"

    const-string v5, "Unknown"

    const-string v6, "0.0"

    const-string v7, "Unknown"

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/wrapper/proxyapplication/CustomerClassLoader;->definePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Package;

    move-result-object v9

    :cond_0
    monitor-exit p0

    :cond_1
    return-object v9

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
