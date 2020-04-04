.class public final Lcom/samsung/android/service/OcfKeyService/SemOcfKeyServiceManager;
.super Ljava/lang/Object;
.source "SemOcfKeyServiceManager.java"


# static fields
.field public static final ERROR_DEVICE_INSECURE:I = -0x4

.field public static final ERROR_EXCEPTION_OCCUR:I = -0x6

.field public static final ERROR_INVALID_PARAMETER:I = -0x3

.field public static final ERROR_NO_AVAILABLE_KEY:I = -0x7

.field public static final ERROR_NO_SERVICE:I = -0x2

.field public static final ERROR_PERMISSION_DENIED:I = -0x1

.field public static final ERROR_TZ_OPERATION:I = -0x5

.field private static MAX_CERTIFICATE_LENGTH:I = 0x0

.field private static MAX_EXPONENT_LENGTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemOcfKeyServiceManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2000

    sput v0, Lcom/samsung/android/service/OcfKeyService/SemOcfKeyServiceManager;->MAX_CERTIFICATE_LENGTH:I

    const/16 v0, 0x200

    sput v0, Lcom/samsung/android/service/OcfKeyService/SemOcfKeyServiceManager;->MAX_EXPONENT_LENGTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCertificateChain([B)I
    .locals 2

    const-string v0, "SemOcfKeyServiceManager"

    const-string v1, "getCertificateChain"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 v0, -0x6

    return v0

    :cond_0
    array-length v0, p1

    sget v1, Lcom/samsung/android/service/OcfKeyService/SemOcfKeyServiceManager;->MAX_CERTIFICATE_LENGTH:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x3

    return v0

    :cond_1
    array-length v0, p1

    return v0
.end method

.method public isSupported()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_KNOX_SUPPORT_UKS"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "SemOcfKeyServiceManager"

    const-string v2, "OcfKeyService is supported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "SemOcfKeyServiceManager"

    const-string v2, "OcfKeyService is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public sign([B[B)I
    .locals 3

    const-string v0, "SemOcfKeyServiceManager"

    const-string/jumbo v1, "sign"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x3

    if-nez p1, :cond_0

    const-string v1, "SemOcfKeyServiceManager"

    const-string/jumbo v2, "message is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, -0x6

    return v0

    :cond_1
    array-length v1, p2

    sget v2, Lcom/samsung/android/service/OcfKeyService/SemOcfKeyServiceManager;->MAX_EXPONENT_LENGTH:I

    if-ge v1, v2, :cond_2

    return v0

    :cond_2
    array-length v0, p2

    return v0
.end method
