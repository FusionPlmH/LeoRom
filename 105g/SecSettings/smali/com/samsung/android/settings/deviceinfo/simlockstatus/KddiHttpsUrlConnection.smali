.class public Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;
.super Ljava/lang/Object;
.source "KddiHttpsUrlConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection$RequestBodyPart;,
        Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection$SamsungOem;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsSucceed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getAuthorizationValue()Ljava/lang/String;
    .locals 4

    const-string v0, "aHgq8b2NBs:"

    const-string v1, "1"

    const-string v2, "persist.sys.kddi_sim_lock"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "aagq3b1NBs:"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Basic "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getUserAgentValue()Ljava/lang/String;
    .locals 1

    const-string v0, "KD-14/0001"

    return-object v0
.end method

.method private static processResponseBodyPart(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 9

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v1, "process return body part()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "3"

    const-string v1, "persist.sys.kddi_sim_lock"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v2, "no response body part available property is 3"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    sget-object v1, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entire message length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "server status code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    sget-object v4, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "server text length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v3, [B

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    sget-object v5, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "server text : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v1, -0x1

    add-int/lit8 v5, v5, -0x2

    add-int/lit8 v5, v5, -0x4

    add-int/lit8 v5, v5, -0x2

    sub-int/2addr v5, v3

    new-array v5, v5, [B

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "new sim lock policy file length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->copyRemainingByteBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v6

    return-object v6

    :cond_2
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v2, "no response body part available"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static readInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 7

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v1, "read input stream"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/16 v1, 0x1000

    new-array v1, v1, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    move v4, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v0, v3

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byte buffer read : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    nop

    return-object v0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    return-object v4

    :goto_1
    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method


# virtual methods
.method public isSucceed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    return v0
.end method

.method public post(Landroid/content/Context;)Ljava/nio/ByteBuffer;
    .locals 10

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v1, "connect()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    const-string v4, "https://slcs.device.kddi.ne.jp/SIM/servlet/SimServlet"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v4

    const/16 v4, 0x2710

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoInput(Z)V

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    const-string v4, "Authorization"

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->getAuthorizationValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "User-Agent"

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->getUserAgentValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Type"

    const-string v5, "application/octet-stream"

    invoke-virtual {v1, v4, v5}, Ljavax/net/ssl/HttpsURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "write request body"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    invoke-static {p1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection$RequestBodyPart;->build(Landroid/content/Context;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "response code : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", message : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0xc8

    if-ne v4, v6, :cond_1

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v7, "check input stream"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->readInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->processResponseBodyPart(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v7

    move-object v0, v7

    if-eqz v0, :cond_0

    sget-object v7, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "simlock policy buffer capacity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    :cond_0
    sget-object v7, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "is succeed to get simlock policy buffer : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->mIsSucceed:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v6, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;

    const-string v7, "check error stream"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->readInputStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_2
    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    nop

    return-object v0

    :goto_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    invoke-static {v2}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method
