.class public Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;
.super Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;
.source "BiometricPrompt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private mToken:[B


# direct methods
.method public constructor <init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;-><init>(Landroid/hardware/biometrics/CryptoObject;Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;I)V

    return-void
.end method


# virtual methods
.method public getCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;
    .locals 1

    invoke-super {p0}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationResult;->getCryptoObject()Landroid/hardware/biometrics/CryptoObject;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    return-object v0
.end method

.method public bridge synthetic getCryptoObject()Landroid/hardware/biometrics/CryptoObject;
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->getCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v0

    return-object v0
.end method

.method public semGetToken()[B
    .locals 3

    invoke-static {}, Landroid/hardware/biometrics/BiometricPrompt;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BiometricPrompt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetToken: token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->mToken:[B

    if-nez v2, :cond_0

    const-string v2, "NULL"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->mToken:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->mToken:[B

    return-object v0
.end method

.method public setToken([B)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->mToken:[B

    return-void
.end method
