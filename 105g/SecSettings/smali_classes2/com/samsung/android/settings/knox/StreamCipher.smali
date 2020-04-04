.class public Lcom/samsung/android/settings/knox/StreamCipher;
.super Ljava/lang/Object;
.source "StreamCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final EMPTY_BYTES:[B

.field private static sInstance:Lcom/samsung/android/settings/knox/StreamCipher;


# instance fields
.field private final mKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;",
            ">;"
        }
    .end annotation
.end field

.field private mPublicHandle:J

.field private final mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "eng"

    const-string v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/knox/StreamCipher;->DEBUG:Z

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/samsung/android/settings/knox/StreamCipher;->EMPTY_BYTES:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mPublicHandle:J

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mSecureRandom:Ljava/security/SecureRandom;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-direct {p0}, Lcom/samsung/android/settings/knox/StreamCipher;->initKeyMap()V

    return-void
.end method

.method public static clear([B)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method private generateKey(I)[B
    .locals 3

    if-lez p1, :cond_0

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    new-array v0, v0, [B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    :goto_0
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/settings/knox/StreamCipher;
    .locals 2

    const-class v0, Lcom/samsung/android/settings/knox/StreamCipher;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/knox/StreamCipher;->sInstance:Lcom/samsung/android/settings/knox/StreamCipher;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/knox/StreamCipher;

    invoke-direct {v1}, Lcom/samsung/android/settings/knox/StreamCipher;-><init>()V

    sput-object v1, Lcom/samsung/android/settings/knox/StreamCipher;->sInstance:Lcom/samsung/android/settings/knox/StreamCipher;

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/knox/StreamCipher;->sInstance:Lcom/samsung/android/settings/knox/StreamCipher;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getKeyStreamLocked(J)Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;

    return-object v0
.end method

.method private initKeyMap()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/16 v1, 0x40

    new-array v1, v1, [B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    const-wide/16 v2, 0x0

    new-instance v4, Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;

    invoke-direct {v4, v1}, Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;-><init>([B)V

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/settings/knox/StreamCipher;->registerKeyStream(JLcom/samsung/android/settings/knox/StreamCipher$KeyStream;)Z

    sget-boolean v2, Lcom/samsung/android/settings/knox/StreamCipher;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "StreamCipher.SDP"

    const-string v3, "init :: Key map has been initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerKeyStream(JLcom/samsung/android/settings/knox/StreamCipher$KeyStream;)Z
    .locals 1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/samsung/android/settings/knox/StreamCipher;->registerKeyStream(Ljava/lang/Long;Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;)Z

    move-result v0

    return v0
.end method

.method private registerKeyStream(Ljava/lang/Long;Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/samsung/android/settings/knox/StreamCipher;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "StreamCipher.SDP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register :: handle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private streamCipher([B[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    array-length v0, p1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    array-length v0, p2

    if-eqz v0, :cond_2

    array-length v0, p1

    new-array v0, v0, [B

    array-length v1, p1

    array-length v2, p2

    const/4 v3, 0x0

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v2, v3

    array-length v3, p1

    if-ge v1, v3, :cond_1

    aget-byte v3, p1, v1

    aget-byte v4, p2, v2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    array-length v3, p2

    rem-int v3, v1, v3

    goto :goto_0

    :cond_0
    nop

    :goto_1
    move v1, v3

    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-byte v2, p1, v1

    aget-byte v3, p2, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v3, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearKeyStream()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    sget-boolean v3, Lcom/samsung/android/settings/knox/StreamCipher;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "StreamCipher.SDP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clear :: handle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mKeyMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;->destroy()V

    :cond_2
    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/knox/StreamCipher;->initKeyMap()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEncodedCipher(Ljava/lang/String;J)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/settings/knox/StreamCipher;->getEncodedCipher([BJ)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/samsung/android/settings/knox/StreamCipher;->clear([B)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/samsung/android/settings/knox/StreamCipher;->clear([B)V

    throw v1
.end method

.method public getEncodedCipher([BJ)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/settings/knox/StreamCipher;->streamCipher([BJ)[B

    move-result-object v0

    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPublicHandle()J
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/knox/StreamCipher;->issueKeyStream()J

    move-result-wide v0

    return-wide v0
.end method

.method public issueKeyStream()J
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mPublicHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mKeyMap:Ljava/util/Map;

    iget-wide v2, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mPublicHandle:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/knox/StreamCipher;->issueKeyStream(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mPublicHandle:J

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-wide v0, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mPublicHandle:J

    return-wide v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public issueKeyStream(I)J
    .locals 7

    const-wide/16 v0, 0x0

    if-gtz p1, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x64

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/knox/StreamCipher;->generateKey(I)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;-><init>([B)V

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/settings/knox/StreamCipher;->registerKeyStream(JLcom/samsung/android/settings/knox/StreamCipher$KeyStream;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-wide v0, v3

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    sget-boolean v2, Lcom/samsung/android/settings/knox/StreamCipher;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "StreamCipher.SDP"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "issue :: handle = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-wide v0
.end method

.method public restoreEncodedCipher(Ljava/lang/String;J)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    nop

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Llibcore/util/HexEncoding;->decode([CZ)[B

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/samsung/android/settings/knox/StreamCipher;->streamCipher([BJ)[B

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    move-object v0, v3

    invoke-static {v2}, Lcom/samsung/android/settings/knox/StreamCipher;->clear([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "StreamCipher.SDP"

    const-string v3, "restore :: Failed to decode cipher"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public streamCipher([BJ)[B
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/knox/StreamCipher;->EMPTY_BYTES:[B

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/knox/StreamCipher;->mKeyMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/knox/StreamCipher;->getKeyStreamLocked(J)Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;

    move-result-object v1

    if-nez v1, :cond_3

    sget-boolean v2, Lcom/samsung/android/settings/knox/StreamCipher;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "StreamCipher.SDP"

    const-string v3, "cipher :: Key stream not found... critical!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v2, Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;

    array-length v3, p1

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/knox/StreamCipher;->generateKey(I)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;-><init>([B)V

    move-object v1, v2

    invoke-direct {p0, p2, p3, v1}, Lcom/samsung/android/settings/knox/StreamCipher;->registerKeyStream(JLcom/samsung/android/settings/knox/StreamCipher$KeyStream;)Z

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/settings/knox/StreamCipher$KeyStream;->getKey()[B

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/settings/knox/StreamCipher;->streamCipher([B[B)[B

    move-result-object v3

    move-object v1, v3

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
