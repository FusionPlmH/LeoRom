.class public Lcom/sec/android/securestorage/SecureStorage;
.super Ljava/lang/Object;
.source "SecureStorage.java"

# interfaces
.implements Lcom/samsung/android/util/LibraryVersionQuery;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
    }
.end annotation


# static fields
.field private static final DOUBLE_SIZE:I = 0x8

.field private static final INTEGER_SIZE:I = 0x4

.field private static secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/sec/android/securestorage/SecureStorageJNI;->getInstance()Lcom/sec/android/securestorage/SecureStorageJNI;

    move-result-object v0

    sput-object v0, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize()I
    .locals 1

    sget-object v0, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->initialize()I

    move-result v0

    return v0
.end method

.method public static isSupported()Z
    .locals 1

    sget-object v0, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->isSupported()Z

    move-result v0

    return v0
.end method

.method private throwException(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;

    const-string v1, "Error: input data are incorrect"

    invoke-direct {v0, v1}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwException(ZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;

    invoke-direct {v0, p2}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private throwJNIException(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    new-instance v0, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;

    invoke-direct {v0, p1}, Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static version()I
    .locals 1

    sget-object v0, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v0}, Lcom/sec/android/securestorage/SecureStorageJNI;->getVersion()I

    move-result v0

    return v0
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->decrypt([B)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    move v0, v1

    nop

    :cond_1
    const-string v1, "Error: input data are incorrect"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return-object v2
.end method

.method public decrypt([BLjava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->decrypt([BLjava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_2
    if-nez v2, :cond_2

    move v0, v1

    nop

    :cond_2
    const-string v1, "Error: input data are incorrect"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return-object v2
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->delete(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v1
.end method

.method public encrypt([B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->encrypt([B)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    move v0, v1

    nop

    :cond_1
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return-object v2
.end method

.method public encrypt([BLjava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->encrypt([BLjava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_2
    if-nez v2, :cond_2

    move v0, v1

    nop

    :cond_2
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return-object v2
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v1, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v1, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    move v0, v1

    nop

    :cond_1
    const-string v1, "Error: input data are incorrect"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v1, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    const-string v4, "Error: input data are incorrect"

    invoke-direct {p0, v3, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v3, v0

    new-array v3, v3, [Z

    move v4, v1

    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-byte v5, v0, v4

    if-ne v5, v2, :cond_1

    aput-boolean v2, v3, v4

    goto :goto_3

    :cond_1
    aput-boolean v1, v3, v4

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    return-object v3
.end method

.method public getBooleanArray(Ljava/lang/String;Ljava/lang/String;)[Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    move v3, v1

    goto :goto_2

    :cond_1
    move v3, v0

    :goto_2
    const-string v4, "Error: input data are incorrect"

    invoke-direct {p0, v3, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v3, v2

    new-array v3, v3, [Z

    move v4, v0

    :goto_3
    array-length v5, v3

    if-ge v4, v5, :cond_3

    aget-byte v5, v2, v4

    if-ne v5, v1, :cond_2

    aput-boolean v1, v3, v4

    goto :goto_4

    :cond_2
    aput-boolean v0, v3, v4

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    return-object v3
.end method

.method public getByte(Ljava/lang/String;)B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v1, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    aget-byte v1, v0, v1

    return v1
.end method

.method public getByte(Ljava/lang/String;Ljava/lang/String;)B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    aget-byte v0, v2, v1

    return v0
.end method

.method public getByteArray(Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v1, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v1, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return-object v0
.end method

.method public getByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    move v0, v1

    nop

    :cond_1
    const-string v1, "Error: input data are incorrect"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return-object v2
.end method

.method public getChar(Ljava/lang/String;)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v1, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v1, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    int-to-char v1, v1

    return v1
.end method

.method public getChar(Ljava/lang/String;Ljava/lang/String;)C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    move v0, v1

    nop

    :cond_1
    const-string v1, "Error: input data are incorrect"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public getCharArray(Ljava/lang/String;)[C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v1, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v2, v0

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    nop

    :goto_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v4

    aput-char v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    return-object v2
.end method

.method public getCharArray(Ljava/lang/String;Ljava/lang/String;)[C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move v1, v0

    :goto_2
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v1, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v1, v2

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    nop

    :goto_3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v4

    aput-char v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    return-object v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v1, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v1, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    move v0, v1

    nop

    :cond_1
    const-string v1, "Error: input data are incorrect"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-wide v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v1, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v2, v0

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [D

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    nop

    :goto_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    return-object v2
.end method

.method public getDoubleArray(Ljava/lang/String;Ljava/lang/String;)[D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move v1, v0

    :goto_2
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v1, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v1, v2

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [D

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    nop

    :goto_3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getDouble()D

    move-result-wide v4

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    return-object v1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v1, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v1, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    return v1
.end method

.method public getInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    move v0, v1

    nop

    :cond_1
    const-string v1, "Error: input data are incorrect"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v1, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v2, v0

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [I

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    nop

    :goto_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    return-object v2
.end method

.method public getIntArray(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move v1, v0

    :goto_2
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v1, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v1, v2

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    nop

    :goto_3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    aput v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    return-object v1
.end method

.method public getLibraryVersion()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string v1, "1.0"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v1, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v1, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getLong(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    move v0, v1

    nop

    :cond_1
    const-string v1, "Error: input data are incorrect"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v1, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v2, v0

    div-int/lit8 v2, v2, 0x8

    new-array v2, v2, [J

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    nop

    :goto_2
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    return-object v2
.end method

.method public getLongArray(Ljava/lang/String;Ljava/lang/String;)[J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move v1, v0

    :goto_2
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v1, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v1, v2

    div-int/lit8 v1, v1, 0x8

    new-array v1, v1, [J

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    nop

    :goto_3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v1, p1}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const-string v2, "Error: input data are incorrect"

    invoke-direct {p0, v1, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    :try_start_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->get(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    move v0, v1

    nop

    :cond_1
    const-string v1, "Error: input data are incorrect"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public put(Ljava/lang/String;B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    const/4 v2, 0x1

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    new-array v4, v2, [B

    aput-byte p2, v4, v0

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z

    move-result v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_0

    move v0, v2

    nop

    :cond_0
    const-string v2, "Error: internal error"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v1
.end method

.method public put(Ljava/lang/String;BLjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    move v2, v1

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    new-array v4, v0, [B

    aput-byte p2, v4, v1

    invoke-virtual {v3, p1, v4, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2
.end method

.method public put(Ljava/lang/String;C)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    int-to-long v3, p2

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z

    move-result v2
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    const-string v2, "Error: internal error"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v1
.end method

.method public put(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    move v2, v1

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, p1, v4, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2
.end method

.method public put(Ljava/lang/String;D)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z

    move-result v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    nop

    if-nez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    const-string v3, "Error: internal error"

    invoke-direct {p0, v1, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2
.end method

.method public put(Ljava/lang/String;DLjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v1

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, p1, v5, p4}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    nop

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3
.end method

.method public put(Ljava/lang/String;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    int-to-long v3, p2

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z

    move-result v2
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    const-string v2, "Error: internal error"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v1
.end method

.method public put(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    move v2, v1

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, p1, v4, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2
.end method

.method public put(Ljava/lang/String;J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    sget-object v2, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z

    move-result v2
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    if-nez v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    const-string v2, "Error: internal error"

    invoke-direct {p0, v0, v2}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v1
.end method

.method public put(Ljava/lang/String;JLjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    move v2, v1

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, p1, v4, p4}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    move v2, v1

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z

    move-result v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    nop

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    move v2, v1

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, p1, v4, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_2
    nop

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    move v0, v1

    :goto_3
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2
.end method

.method public put(Ljava/lang/String;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string v4, "UTF-8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z

    move-result v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_0
    nop

    if-nez v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    const-string v3, "Error: internal error"

    invoke-direct {p0, v1, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2
.end method

.method public put(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v1

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    const-string v5, "UTF-8"

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, p1, v5, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    nop

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3
.end method

.method public put(Ljava/lang/String;[B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    move v2, v1

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z

    move-result v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2
.end method

.method public put(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    move v2, v1

    :try_start_0
    sget-object v3, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v3, p1, p2, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_2
    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    move v0, v1

    :goto_3
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v2
.end method

.method public put(Ljava/lang/String;[C)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x2

    array-length v3, p2

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    move v3, v1

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z

    move-result v4
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3
.end method

.method public put(Ljava/lang/String;[CLjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x2

    array-length v3, p2

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    move v3, v1

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, p1, v5, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_2
    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    move v0, v1

    :goto_3
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3
.end method

.method public put(Ljava/lang/String;[D)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/16 v2, 0x8

    array-length v3, p2

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    move v3, v1

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z

    move-result v4
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3
.end method

.method public put(Ljava/lang/String;[DLjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/16 v2, 0x8

    array-length v3, p2

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/DoubleBuffer;->put([D)Ljava/nio/DoubleBuffer;

    move v3, v1

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, p1, v5, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_2
    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    move v0, v1

    :goto_3
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3
.end method

.method public put(Ljava/lang/String;[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x4

    array-length v3, p2

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move v3, v1

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z

    move-result v4
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3
.end method

.method public put(Ljava/lang/String;[ILjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/4 v2, 0x4

    array-length v3, p2

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move v3, v1

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, p1, v5, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_2
    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    move v0, v1

    :goto_3
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3
.end method

.method public put(Ljava/lang/String;[J)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/16 v2, 0x8

    array-length v3, p2

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    move v3, v1

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z

    move-result v4
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_1
    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3
.end method

.method public put(Ljava/lang/String;[JLjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    const/16 v2, 0x8

    array-length v3, p2

    mul-int/2addr v2, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/LongBuffer;->put([J)Ljava/nio/LongBuffer;

    move v3, v1

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v4, p1, v5, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_2
    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    move v0, v1

    :goto_3
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3
.end method

.method public put(Ljava/lang/String;[Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v2, p2

    new-array v2, v2, [B

    move v3, v1

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_2

    aget-boolean v4, p2, v3

    if-eqz v4, :cond_1

    aput-byte v0, v2, v3

    goto :goto_2

    :cond_1
    aput-byte v1, v2, v3

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v1

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v4, p1, v2}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[B)Z

    move-result v4
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_3

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_3
    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    move v0, v1

    :goto_4
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3
.end method

.method public put(Ljava/lang/String;[ZLjava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/android/securestorage/SecureStorage$SecureStorageException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    if-nez p3, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const-string v3, "Error: input data are incorrect"

    invoke-direct {p0, v2, v3}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    array-length v2, p2

    new-array v2, v2, [B

    move v3, v1

    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_3

    aget-boolean v4, p2, v3

    if-eqz v4, :cond_2

    aput-byte v0, v2, v3

    goto :goto_3

    :cond_2
    aput-byte v1, v2, v3

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v1

    :try_start_0
    sget-object v4, Lcom/sec/android/securestorage/SecureStorage;->secureStorageJNI:Lcom/sec/android/securestorage/SecureStorageJNI;

    invoke-virtual {v4, p1, v2, p3}, Lcom/sec/android/securestorage/SecureStorageJNI;->put(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    goto :goto_4

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lcom/sec/android/securestorage/SecureStorageJNI$SecureStorageExceptionJNI;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/android/securestorage/SecureStorage;->throwJNIException(Ljava/lang/String;)V

    :goto_4
    if-nez v3, :cond_4

    goto :goto_5

    :cond_4
    move v0, v1

    :goto_5
    const-string v1, "Error: internal error"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/securestorage/SecureStorage;->throwException(ZLjava/lang/String;)V

    return v3
.end method
