.class public Landroid/security/keystore/AndroidKeyStoreSecretKey;
.super Landroid/security/keystore/AndroidKeyStoreKey;
.source "AndroidKeyStoreSecretKey.java"

# interfaces
.implements Ljavax/crypto/SecretKey;


# instance fields
.field private mEncoded:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/security/keystore/AndroidKeyStoreKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSecretKey;->mEncoded:[B

    return-void
.end method


# virtual methods
.method public UpdateKeyblob([B)V
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSecretKey;->mEncoded:[B

    return-void
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSecretKey;->mEncoded:[B

    invoke-static {v0}, Landroid/security/keystore/ArrayUtils;->cloneIfNotEmpty([B)[B

    move-result-object v0

    return-object v0
.end method
