.class public final Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;
.super Ljava/lang/Object;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# instance fields
.field private mBioCryptoObject:Landroid/hardware/biometrics/CryptoObject;

.field private final mFidoRequestData:[B

.field private mFidoResultData:[B


# direct methods
.method public constructor <init>(Ljava/security/Signature;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mFidoResultData:[B

    new-instance v0, Landroid/hardware/biometrics/CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljava/security/Signature;)V

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    iput-object p2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mFidoResultData:[B

    new-instance v0, Landroid/hardware/biometrics/CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    iput-object p2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mFidoResultData:[B

    new-instance v0, Landroid/hardware/biometrics/CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    iput-object p2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->setFidoResultData([B)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;)J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->getOpId()J

    move-result-wide v0

    return-wide v0
.end method

.method private getOpId()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/CryptoObject;->getOpId()J

    move-result-wide v0

    return-wide v0
.end method

.method private setFidoResultData([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mFidoResultData:[B

    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public getFidoResultData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mFidoResultData:[B

    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/security/Signature;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method
