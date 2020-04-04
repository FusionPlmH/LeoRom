.class public final Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/SemBioFaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoObject"
.end annotation


# instance fields
.field private mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

.field private final mFidoRequestData:[B

.field private mFidoResultData:[B


# direct methods
.method constructor <init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/Signature;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljava/security/Signature;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->setFidoResultData([B)V

    return-void
.end method

.method private setFidoResultData([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    return-void
.end method


# virtual methods
.method public getBiometricCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    return-object v0
.end method

.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public getFidoRequestData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoRequestData:[B

    return-object v0
.end method

.method public getFidoResultData()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mFidoResultData:[B

    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public getOpId()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSignature()Ljava/security/Signature;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->mBioCryptoObject:Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method
