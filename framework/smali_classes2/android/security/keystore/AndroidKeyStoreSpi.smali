.class public Landroid/security/keystore/AndroidKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;
.source "AndroidKeyStoreSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "AndroidKeyStore"


# instance fields
.field private mKeyStore:Landroid/security/KeyStore;

.field private mUid:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    return-void
.end method

.method private getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;
    .locals 4

    invoke-static {p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v2, v1, v3}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v1, v2, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->wrapIntoKeyStoreCertificate(Ljava/lang/String;ILjava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    move-result-object v2

    return-object v2

    :cond_1
    return-object v0
.end method

.method private getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;
    .locals 1

    invoke-static {p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method private static getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v3, "NONE"

    const-string v4, "SHA-1"

    const-string v5, "SHA-224"

    const-string v6, "SHA-256"

    const-string v7, "SHA-384"

    const-string v8, "SHA-512"

    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    goto :goto_0

    :cond_0
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/security/keystore/KeyProtection$Builder;

    const/16 v3, 0xf

    invoke-direct {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v3, "NONE"

    const-string v4, "MD5"

    const-string v5, "SHA-1"

    const-string v6, "SHA-224"

    const-string v7, "SHA-256"

    const-string v8, "SHA-384"

    const-string v9, "SHA-512"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setDigests([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    const-string v3, "NoPadding"

    const-string v4, "PKCS1Padding"

    const-string v5, "OAEPPadding"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    const-string v3, "PKCS1"

    const-string v4, "PSS"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/keystore/KeyProtection$Builder;->setSignaturePaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    :goto_0
    nop

    invoke-virtual {v1, v2}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    invoke-virtual {v1}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v2

    return-object v2

    :cond_1
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getModificationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, p1, v1}, Landroid/security/KeyStore;->getmtime(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method private getUniqueAliases()Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string v1, ""

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    const/16 v5, 0x5f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v5, :cond_1

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    :goto_1
    const-string v6, "AndroidKeyStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "invalid alias: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private isCSRRelated(Ljava/lang/String;)Z
    .locals 7

    new-instance v0, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v0}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USRPKEY_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/security/KeyStore;->getKeyCharacteristics(Ljava/lang/String;Landroid/security/keymaster/KeymasterBlob;Landroid/security/keymaster/KeymasterBlob;ILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const v1, 0x70000899

    invoke-virtual {v0, v1}, Landroid/security/keymaster/KeyCharacteristics;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method private isCertificateEntry(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isKeyEntry(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 46
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v9, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v15, 0x0

    const/4 v14, 0x1

    if-nez v3, :cond_1

    invoke-direct/range {p0 .. p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isCSRRelated(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v9, 0x1

    const/4 v10, 0x0

    :cond_0
    :goto_0
    move/from16 v34, v6

    move/from16 v35, v9

    move v6, v0

    goto/16 :goto_1

    :cond_1
    if-nez v5, :cond_2

    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v10

    goto :goto_0

    :cond_2
    instance-of v10, v5, Landroid/security/KeyStoreParameter;

    if-eqz v10, :cond_4

    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v10

    move-object v11, v5

    check-cast v11, Landroid/security/KeyStoreParameter;

    invoke-virtual {v11}, Landroid/security/KeyStoreParameter;->isEncryptionRequired()Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v0, 0x1

    :cond_3
    goto :goto_0

    :cond_4
    instance-of v10, v5, Landroid/security/keystore/KeyProtection;

    if-eqz v10, :cond_6

    move-object v10, v5

    check-cast v10, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v10}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v11

    if-eqz v11, :cond_5

    or-int/lit8 v0, v0, 0x8

    :cond_5
    invoke-virtual {v10}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v11

    if-eqz v11, :cond_0

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_6
    instance-of v10, v5, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    if-eqz v10, :cond_24

    new-instance v10, Ljava/lang/String;

    new-array v11, v14, [C

    const/16 v12, 0x1e

    aput-char v12, v11, v15

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_23

    new-instance v10, Ljava/lang/String;

    new-array v11, v14, [C

    const/16 v12, 0x1f

    aput-char v12, v11, v15

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_23

    move-object v10, v5

    check-cast v10, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    invoke-virtual {v10}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->getKeyProtection()Landroid/security/keystore/KeyProtection;

    move-result-object v10

    if-nez v10, :cond_7

    invoke-static/range {p2 .. p2}, Landroid/security/keystore/AndroidKeyStoreSpi;->getLegacyKeyProtectionParameter(Ljava/security/PrivateKey;)Landroid/security/keystore/KeyProtection;

    move-result-object v10

    :cond_7
    invoke-virtual {v10}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v11

    if-eqz v11, :cond_8

    or-int/lit8 v0, v0, 0x8

    :cond_8
    move-object v11, v5

    check-cast v11, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    invoke-virtual {v11}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->isKnoxObjectProtectionRequired()Z

    move-result v6

    move-object v11, v5

    check-cast v11, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    invoke-virtual {v11}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->getAccessorIds()Ljava/util/List;

    move-result-object v7

    move-object v11, v5

    check-cast v11, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    invoke-virtual {v11}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->getAdministratorIds()Ljava/util/List;

    move-result-object v8

    goto/16 :goto_0

    :goto_1
    move-object v13, v10

    if-eqz v4, :cond_22

    array-length v0, v4

    if-eqz v0, :cond_22

    array-length v0, v4

    new-array v12, v0, [Ljava/security/cert/X509Certificate;

    move v0, v15

    :goto_2
    array-length v9, v4

    if-ge v0, v9, :cond_b

    const-string v9, "X.509"

    aget-object v10, v4, v0

    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    aget-object v9, v4, v0

    instance-of v9, v9, Ljava/security/cert/X509Certificate;

    if-eqz v9, :cond_9

    aget-object v9, v4, v0

    check-cast v9, Ljava/security/cert/X509Certificate;

    aput-object v9, v12, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    new-instance v9, Ljava/security/KeyStoreException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_a
    new-instance v9, Ljava/security/KeyStoreException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Certificates must be in X.509 format: invalid cert #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_b
    :try_start_0
    aget-object v0, v12, v15

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v11, v0

    nop

    nop

    array-length v0, v4

    if-le v0, v14, :cond_e

    array-length v0, v12

    sub-int/2addr v0, v14

    new-array v10, v0, [[B

    const/4 v0, 0x0

    move v14, v0

    move v0, v15

    :goto_3
    move/from16 v37, v0

    array-length v0, v10

    move/from16 v9, v37

    if-ge v9, v0, :cond_c

    add-int/lit8 v37, v9, 0x1

    :try_start_1
    aget-object v0, v12, v37

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    aput-object v0, v10, v9

    aget-object v0, v10, v9

    array-length v0, v0
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v14, v0

    nop

    add-int/lit8 v0, v9, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v15, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v38, v11

    const-string v11, "Failed to encode certificate #"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15

    :cond_c
    move-object/from16 v38, v11

    new-array v9, v14, [B

    const/4 v0, 0x0

    move v4, v0

    move v0, v15

    :goto_4
    array-length v11, v10

    if-ge v0, v11, :cond_d

    aget-object v11, v10, v0

    array-length v11, v11

    move-object/from16 v39, v12

    aget-object v12, v10, v0

    invoke-static {v12, v15, v9, v4, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/2addr v4, v11

    const/4 v12, 0x0

    aput-object v12, v10, v0

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v12, v39

    goto :goto_4

    :cond_d
    move-object/from16 v39, v12

    const/4 v12, 0x0

    goto :goto_5

    :cond_e
    move-object/from16 v38, v11

    move-object/from16 v39, v12

    const/4 v12, 0x0

    move-object v9, v12

    :goto_5
    move-object v4, v9

    if-nez v3, :cond_f

    if-eqz v35, :cond_f

    const/4 v9, 0x0

    :goto_6
    goto :goto_7

    :cond_f
    instance-of v0, v3, Landroid/security/keystore/AndroidKeyStorePrivateKey;

    if-eqz v0, :cond_10

    move-object v0, v3

    check-cast v0, Landroid/security/keystore/AndroidKeyStoreKey;

    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreKey;->getAlias()Ljava/lang/String;

    move-result-object v9

    goto :goto_6

    :cond_10
    move-object v9, v12

    :goto_7
    move-object v14, v9

    if-nez v3, :cond_11

    if-eqz v35, :cond_11

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object v5, v10

    move-object v8, v13

    move-object/from16 v36, v14

    move/from16 v28, v15

    move-object/from16 v3, v38

    move-object/from16 v37, v39

    move-object v10, v9

    move v9, v0

    :goto_8
    const/4 v0, 0x1

    goto/16 :goto_c

    :cond_11
    if-eqz v14, :cond_13

    const-string v0, "USRPKEY_"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "USRPKEY_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v0, 0x0

    nop

    move-object v5, v0

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object v8, v13

    move-object/from16 v36, v14

    move/from16 v28, v15

    move-object/from16 v3, v38

    move-object/from16 v37, v39

    goto :goto_8

    :cond_12
    new-instance v9, Ljava/security/KeyStoreException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can only replace keys with same alias: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " != "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_13
    const/16 v26, 0x1

    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_21

    const-string v0, "PKCS#8"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v27

    if-eqz v27, :cond_20

    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object v11, v0

    const v0, 0x10000002

    :try_start_2
    invoke-interface/range {p2 .. p2}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterAsymmetricKeyAlgorithm(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v11, v0, v9}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v0

    const v9, 0x20000001

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v9
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v9, :cond_14

    const v9, 0x20000005

    :try_start_3
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object v5, v11

    move-object v7, v12

    move-object v8, v13

    move-object/from16 v36, v14

    move-object/from16 v3, v38

    move-object/from16 v37, v39

    goto/16 :goto_11

    :cond_14
    :goto_9
    const v9, 0x20000004

    :try_start_4
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    nop

    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v9
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_3

    move-object v10, v9

    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_16

    :try_start_5
    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v9

    if-eqz v9, :cond_16

    array-length v9, v10

    :goto_a
    if-ge v15, v9, :cond_16

    aget v16, v10, v15

    move/from16 v40, v16

    nop

    move/from16 v41, v0

    move/from16 v0, v40

    invoke-static {v0}, Landroid/security/keystore/KeymasterUtils;->isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z

    move-result v16

    if-eqz v16, :cond_15

    add-int/lit8 v15, v15, 0x1

    move/from16 v0, v41

    goto :goto_a

    :cond_15
    new-instance v9, Ljava/security/KeyStoreException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Randomized encryption (IND-CPA) required but is violated by encryption padding mode: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". See KeyProtection documentation."

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_16
    move/from16 v41, v0

    const v0, 0x20000006

    :try_start_6
    invoke-virtual {v11, v0, v10}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    nop

    invoke-virtual {v13}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/security/keystore/KeyProperties$SignaturePadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v3

    invoke-virtual {v11, v0, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-static {v11, v13}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keystore/UserAuthArgs;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v34, :cond_17

    const/16 v19, 0x0

    move-object v9, v11

    move-object v0, v10

    move-object v10, v7

    move-object v15, v11

    move-object/from16 v3, v38

    move-object v11, v8

    move-object/from16 v42, v7

    move-object v7, v12

    move-object/from16 v37, v39

    move-object/from16 v12, v20

    move-object/from16 v43, v8

    move-object v8, v13

    move-object/from16 v13, v21

    move-object/from16 v44, v0

    move-object/from16 v36, v14

    const/4 v0, 0x1

    move-object/from16 v14, v23

    move-object v5, v15

    const/16 v28, 0x0

    move/from16 v15, v35

    move-object/from16 v16, v22

    move-object/from16 v17, v24

    move-object/from16 v18, v25

    :try_start_7
    invoke-static/range {v9 .. v19}, Landroid/security/keystore/KeymasterUtils;->addKnoxArgs(Landroid/security/keymaster/KeymasterArguments;Ljava/util/List;Ljava/util/List;[Z[Ljava/lang/String;Ljava/lang/String;Z[BLjavax/security/auth/x500/X500Principal;[BZ)V

    goto :goto_b

    :catch_2
    move-exception v0

    goto/16 :goto_11

    :cond_17
    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v44, v10

    move-object v5, v11

    move-object v7, v12

    move-object v8, v13

    move-object/from16 v36, v14

    move-object/from16 v3, v38

    move-object/from16 v37, v39

    const/4 v0, 0x1

    const/16 v28, 0x0

    :goto_b
    const v9, 0x60000190

    invoke-virtual {v8}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    const v9, 0x60000191

    invoke-virtual {v8}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    const v9, 0x60000192

    invoke-virtual {v8}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2

    nop

    move-object v10, v5

    move/from16 v9, v26

    move-object/from16 v5, v27

    :goto_c
    move/from16 v7, v28

    if-eqz v9, :cond_19

    :try_start_8
    iget-object v11, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v12, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v11, v2, v12}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    new-instance v11, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v11}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    move-object/from16 v33, v11

    iget-object v11, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRPKEY_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x1

    iget v12, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object/from16 v26, v11

    move-object/from16 v28, v10

    move-object/from16 v30, v5

    move/from16 v31, v12

    move/from16 v32, v6

    invoke-virtual/range {v26 .. v33}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v11

    if-ne v11, v0, :cond_18

    goto :goto_d

    :cond_18
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v12, "Failed to store private key"

    invoke-static {v11}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_19
    iget-object v11, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v12, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v11, v2, v12}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    iget-object v11, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v12, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v11, v2, v12}, Landroid/security/Credentials;->deleteLegacyKeyForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    :goto_d
    iget-object v11, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iget v13, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v11, v12, v3, v13, v6}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v11

    if-ne v11, v0, :cond_1d

    iget-object v12, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "CACERT_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget v14, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v12, v13, v4, v14, v6}, Landroid/security/KeyStore;->insert(Ljava/lang/String;[BII)I

    move-result v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move v11, v12

    if-ne v11, v0, :cond_1c

    const/4 v0, 0x1

    if-nez v0, :cond_1b

    if-eqz v9, :cond_1a

    iget-object v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v11, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v7, v2, v11}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    goto :goto_e

    :cond_1a
    iget-object v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v11, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v7, v2, v11}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    iget-object v7, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v11, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v7, v2, v11}, Landroid/security/Credentials;->deleteLegacyKeyForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    :cond_1b
    :goto_e
    return-void

    :cond_1c
    :try_start_9
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v12, "Failed to store certificate chain"

    invoke-static {v11}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v12, "Failed to store certificate #0"

    invoke-static {v11}, Landroid/security/KeyStore;->getKeyStoreException(I)Landroid/security/KeyStoreException;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_f
    if-nez v7, :cond_1f

    if-eqz v9, :cond_1e

    iget-object v11, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v12, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v11, v2, v12}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    goto :goto_10

    :cond_1e
    iget-object v11, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v12, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v11, v2, v12}, Landroid/security/Credentials;->deleteCertificateTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    iget-object v11, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v12, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v11, v2, v12}, Landroid/security/Credentials;->deleteLegacyKeyForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    :cond_1f
    :goto_10
    throw v0

    :catch_3
    move-exception v0

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object v5, v11

    move-object v7, v12

    move-object v8, v13

    move-object/from16 v36, v14

    move-object/from16 v3, v38

    move-object/from16 v37, v39

    :goto_11
    new-instance v9, Ljava/security/KeyStoreException;

    invoke-direct {v9, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    :cond_20
    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object v7, v12

    move-object v8, v13

    move-object/from16 v36, v14

    move-object/from16 v3, v38

    move-object/from16 v37, v39

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v5, "Private key did not export any key material"

    invoke-direct {v0, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object v7, v12

    move-object v8, v13

    move-object/from16 v36, v14

    move-object/from16 v3, v38

    move-object/from16 v37, v39

    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported private key export format: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ". Only private keys which export their key material in PKCS#8 format are supported."

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_4
    move-exception v0

    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object/from16 v37, v12

    move-object v8, v13

    new-instance v3, Ljava/security/KeyStoreException;

    const-string v4, "Failed to encode certificate #0"

    invoke-direct {v3, v4, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_22
    move-object/from16 v42, v7

    move-object/from16 v43, v8

    move-object v8, v13

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v3, "Must supply at least one Certificate with PrivateKey"

    invoke-direct {v0, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v3, Ljava/security/KeyStoreException;

    const-string/jumbo v4, "malformed alias"

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_24
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported protection parameter class:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". Supported: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Landroid/security/KeyStoreParameter;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    if-eqz v4, :cond_1

    instance-of v0, v4, Landroid/security/keystore/KeyProtection;

    if-nez v0, :cond_1

    instance-of v0, v4, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported protection parameter class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Supported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v6, Landroid/security/keystore/KeyProtection;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v6, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    instance-of v6, v4, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    if-eqz v6, :cond_2

    move-object v6, v4

    check-cast v6, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    invoke-virtual {v6}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->getKeyProtection()Landroid/security/keystore/KeyProtection;

    move-result-object v0

    move-object v6, v4

    check-cast v6, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    invoke-virtual {v6}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;->isKnoxObjectProtectionRequired()Z

    move-result v5

    :goto_1
    move/from16 v26, v5

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v0, v4

    check-cast v0, Landroid/security/keystore/KeyProtection;

    goto :goto_1

    :goto_2
    instance-of v0, v3, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    if-eqz v0, :cond_8

    move-object v0, v3

    check-cast v0, Landroid/security/keystore/AndroidKeyStoreSecretKey;

    invoke-virtual {v0}, Landroid/security/keystore/AndroidKeyStoreSecretKey;->getAlias()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v6, "USRPKEY_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v6, "USRSKEY_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    new-instance v7, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeyStore-backed secret key has invalid alias: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    :goto_3
    nop

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v5, :cond_5

    return-void

    :cond_5
    new-instance v8, Ljava/security/KeyStoreException;

    const-string v9, "Modifying KeyStore-backed key using protection parameters not supported"

    invoke-direct {v8, v9}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    new-instance v8, Ljava/security/KeyStoreException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can only replace KeyStore-backed keys with same alias: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " != "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_7
    new-instance v6, Ljava/security/KeyStoreException;

    const-string v7, "KeyStore-backed secret key does not have an alias"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8
    if-eqz v5, :cond_1a

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getFormat()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_19

    const-string v0, "RAW"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v27

    if-eqz v27, :cond_17

    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object v14, v0

    nop

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterSecretKeyAlgorithm(Ljava/lang/String;)I

    move-result v0

    const v6, 0x10000002

    invoke-virtual {v14, v6, v0}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v6, 0x80

    const/4 v7, 0x0

    const/4 v13, 0x1

    if-ne v0, v6, :cond_c

    nop

    :try_start_1
    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$KeyAlgorithm;->toKeymasterDigest(Ljava/lang/String;)I

    move-result v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_b

    new-array v8, v13, [I

    aput v6, v8, v7

    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v9

    if-eqz v9, :cond_a

    nop

    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v9

    array-length v10, v9

    if-ne v10, v13, :cond_9

    aget v10, v9, v7

    if-ne v10, v6, :cond_9

    goto :goto_4

    :cond_9
    new-instance v7, Ljava/security/KeyStoreException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unsupported digests specification: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ". Only "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " supported for HMAC key algorithm "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_a
    :goto_4
    goto :goto_5

    :cond_b
    new-instance v7, Ljava/security/ProviderException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HMAC key algorithm digest unknown for key algorithm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object/from16 v30, v15

    goto/16 :goto_8

    :cond_c
    :try_start_2
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->isDigestsSpecified()Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v6, :cond_d

    :try_start_3
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getDigests()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$Digest;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v8, v6

    goto :goto_5

    :cond_d
    :try_start_4
    sget-object v8, Llibcore/util/EmptyArray;->INT:[I

    :goto_5
    move-object v12, v8

    const v6, 0x20000005

    invoke-virtual {v14, v6, v12}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getPurposes()I

    move-result v6

    move v11, v6

    nop

    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getBlockModes()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$BlockMode;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v10, v6

    and-int/lit8 v6, v11, 0x1

    if-eqz v6, :cond_f

    :try_start_5
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v6

    if-eqz v6, :cond_f

    array-length v6, v10

    :goto_6
    if-ge v7, v6, :cond_f

    aget v8, v10, v7

    invoke-static {v8}, Landroid/security/keystore/KeymasterUtils;->isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z

    move-result v9

    if-eqz v9, :cond_e

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_e
    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Randomized encryption (IND-CPA) required but may be violated by block mode: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Landroid/security/keystore/KeyProperties$BlockMode;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ". See KeyProtection documentation."

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_f
    const v6, 0x20000001

    :try_start_6
    invoke-static {v11}, Landroid/security/keystore/KeyProperties$Purpose;->allToKeymaster(I)[I

    move-result-object v7

    invoke-virtual {v14, v6, v7}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    const v6, 0x20000004

    invoke-virtual {v14, v6, v10}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getSignaturePaddings()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-gtz v6, :cond_16

    nop

    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getEncryptionPaddings()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/security/keystore/KeyProperties$EncryptionPadding;->allToKeymaster([Ljava/lang/String;)[I

    move-result-object v6

    move-object v9, v6

    const v6, 0x20000006

    invoke-virtual {v14, v6, v9}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    invoke-static {v14, v5}, Landroid/security/keystore/KeymasterUtils;->addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keystore/UserAuthArgs;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4

    if-eqz v26, :cond_10

    const/16 v16, 0x1

    move-object v6, v14

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v28, v9

    move-object/from16 v9, v19

    move-object v3, v10

    move-object/from16 v10, v20

    move/from16 v29, v11

    move-object/from16 v11, v22

    move-object v4, v12

    move/from16 v12, v23

    move-object/from16 v13, v21

    move-object v2, v14

    move-object/from16 v14, v24

    move-object/from16 v30, v15

    move-object/from16 v15, v25

    :try_start_7
    invoke-static/range {v6 .. v16}, Landroid/security/keystore/KeymasterUtils;->addKnoxArgs(Landroid/security/keymaster/KeymasterArguments;Ljava/util/List;Ljava/util/List;[Z[Ljava/lang/String;Ljava/lang/String;Z[BLjavax/security/auth/x500/X500Principal;[BZ)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v14, v2

    move-object/from16 v2, p1

    goto/16 :goto_8

    :cond_10
    move-object/from16 v28, v9

    move-object v3, v10

    move/from16 v29, v11

    move-object v4, v12

    move-object v2, v14

    move-object/from16 v30, v15

    :goto_7
    :try_start_8
    invoke-static {v2, v0, v3, v4}, Landroid/security/keystore/KeymasterUtils;->addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V

    const v6, 0x60000190

    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getKeyValidityStart()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    const v6, 0x60000191

    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getKeyValidityForOriginationEnd()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V

    const v6, 0x60000192

    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->getKeyValidityForConsumptionEnd()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/security/keymaster/KeymasterArguments;->addDateIfNotNull(ILjava/util/Date;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_2

    and-int/lit8 v6, v29, 0x1

    if-eqz v6, :cond_11

    :try_start_9
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->isRandomizedEncryptionRequired()Z

    move-result v6

    if-nez v6, :cond_11

    const v6, 0x70000007

    invoke-virtual {v2, v6}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_11
    nop

    const/4 v0, 0x0

    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->isCriticalToDeviceEncryption()Z

    move-result v3

    if-eqz v3, :cond_12

    or-int/lit8 v0, v0, 0x8

    :cond_12
    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v3

    if-eqz v3, :cond_13

    or-int/lit8 v0, v0, 0x10

    :cond_13
    iget-object v3, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v4, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    move-object v14, v2

    move-object/from16 v2, p1

    invoke-static {v3, v2, v4}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const/4 v9, 0x3

    iget v11, v1, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    new-instance v13, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v13}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    move-object v7, v3

    move-object v8, v14

    move-object/from16 v10, v27

    move v12, v0

    invoke-virtual/range {v6 .. v13}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;Landroid/security/keymaster/KeymasterArguments;I[BIILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_15

    invoke-virtual {v5}, Landroid/security/keystore/KeyProtection;->isStrongBoxBacked()Z

    move-result v6

    if-eqz v6, :cond_14

    const/16 v6, -0x44

    if-ne v4, v6, :cond_14

    new-instance v6, Landroid/security/keystore/StrongBoxUnavailableException;

    const-string v7, "Failed to import key"

    invoke-direct {v6, v7}, Landroid/security/keystore/StrongBoxUnavailableException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_14
    new-instance v6, Ljava/security/KeyStoreException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to import secret key. Keystore error code: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_15
    return-void

    :catch_2
    move-exception v0

    move-object v14, v2

    move-object/from16 v2, p1

    goto :goto_8

    :cond_16
    move-object v3, v10

    move/from16 v29, v11

    move-object v4, v12

    move-object/from16 v30, v15

    :try_start_a
    new-instance v6, Ljava/security/KeyStoreException;

    const-string v7, "Signature paddings not supported for symmetric keys"

    invoke-direct {v6, v7}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_3

    :catch_3
    move-exception v0

    goto :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v30, v15

    :goto_8
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_17
    move-object/from16 v30, v15

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v3, "Key did not export its key material despite supporting RAW format export"

    invoke-direct {v0, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move-object/from16 v30, v15

    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported secret key material export format: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object v4, v15

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v3, "Only secret keys that export their key material are supported"

    invoke-direct {v0, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v3, "Protection parameters must be specified when importing a symmetric key"

    invoke-direct {v0, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setWrappedKeyEntry(Ljava/lang/String;Landroid/security/keystore/WrappedKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    move-object/from16 v0, p0

    if-nez p3, :cond_13

    const/16 v1, 0x20

    new-array v14, v1, [B

    new-instance v2, Landroid/security/keymaster/KeymasterArguments;

    invoke-direct {v2}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    move-object v13, v2

    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getTransformation()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    aget-object v10, v12, v2

    const-string v3, "RSA"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const v4, 0x10000002

    const/4 v11, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v13, v4, v11}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    goto :goto_0

    :cond_0
    const-string v3, "EC"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v13, v4, v11}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    :cond_1
    :goto_0
    array-length v3, v12

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-le v3, v11, :cond_5

    aget-object v3, v12, v11

    const-string v6, "ECB"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const v7, 0x20000004

    if-eqz v6, :cond_2

    new-array v1, v11, [I

    aput v11, v1, v2

    invoke-virtual {v13, v7, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_1

    :cond_2
    const-string v6, "CBC"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-array v1, v11, [I

    aput v5, v1, v2

    invoke-virtual {v13, v7, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_1

    :cond_3
    const-string v6, "CTR"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    new-array v1, v11, [I

    aput v4, v1, v2

    invoke-virtual {v13, v7, v1}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_1

    :cond_4
    const-string v6, "GCM"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    new-array v6, v11, [I

    aput v1, v6, v2

    invoke-virtual {v13, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    :cond_5
    :goto_1
    array-length v1, v12

    const/4 v3, 0x4

    if-le v1, v5, :cond_9

    aget-object v1, v12, v5

    const-string v6, "NoPadding"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    const-string v6, "PKCS7Padding"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    const v7, 0x20000006

    if-eqz v6, :cond_7

    new-array v6, v11, [I

    const/16 v8, 0x40

    aput v8, v6, v2

    invoke-virtual {v13, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_2

    :cond_7
    const-string v6, "PKCS1Padding"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    new-array v6, v11, [I

    aput v3, v6, v2

    invoke-virtual {v13, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_2

    :cond_8
    const-string v6, "OAEPPadding"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    new-array v6, v11, [I

    aput v5, v6, v2

    invoke-virtual {v13, v7, v6}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    :cond_9
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    check-cast v1, Landroid/security/keystore/KeyGenParameterSpec;

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->isDigestsSpecified()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v1}, Landroid/security/keystore/KeyGenParameterSpec;->getDigests()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    const-string v7, "NONE"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    goto :goto_3

    :cond_a
    const-string v7, "MD5"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const v8, 0x20000005

    if-eqz v7, :cond_b

    new-array v3, v11, [I

    aput v11, v3, v2

    invoke-virtual {v13, v8, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_3

    :cond_b
    const-string v7, "SHA-1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    new-array v3, v11, [I

    aput v5, v3, v2

    invoke-virtual {v13, v8, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_3

    :cond_c
    const-string v5, "SHA-224"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    new-array v3, v11, [I

    aput v4, v3, v2

    invoke-virtual {v13, v8, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_3

    :cond_d
    const-string v4, "SHA-256"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-array v4, v11, [I

    aput v3, v4, v2

    invoke-virtual {v13, v8, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_3

    :cond_e
    const-string v3, "SHA-384"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    new-array v3, v11, [I

    const/4 v4, 0x5

    aput v4, v3, v2

    invoke-virtual {v13, v8, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    goto :goto_3

    :cond_f
    const-string v3, "SHA-512"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-array v3, v11, [I

    const/4 v4, 0x6

    aput v4, v3, v2

    invoke-virtual {v13, v8, v3}, Landroid/security/keymaster/KeymasterArguments;->addEnums(I[I)V

    :cond_10
    :goto_3
    iget-object v2, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRSKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getWrappedKeyBytes()[B

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/security/keystore/WrappedKeyEntry;->getWrappingKeyAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v15

    const-wide/16 v17, 0x0

    iget v9, v0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    new-instance v7, Landroid/security/keymaster/KeyCharacteristics;

    invoke-direct {v7}, Landroid/security/keymaster/KeyCharacteristics;-><init>()V

    move-object v6, v14

    move-object/from16 v19, v7

    move-object v7, v13

    move/from16 v20, v9

    move-wide v8, v15

    move-object v15, v10

    move v0, v11

    move-wide/from16 v10, v17

    move-object/from16 v16, v12

    move/from16 v12, v20

    move-object/from16 v17, v13

    move-object/from16 v13, v19

    invoke-virtual/range {v2 .. v13}, Landroid/security/KeyStore;->importWrappedKey(Ljava/lang/String;[BLjava/lang/String;[BLandroid/security/keymaster/KeymasterArguments;JJILandroid/security/keymaster/KeyCharacteristics;)I

    move-result v2

    const/16 v3, -0x64

    if-eq v2, v3, :cond_12

    if-ne v2, v0, :cond_11

    return-void

    :cond_11
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to import wrapped key. Keystore error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Landroid/security/keystore/SecureKeyImportUnavailableException;

    const-string v3, "Could not import wrapped key"

    invoke-direct {v0, v3}, Landroid/security/keystore/SecureKeyImportUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Protection parameters are specified inside wrapped keys"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 3

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "AndroidKeyStore"

    const-string v2, "Couldn\'t parse certificate in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private static toCertificates([B)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Collection<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "AndroidKeyStore"

    const-string v2, "Couldn\'t parse certificates in keystore"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method private static wrapIntoKeyStoreCertificate(Ljava/lang/String;ILjava/security/cert/X509Certificate;)Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
    .locals 1

    if-eqz p2, :cond_0

    new-instance v0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;

    invoke-direct {v0, p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;-><init>(Ljava/lang/String;ILjava/security/cert/X509Certificate;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected baseAndroidSecurityKeystore()Landroid/security/KeyStore;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method protected baseUid()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    return v0
.end method

.method public engineAliases()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v0, p1, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete entry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetCSR(Ljava/lang/String;)[B
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCSR_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 4

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForPrivateKeyEntry(Ljava/lang/String;[B)Ljava/security/cert/Certificate;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v1, v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getCertificateForTrustedCertificateEntry([B)Ljava/security/cert/Certificate;

    move-result-object v1

    return-object v1

    :cond_1
    const/4 v1, 0x0

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineGetCertificateAlias(Ljava/security/cert/Certificate;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected engineGetCertificateAlias(Ljava/security/cert/Certificate;Z)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "X.509"

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v4, v3}, Landroid/security/KeyStore;->list(I)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    array-length v6, v4

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_4

    aget-object v8, v4, v7

    const-string v9, "USRCERT_"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "USRCERT_"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, [Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v4, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string v5, "USRCERT_"

    iget v6, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v4, v5, v6}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_8

    array-length v5, v4

    move v6, v3

    :goto_2
    if-ge v6, v5, :cond_8

    aget-object v7, v4, v6

    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRCERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v8, v9, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v8

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v8, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_7

    return-object v7

    :cond_7
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    iget-object v5, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const-string v6, "CACERT_"

    iget v7, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v5, v6, v7}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v4, :cond_c

    array-length v6, v5

    :goto_4
    if-ge v3, v6, :cond_c

    aget-object v7, v5, v3

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    goto :goto_5

    :cond_9
    iget-object v8, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CACERT_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget v10, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v8, v9, v10}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v8

    if-nez v8, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v8, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_b

    return-object v7

    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_c
    return-object v0

    :catch_0
    move-exception v1

    return-object v0
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 8

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v1, v2, v3}, Landroid/security/KeyStore;->get(Ljava/lang/String;I)[B

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->toCertificates([B)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v4, v2

    new-array v4, v4, [Ljava/security/cert/Certificate;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/Certificate;

    aput-object v7, v4, v2

    move v2, v6

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    new-array v4, v2, [Ljava/security/cert/Certificate;

    :goto_1
    move-object v2, v4

    const/4 v3, 0x0

    aput-object v0, v2, v3

    return-object v2

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USRPKEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->getModificationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alias == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "USRPKEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v1, v0, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USRSKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-virtual {v1, v0, v2}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v1, v0, v2}, Landroid/security/keystore/AndroidKeyStoreProvider;->loadAndroidKeyStoreKeyFromKeystore(Landroid/security/KeyStore;Ljava/lang/String;I)Landroid/security/keystore/AndroidKeyStoreKey;

    move-result-object v1

    return-object v1
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    const/4 v0, -0x1

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "password not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    instance-of v1, p1, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;

    invoke-virtual {v1}, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;->getUid()I

    move-result v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported param type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iput v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    return-void
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACERT_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/security/KeyStoreException;

    const-string v2, "Couldn\'t insert certificate; is KeyStore initialized?"

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cert == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Entry exists and is not a trusted certificate"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-eqz p2, :cond_4

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v0, p1, v1}, Landroid/security/Credentials;->deleteAllTypesForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    instance-of v0, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$TrustedCertificateEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/security/keystore/AndroidKeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    return-void

    :cond_0
    instance-of v0, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_0

    :cond_2
    instance-of v0, p2, Landroid/security/keystore/WrappedKeyEntry;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Landroid/security/keystore/WrappedKeyEntry;

    invoke-direct {p0, p1, v0, p3}, Landroid/security/keystore/AndroidKeyStoreSpi;->setWrappedKeyEntry(Ljava/lang/String;Landroid/security/keystore/WrappedKeyEntry;Ljava/security/KeyStore$ProtectionParameter;)V

    nop

    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry must be a PrivateKeyEntry, SecretKeyEntry or TrustedCertificateEntry; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "entry == null"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    if-eqz p3, :cond_1

    array-length v0, p3

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "entries cannot be protected with passwords"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Landroid/security/keystore/AndroidKeyStoreSpi;->isCSRRelated(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, v0, p4, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mKeyStore:Landroid/security/KeyStore;

    iget v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi;->mUid:I

    invoke-static {v0, p1, v1}, Landroid/security/Credentials;->deleteCSRTypeForAlias(Landroid/security/KeyStore;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    instance-of v1, p2, Ljava/security/PrivateKey;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/security/PrivateKey;

    invoke-direct {p0, p1, v1, p4, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->setPrivateKeyEntry(Ljava/lang/String;Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_1

    :cond_3
    instance-of v1, p2, Ljavax/crypto/SecretKey;

    if-eqz v1, :cond_4

    move-object v1, p2

    check-cast v1, Ljavax/crypto/SecretKey;

    invoke-direct {p0, p1, v1, v0}, Landroid/security/keystore/AndroidKeyStoreSpi;->setSecretKeyEntry(Ljava/lang/String;Ljavax/crypto/SecretKey;Ljava/security/KeyStore$ProtectionParameter;)V

    :goto_1
    return-void

    :cond_4
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Only PrivateKey and SecretKey are supported"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "Operation not supported because key encoding is unknown"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSize()I
    .locals 1

    invoke-direct {p0}, Landroid/security/keystore/AndroidKeyStoreSpi;->getUniqueAliases()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can not serialize AndroidKeyStore to OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
