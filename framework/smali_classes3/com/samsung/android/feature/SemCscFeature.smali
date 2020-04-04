.class public Lcom/samsung/android/feature/SemCscFeature;
.super Ljava/lang/Object;
.source "SemCscFeature.java"


# static fields
.field private static final FEATURE_XML:Ljava/lang/String; = "/system/csc/feature.xml"

.field private static final MPS_FEATURE_XML:Ljava/lang/String; = "/system/csc/others.xml"

.field private static final TAG:Ljava/lang/String; = "SemCscFeature"

.field private static sInstance:Lcom/samsung/android/feature/SemCscFeature;


# instance fields
.field private final SALT_LENGTH:I

.field private final XML_HEADER:Ljava/lang/String;

.field private mFeatureList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFeatureList_2:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final salts:[B

.field private final shifts:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    const-string v0, "<?xml"

    iput-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->XML_HEADER:Ljava/lang/String;

    const/16 v0, 0x100

    iput v0, p0, Lcom/samsung/android/feature/SemCscFeature;->SALT_LENGTH:I

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/feature/SemCscFeature;->salts:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->shifts:[B

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/omc/SW_Configuration.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "/odm/omc/SW_Configuration.xml"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/product/omc/SW_Configuration.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    const-string/jumbo v4, "persist.sys.omc_path"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "persist.sys.omcnw_path"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "persist.sys.omcnw_path2"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile(ZLjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0, v0, v5}, Lcom/samsung/android/feature/SemCscFeature;->loadNetworkFeatureFile(ZLjava/lang/String;)V

    if-eqz v6, :cond_2

    invoke-direct {p0, v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->loadFeatureFile2nd(ZLjava/lang/String;)Z

    invoke-direct {p0, v0, v6}, Lcom/samsung/android/feature/SemCscFeature;->loadNetworkFeatureFile2nd(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemCscFeature"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    nop

    :array_0
    .array-data 1
        0x41t
        -0x3bt
        0x21t
        -0x22t
        0x6bt
        0x1ct
        -0x6bt
        0x37t
        0x4et
        0x11t
        -0x51t
        0x6t
        -0x50t
        -0x79t
        -0x23t
        -0x17t
        0x48t
        0x7at
        -0x3ft
        -0x2bt
        0x44t
        0x77t
        -0x4et
        -0x6ft
        -0x3ct
        0x1ft
        0x3ct
        0x39t
        0x5ct
        -0x58t
        -0x64t
        -0x45t
        -0x6at
        0x5bt
        0x45t
        0x5dt
        0x6et
        0x17t
        0x5dt
        0x35t
        -0x2ct
        -0x33t
        0x40t
        -0x50t
        0x2et
        0x2t
        -0x4t
        0xct
        -0x2dt
        0x50t
        -0x2ct
        -0x23t
        -0x6ft
        -0x1ct
        -0x42t
        -0x74t
        0x27t
        0x2t
        -0x1bt
        -0x2dt
        -0x34t
        0x7dt
        0x27t
        0x42t
        -0x5at
        0x3ft
        -0x69t
        -0x43t
        0x54t
        -0x39t
        -0x4t
        -0x4t
        0x65t
        -0x5at
        0x51t
        0xat
        -0x21t
        0x1t
        0x43t
        -0x39t
        -0x47t
        0x12t
        -0x4at
        0x66t
        0x60t
        -0x59t
        0x40t
        -0x11t
        0x36t
        -0x5et
        -0x54t
        -0x42t
        0xet
        0x77t
        0x79t
        0x2t
        -0x4et
        -0x4ft
        0x59t
        0x3ft
        0x5dt
        0x6dt
        -0x4et
        -0x33t
        0x42t
        -0x24t
        0x20t
        0x56t
        0x3t
        -0x3at
        -0xft
        0x5ct
        0x3at
        0x2t
        -0x59t
        -0x50t
        -0xdt
        -0x1t
        0x7at
        -0x4t
        0x30t
        0x3ft
        -0x2ct
        0x3bt
        0x64t
        -0x2at
        -0x2dt
        0x3bt
        -0x7t
        -0x11t
        -0x36t
        0x22t
        -0x36t
        0x47t
        -0x40t
        -0x1at
        -0x57t
        -0x50t
        -0x11t
        -0x2ct
        -0x26t
        -0x70t
        0x46t
        0xat
        -0x6at
        0x5ft
        -0x18t
        -0x4t
        -0x76t
        0x2dt
        -0x55t
        -0xdt
        0x55t
        0x19t
        -0x66t
        -0x77t
        0xdt
        -0x25t
        0x74t
        0x2et
        -0x45t
        0x3bt
        0x2at
        -0x5at
        -0x26t
        -0x69t
        0x65t
        -0x77t
        -0x24t
        0x61t
        -0x3t
        -0x3et
        -0x5bt
        -0x61t
        -0x7dt
        0x11t
        0xet
        0x6at
        -0x48t
        -0x77t
        0x63t
        0x6ft
        0x14t
        0x12t
        -0x1bt
        0x71t
        0x40t
        -0x18t
        0x4at
        -0x3ct
        -0x64t
        0x1at
        0x38t
        -0x2ct
        -0x46t
        0xct
        -0x33t
        -0x64t
        -0x20t
        -0xbt
        0x1at
        0x30t
        -0x75t
        0x62t
        -0x5dt
        0x33t
        -0x19t
        -0x4ft
        -0x1ft
        0x61t
        0x57t
        -0x69t
        -0x40t
        0x7t
        -0xdt
        -0x65t
        0x21t
        -0x7at
        0x5t
        -0x68t
        0x59t
        -0x2ct
        -0x75t
        0x3ft
        -0x50t
        -0x6t
        -0x47t
        -0x6et
        -0x1dt
        -0x69t
        0x74t
        0x6bt
        -0x5dt
        0x5bt
        -0x29t
        -0xdt
        0x14t
        -0x73t
        -0x4et
        0x2bt
        0x4ft
        -0x7at
        0x6t
        0x66t
        -0x20t
        0x34t
        -0x76t
        -0x33t
        0x48t
        -0x68t
        0x29t
        -0x26t
        0x7ct
        0x48t
        -0x7et
        -0x23t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x2t
        0x2t
        0x4t
        0x5t
        0x0t
        0x4t
        0x7t
        0x1t
        0x6t
        0x5t
        0x3t
        0x3t
        0x1t
        0x2t
        0x5t
        0x0t
        0x6t
        0x2t
        0x2t
        0x4t
        0x2t
        0x2t
        0x3t
        0x0t
        0x2t
        0x1t
        0x2t
        0x4t
        0x3t
        0x4t
        0x0t
        0x0t
        0x0t
        0x3t
        0x5t
        0x3t
        0x1t
        0x6t
        0x5t
        0x6t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x3t
        0x2t
        0x7t
        0x7t
        0x5t
        0x6t
        0x7t
        0x3t
        0x5t
        0x1t
        0x0t
        0x7t
        0x6t
        0x3t
        0x6t
        0x5t
        0x4t
        0x5t
        0x3t
        0x5t
        0x1t
        0x3t
        0x3t
        0x1t
        0x5t
        0x4t
        0x1t
        0x0t
        0x0t
        0x2t
        0x6t
        0x6t
        0x6t
        0x6t
        0x4t
        0x0t
        0x1t
        0x1t
        0x0t
        0x5t
        0x5t
        0x4t
        0x2t
        0x4t
        0x6t
        0x1t
        0x7t
        0x1t
        0x2t
        0x1t
        0x1t
        0x6t
        0x5t
        0x4t
        0x7t
        0x6t
        0x5t
        0x1t
        0x6t
        0x7t
        0x0t
        0x2t
        0x6t
        0x3t
        0x1t
        0x7t
        0x1t
        0x1t
        0x7t
        0x4t
        0x0t
        0x4t
        0x2t
        0x5t
        0x3t
        0x1t
        0x1t
        0x5t
        0x6t
        0x0t
        0x3t
        0x5t
        0x3t
        0x6t
        0x5t
        0x7t
        0x2t
        0x5t
        0x6t
        0x6t
        0x2t
        0x2t
        0x3t
        0x6t
        0x0t
        0x4t
        0x3t
        0x2t
        0x0t
        0x2t
        0x2t
        0x3t
        0x5t
        0x3t
        0x3t
        0x2t
        0x5t
        0x5t
        0x5t
        0x1t
        0x3t
        0x1t
        0x1t
        0x1t
        0x4t
        0x5t
        0x1t
        0x6t
        0x2t
        0x4t
        0x7t
        0x1t
        0x4t
        0x6t
        0x0t
        0x6t
        0x4t
        0x3t
        0x2t
        0x6t
        0x1t
        0x6t
        0x3t
        0x2t
        0x1t
        0x6t
        0x7t
        0x3t
        0x2t
        0x1t
        0x1t
        0x5t
        0x6t
        0x7t
        0x2t
        0x2t
        0x2t
        0x7t
        0x4t
        0x6t
        0x7t
        0x5t
        0x3t
        0x1t
        0x4t
        0x2t
        0x7t
        0x1t
        0x6t
        0x2t
        0x4t
        0x1t
        0x5t
        0x6t
        0x5t
        0x4t
        0x5t
        0x0t
        0x1t
        0x1t
        0x6t
        0x3t
        0x7t
        0x2t
        0x0t
        0x2t
        0x5t
        0x0t
        0x1t
        0x3t
        0x3t
        0x2t
        0x6t
        0x7t
        0x7t
        0x2t
        0x5t
        0x6t
        0x0t
        0x4t
        0x1t
        0x2t
        0x5t
        0x3t
        0x7t
        0x6t
        0x5t
        0x2t
        0x5t
        0x2t
        0x0t
        0x1t
        0x3t
        0x1t
        0x4t
        0x3t
        0x4t
        0x2t
    .end array-data
.end method

.method private _decode([B)[B
    .locals 6

    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->shifts:[B

    rem-int/lit16 v4, v1, 0x100

    aget-byte v3, v3, v4

    shl-int/2addr v2, v3

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    iget-object v4, p0, Lcom/samsung/android/feature/SemCscFeature;->shifts:[B

    rem-int/lit16 v5, v1, 0x100

    aget-byte v4, v4, v5

    rsub-int/lit8 v4, v4, 0x8

    ushr-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    aget-byte v2, v0, v1

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->salts:[B

    rem-int/lit16 v4, v1, 0x100

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private _decompressGzip([B)[B
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    const/16 v3, 0x400

    :try_start_0
    new-array v3, v3, [B

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v0, v4

    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v4, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->available()I

    move-result v5

    if-lez v5, :cond_1

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    invoke-virtual {v2, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v8

    move v7, v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    invoke-virtual {v5, v3, v6, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    const/4 v2, 0x0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3

    :goto_2
    nop

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    goto :goto_4

    :goto_3
    nop

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :goto_4
    nop

    :goto_5
    return-object v5

    :catchall_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    const/4 v2, 0x0

    goto :goto_6

    :catch_2
    move-exception v4

    goto :goto_7

    :cond_2
    :goto_6
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v0, 0x0

    goto :goto_8

    :goto_7
    nop

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :cond_3
    :goto_8
    nop

    :goto_9
    return-object v1

    :goto_a
    nop

    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V

    const/4 v2, 0x0

    goto :goto_b

    :catch_3
    move-exception v3

    goto :goto_c

    :cond_4
    :goto_b
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v0, 0x0

    goto :goto_d

    :goto_c
    nop

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_5
    :goto_d
    throw v1
.end method

.method private decode([B)[B
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->_decode([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/feature/SemCscFeature;->_decompressGzip([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/samsung/android/feature/SemCscFeature;
    .locals 1

    sget-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/feature/SemCscFeature;

    invoke-direct {v0}, Lcom/samsung/android/feature/SemCscFeature;-><init>()V

    sput-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    :cond_0
    sget-object v0, Lcom/samsung/android/feature/SemCscFeature;->sInstance:Lcom/samsung/android/feature/SemCscFeature;

    return-object v0
.end method

.method private isUseOdmProduct()Z
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/odm/omc/SW_Configuration.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/product/omc/SW_Configuration.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    :goto_0
    const/4 v2, 0x1

    return v2
.end method

.method private isXmlEncoded(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    if-eqz v2, :cond_1

    const-string v3, "<?xml"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    const-string v3, "SemCscFeature"

    const-string v4, "Encoded"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :goto_0
    nop

    :goto_1
    return v1

    :cond_1
    :goto_2
    nop

    nop

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x0

    goto :goto_3

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :goto_3
    nop

    :goto_4
    return v1

    :catchall_0
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v2

    :try_start_3
    const-string v3, "SemCscFeature"

    const-string v4, "Exception : isXmlEncoded"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v0, 0x0

    goto :goto_5

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :cond_2
    :goto_5
    nop

    :goto_6
    return v1

    :goto_7
    nop

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v0, 0x0

    goto :goto_8

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_3
    :goto_8
    throw v1
.end method

.method private loadFeatureFile(ZLjava/lang/String;)Z
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    move v9, v0

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    if-eqz p1, :cond_0

    move-object/from16 v0, p2

    goto :goto_0

    :cond_0
    const-string v0, "/system/csc"

    :goto_0
    move-object v8, v0

    new-instance v0, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/cscfeature.xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v10, v13, v11

    if-gtz v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x1

    :cond_2
    move-object v10, v0

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v10, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/feature.xml"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v10, v13, v11

    if-gtz v10, :cond_2

    :cond_4
    new-instance v10, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/others.xml"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v0, v13, v11

    if-gtz v0, :cond_5

    goto/16 :goto_9

    :cond_5
    :goto_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v2, v0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    invoke-direct {v1, v10}, Lcom/samsung/android/feature/SemCscFeature;->isXmlEncoded(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v14, v0, [B

    invoke-virtual {v3, v14}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-direct {v1, v14}, Lcom/samsung/android/feature/SemCscFeature;->decode([B)[B

    move-result-object v15

    move-object/from16 v16, v15

    new-instance v12, Ljava/io/ByteArrayInputStream;

    move-object/from16 v13, v16

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v12

    const/4 v12, 0x0

    invoke-interface {v2, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v5, v0

    :goto_4
    const/4 v12, 0x1

    if-eq v5, v12, :cond_a

    const/4 v0, 0x2

    if-ne v5, v0, :cond_7

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_5

    :cond_7
    const/4 v0, 0x4

    if-ne v5, v0, :cond_9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    iget-object v0, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_8

    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v13, v0

    :try_start_2
    const-string v13, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_8
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    iget-object v0, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_4
    const-string v13, "SemCscFeature"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    :goto_5
    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v5, v0

    :goto_6
    goto :goto_4

    :catch_2
    move-exception v0

    move-object v13, v0

    :try_start_6
    const-string v13, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :cond_a
    nop

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_8

    :goto_7
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_f

    :goto_8
    nop

    const-string v10, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_b
    :goto_9
    nop

    if-eqz v3, :cond_c

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_b

    :cond_c
    :goto_a
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    const/4 v4, 0x0

    goto :goto_c

    :goto_b
    nop

    const-string v11, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_d
    :goto_c
    nop

    :goto_d
    return v9

    :catchall_0
    move-exception v0

    move v10, v9

    move v9, v5

    move-object v5, v2

    move-object v2, v0

    goto :goto_14

    :catch_5
    move-exception v0

    :try_start_9
    const-string v10, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_e

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    move-object v3, v0

    :cond_e
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_f

    :catch_6
    move-exception v0

    :try_start_b
    const-string v10, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v3, :cond_f

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    move-object v3, v0

    :cond_f
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_f

    :catch_7
    move-exception v0

    :try_start_d
    const-string v10, "SemCscFeature"

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v3, :cond_10

    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_e

    :catch_8
    move-exception v0

    goto :goto_10

    :cond_10
    :goto_e
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :goto_f
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_12

    :goto_10
    nop

    const-string v10, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    goto :goto_13

    :cond_11
    :goto_12
    nop

    :goto_13
    return v9

    :goto_14
    nop

    if-eqz v3, :cond_12

    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    goto :goto_15

    :catch_9
    move-exception v0

    goto :goto_16

    :cond_12
    :goto_15
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    const/4 v4, 0x0

    goto :goto_17

    :goto_16
    nop

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SemCscFeature"

    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_13
    :goto_17
    throw v2
.end method

.method private loadFeatureFile2nd(ZLjava/lang/String;)Z
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    move v9, v0

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    if-eqz p1, :cond_0

    move-object/from16 v0, p2

    goto :goto_0

    :cond_0
    const-string v0, "/system/csc"

    :goto_0
    move-object v8, v0

    new-instance v0, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/cscfeature.xml"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    const-wide/16 v11, 0x0

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v10, v13, v11

    if-gtz v10, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x1

    :cond_2
    move-object v10, v0

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v10, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/feature.xml"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v10, v13, v11

    if-gtz v10, :cond_2

    :cond_4
    new-instance v10, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/others.xml"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v13

    cmp-long v0, v13, v11

    if-gtz v0, :cond_5

    goto/16 :goto_9

    :cond_5
    :goto_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    move-object v11, v0

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v2, v0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v0

    invoke-direct {v1, v10}, Lcom/samsung/android/feature/SemCscFeature;->isXmlEncoded(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v14, v0, [B

    invoke-virtual {v3, v14}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-direct {v1, v14}, Lcom/samsung/android/feature/SemCscFeature;->decode([B)[B

    move-result-object v15

    move-object/from16 v16, v15

    new-instance v12, Ljava/io/ByteArrayInputStream;

    move-object/from16 v13, v16

    invoke-direct {v12, v13}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v12

    const/4 v12, 0x0

    invoke-interface {v2, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_3
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v5, v0

    :goto_4
    const/4 v12, 0x1

    if-eq v5, v12, :cond_a

    const/4 v0, 0x2

    if-ne v5, v0, :cond_7

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_5

    :cond_7
    const/4 v0, 0x4

    if-ne v5, v0, :cond_9

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    iget-object v0, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_8

    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v13, v0

    :try_start_2
    const-string v13, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    :cond_8
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    iget-object v0, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_4
    const-string v13, "SemCscFeature"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    :goto_5
    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v5, v0

    :goto_6
    goto :goto_4

    :catch_2
    move-exception v0

    move-object v13, v0

    :try_start_6
    const-string v13, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_6

    :cond_a
    nop

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_8

    :goto_7
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_f

    :goto_8
    nop

    const-string v10, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_b
    :goto_9
    nop

    if-eqz v3, :cond_c

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_b

    :cond_c
    :goto_a
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    const/4 v4, 0x0

    goto :goto_c

    :goto_b
    nop

    const-string v11, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_d
    :goto_c
    nop

    :goto_d
    return v9

    :catchall_0
    move-exception v0

    move v10, v9

    move v9, v5

    move-object v5, v2

    move-object v2, v0

    goto :goto_14

    :catch_5
    move-exception v0

    :try_start_9
    const-string v10, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_e

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    move-object v3, v0

    :cond_e
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_f

    :catch_6
    move-exception v0

    :try_start_b
    const-string v10, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v3, :cond_f

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    move-object v3, v0

    :cond_f
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_f

    :catch_7
    move-exception v0

    :try_start_d
    const-string v10, "SemCscFeature"

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v3, :cond_10

    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_e

    :catch_8
    move-exception v0

    goto :goto_10

    :cond_10
    :goto_e
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :goto_f
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_12

    :goto_10
    nop

    const-string v10, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_11
    goto :goto_13

    :cond_11
    :goto_12
    nop

    :goto_13
    return v9

    :goto_14
    nop

    if-eqz v3, :cond_12

    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    goto :goto_15

    :catch_9
    move-exception v0

    goto :goto_16

    :cond_12
    :goto_15
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    const/4 v4, 0x0

    goto :goto_17

    :goto_16
    nop

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SemCscFeature"

    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_13
    :goto_17
    throw v2
.end method

.method private loadNetworkFeatureFile(ZLjava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    move-object v9, v0

    if-eqz p1, :cond_0

    move-object/from16 v10, p2

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v10, "/system/csc"

    :goto_0
    move-object v9, v10

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/cscfeature_network.xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gtz v11, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    move-object v2, v13

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v13

    invoke-direct {v1, v10}, Lcom/samsung/android/feature/SemCscFeature;->isXmlEncoded(Ljava/io/File;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v13

    new-array v14, v13, [B

    invoke-virtual {v3, v14}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-direct {v1, v14}, Lcom/samsung/android/feature/SemCscFeature;->decode([B)[B

    move-result-object v15

    move-object/from16 v16, v15

    new-instance v12, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v12

    const/4 v12, 0x0

    invoke-interface {v2, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v5, v0

    :goto_2
    const/4 v12, 0x1

    if-eq v5, v12, :cond_8

    const/4 v0, 0x2

    if-ne v5, v0, :cond_4

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    move-object v8, v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x4

    if-ne v5, v0, :cond_7

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    if-eqz v8, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :cond_5
    iget-object v0, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v13, v0

    :try_start_2
    const-string v13, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    iget-object v0, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_4
    const-string v13, "SemCscFeature"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    :goto_4
    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v5, v0

    :goto_5
    goto :goto_2

    :catch_2
    move-exception v0

    move-object v13, v0

    :try_start_6
    const-string v13, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :cond_8
    nop

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_7

    :goto_6
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_e

    :goto_7
    nop

    const-string v10, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_9
    :goto_8
    if-eqz v3, :cond_a

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_a

    :cond_a
    :goto_9
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    const/4 v4, 0x0

    goto :goto_b

    :goto_a
    nop

    const-string v11, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_b
    :goto_b
    nop

    :goto_c
    return-void

    :catchall_0
    move-exception v0

    move v10, v5

    move-object v5, v2

    move-object v2, v0

    goto :goto_13

    :catch_5
    move-exception v0

    :try_start_9
    const-string v10, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_c

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    move-object v3, v0

    :cond_c
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_e

    :catch_6
    move-exception v0

    :try_start_b
    const-string v10, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v3, :cond_d

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    move-object v3, v0

    :cond_d
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_e

    :catch_7
    move-exception v0

    :try_start_d
    const-string v10, "SemCscFeature"

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v3, :cond_e

    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_d

    :catch_8
    move-exception v0

    goto :goto_f

    :cond_e
    :goto_d
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :goto_e
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_11

    :goto_f
    nop

    const-string v10, "SemCscFeature"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_10
    goto :goto_12

    :cond_f
    :goto_11
    nop

    :goto_12
    return-void

    :goto_13
    nop

    if-eqz v3, :cond_10

    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    goto :goto_14

    :catch_9
    move-exception v0

    goto :goto_15

    :cond_10
    :goto_14
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    const/4 v4, 0x0

    goto :goto_16

    :goto_15
    nop

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "SemCscFeature"

    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_11
    :goto_16
    throw v2
.end method

.method private loadNetworkFeatureFile2nd(ZLjava/lang/String;)V
    .locals 18

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    move-object v9, v0

    if-eqz p1, :cond_0

    move-object/from16 v10, p2

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v10, "/system/csc"

    :goto_0
    move-object v9, v10

    new-instance v10, Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/cscfeature_network.xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gtz v11, :cond_1

    goto/16 :goto_8

    :cond_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    move-object v2, v13

    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v13

    invoke-direct {v1, v10}, Lcom/samsung/android/feature/SemCscFeature;->isXmlEncoded(Ljava/io/File;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v13

    new-array v14, v13, [B

    invoke-virtual {v3, v14}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-direct {v1, v14}, Lcom/samsung/android/feature/SemCscFeature;->decode([B)[B

    move-result-object v15

    move-object/from16 v16, v15

    new-instance v12, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v4, v12

    const/4 v12, 0x0

    invoke-interface {v2, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    move v5, v0

    :goto_2
    const/4 v12, 0x1

    if-eq v5, v12, :cond_8

    const/4 v0, 0x2

    if-ne v5, v0, :cond_4

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    move-object v8, v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x4

    if-ne v5, v0, :cond_7

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    if-eqz v6, :cond_7

    if-eqz v7, :cond_7

    if-eqz v8, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ","

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :cond_5
    iget-object v0, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v0, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    :try_start_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v13, v0

    :try_start_2
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_6
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    iget-object v0, v1, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v0, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_7
    :goto_4
    :try_start_5
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move v5, v0

    :goto_5
    goto :goto_2

    :catch_2
    move-exception v0

    move-object v13, v0

    :try_start_6
    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :cond_8
    nop

    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_7

    :goto_6
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_e

    :goto_7
    nop

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_9
    :goto_8
    if-eqz v3, :cond_a

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    goto :goto_9

    :catch_4
    move-exception v0

    goto :goto_a

    :cond_a
    :goto_9
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    const/4 v4, 0x0

    goto :goto_b

    :goto_a
    nop

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_b
    :goto_b
    nop

    :goto_c
    return-void

    :catchall_0
    move-exception v0

    move v10, v5

    move-object v5, v2

    move-object v2, v0

    goto :goto_13

    :catch_5
    move-exception v0

    :try_start_9
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v3, :cond_c

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    move-object v3, v0

    :cond_c
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_e

    :catch_6
    move-exception v0

    :try_start_b
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v3, :cond_d

    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    move-object v3, v0

    :cond_d
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_e

    :catch_7
    move-exception v0

    :try_start_d
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    if-eqz v3, :cond_e

    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    move-object v3, v0

    goto :goto_d

    :catch_8
    move-exception v0

    goto :goto_f

    :cond_e
    :goto_d
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    :goto_e
    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_11

    :goto_f
    nop

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_10
    goto :goto_12

    :cond_f
    :goto_11
    nop

    :goto_12
    return-void

    :goto_13
    nop

    if-eqz v3, :cond_10

    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    const/4 v3, 0x0

    goto :goto_14

    :catch_9
    move-exception v0

    goto :goto_15

    :cond_10
    :goto_14
    if-eqz v4, :cond_11

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    const/4 v4, 0x0

    goto :goto_16

    :goto_15
    nop

    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    nop

    :cond_11
    :goto_16
    throw v2
.end method


# virtual methods
.method public getBoolean(ILjava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdmProduct()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "ril.NwNmId2"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_3
    return v0

    :catch_0
    move-exception v1

    return v0

    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdmProduct()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string/jumbo v0, "ril.NwNmId2"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_3
    return p3

    :catch_0
    move-exception v0

    return p3

    :cond_4
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "ril.NwNmId"

    const-string/jumbo v3, "null"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "null"

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_2
    return v1

    :catch_0
    move-exception v0

    return v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 5

    :try_start_0
    const-string/jumbo v0, "ril.NwNmId"

    const-string/jumbo v1, "null"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "null"

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_2
    return p2

    :catch_0
    move-exception v0

    return p2
.end method

.method public getInt(ILjava/lang/String;)I
    .locals 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdmProduct()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    :try_start_0
    const-string/jumbo v1, "ril.NwNmId2"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    if-nez v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v3, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_3
    return v0

    :catch_0
    move-exception v1

    return v0

    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInt(ILjava/lang/String;I)I
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdmProduct()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string/jumbo v0, "ril.NwNmId2"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_3
    return p3

    :catch_0
    move-exception v0

    return p3

    :cond_4
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_0
    const-string/jumbo v2, "ril.NwNmId"

    const-string/jumbo v3, "null"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "null"

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v0, v3

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_2
    return v1

    :catch_0
    move-exception v0

    return v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "ril.NwNmId"

    const-string/jumbo v2, "null"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "null"

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_2
    return p2

    :catch_0
    move-exception v0

    return p2
.end method

.method public getInteger(ILjava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInteger(ILjava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getInt(ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdmProduct()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string/jumbo v0, "ril.NwNmId2"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string v1, ""

    return-object v1

    :cond_4
    :goto_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/feature/SemCscFeature;->isUseOdmProduct()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    const-string/jumbo v0, "ril.NwNmId2"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    invoke-virtual {v2, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    return-object p3

    :catch_0
    move-exception v0

    return-object p3

    :cond_4
    :goto_1
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string/jumbo v0, "ril.NwNmId"

    const-string/jumbo v1, "null"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "null"

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string v1, ""

    return-object v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "ril.NwNmId"

    const-string/jumbo v2, "null"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "null"

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    return-object p2

    :catch_0
    move-exception v0

    return-object p2
.end method

.method public tracer(I)Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "SemCscFeature"

    const-string/jumbo v1, "mFeatureList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList:Ljava/util/Hashtable;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "SemCscFeature"

    const-string/jumbo v1, "mFeatureList_2"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/feature/SemCscFeature;->mFeatureList_2:Ljava/util/Hashtable;

    return-object v0

    :cond_1
    const-string v0, "SemCscFeature"

    const-string v1, "Invalid feature table number"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method
