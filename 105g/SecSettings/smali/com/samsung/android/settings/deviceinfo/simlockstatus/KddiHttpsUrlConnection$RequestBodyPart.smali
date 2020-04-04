.class Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection$RequestBodyPart;
.super Ljava/lang/Object;
.source "KddiHttpsUrlConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestBodyPart"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;)[B
    .locals 7

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prepare HTTP Request body part"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection$RequestBodyPart;->readKddiDummyData(Landroid/content/Context;)[B

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dummy data length : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    array-length v1, v0

    const/16 v2, 0x16

    add-int/2addr v2, v1

    int-to-short v1, v2

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected message length : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "message type : 16"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->toBytes(S)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v3, 0x22

    const-string v4, "2"

    const-string v5, "persist.sys.kddi_sim_lock"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "type of request : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->getImei(Landroid/content/Context;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pki key id : 0"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->toBytes(S)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "body part written : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method private static readKddiDummyData(Landroid/content/Context;)[B
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f110010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v2

    new-array v2, v2, [B

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    nop

    return-object v1

    :goto_1
    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v2
.end method
