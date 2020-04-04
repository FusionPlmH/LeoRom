.class public abstract Landroid/security/keystore/KeymasterUtils;
.super Ljava/lang/Object;
.source "KeymasterUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addKnoxArgs(Landroid/security/keymaster/KeymasterArguments;Ljava/util/List;Ljava/util/List;[Z[Ljava/lang/String;Ljava/lang/String;Z[BLjavax/security/auth/x500/X500Principal;[BZ)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/keymaster/KeymasterArguments;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[Z[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[B",
            "Ljavax/security/auth/x500/X500Principal;",
            "[BZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    const v8, 0x700007d0

    invoke-virtual {v0, v8}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    if-eqz p10, :cond_0

    const v9, 0x7000025a

    invoke-virtual {v0, v9}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_0
    new-instance v9, Ljava/util/HashSet;

    move-object/from16 v10, p1

    invoke-direct {v9, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v11, "wpa_supplicant"

    const-string v12, "com.android.settings"

    const-string v13, "/system/bin/keystore"

    const/16 v16, 0x1

    if-eqz v1, :cond_6

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v17

    if-eqz v17, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v8, v17

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    move-object/from16 v18, v14

    const-string v14, "_"

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v7, -0x1

    if-ne v14, v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "u"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v14, 0x1

    const/4 v7, 0x0

    invoke-virtual {v8, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v5

    const-string v5, ","

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move-object/from16 v18, v14

    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    move-object/from16 v14, v18

    move-object/from16 v5, p7

    move-object/from16 v7, p9

    move-object/from16 v10, p1

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/security/keystore/KeymasterUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const v7, -0x6ffff82e

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    goto :goto_3

    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "administrator ids must be printable characters"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v5

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    goto :goto_4

    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ","

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const-string v14, "_"

    invoke-virtual {v8, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "u"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    goto :goto_5

    :cond_8
    add-int/lit8 v1, v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v8, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v20, v7

    const-string v7, ","

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ","

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_9
    move-object/from16 v20, v7

    :goto_6
    move-object/from16 v7, v20

    move-object/from16 v1, p2

    goto/16 :goto_4

    :cond_a
    const-string/jumbo v1, "u*_com.android.keychain"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_b
    invoke-static {v1}, Landroid/security/keystore/KeymasterUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    const v7, -0x6ffff82d

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    goto :goto_7

    :cond_c
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "accessor ids must be printable characters"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_d
    :goto_7
    const/4 v1, 0x0

    if-eqz v2, :cond_10

    array-length v5, v2

    const/16 v7, 0x9

    if-gt v5, v7, :cond_f

    move v7, v1

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v5, :cond_11

    aget-boolean v8, v2, v1

    if-eqz v8, :cond_e

    shl-int v8, v16, v1

    or-int/2addr v7, v8

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_f
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "key usage array size incorrect "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_10
    move v7, v1

    :cond_11
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v7}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v7

    :cond_12
    invoke-static {v7}, Ljava/lang/Integer;->reverse(I)I

    move-result v1

    if-eqz v1, :cond_13

    const v5, 0x30000838

    int-to-long v7, v1

    invoke-virtual {v0, v5, v7, v8}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    :cond_13
    if-eqz v3, :cond_17

    array-length v5, v3

    if-eqz v5, :cond_17

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    array-length v7, v3

    const/4 v8, 0x0

    :goto_9
    if-ge v8, v7, :cond_16

    aget-object v10, v3, v8

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_15

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    if-eqz v14, :cond_14

    const-string v14, ","

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_16
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_17

    const v7, -0x6ffff7c7

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_17
    if-eqz v6, :cond_18

    invoke-virtual/range {p8 .. p8}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual/range {p8 .. p8}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual/range {p8 .. p8}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    if-eqz v5, :cond_18

    const v5, -0x6ffff7c9

    const-string v7, "RFC1779"

    invoke-virtual {v6, v7}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_18
    if-eqz v4, :cond_19

    const-string/jumbo v5, "samsung"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    const v5, -0x6ffff7ca

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_19
    if-eqz p6, :cond_1a

    const v7, 0x70000899

    invoke-virtual {v0, v7}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    move-object/from16 v7, p7

    if-eqz v7, :cond_1b

    array-length v8, v7

    if-eqz v8, :cond_1b

    const v8, -0x6ffffd3c

    invoke-virtual {v0, v8, v7}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    goto :goto_a

    :cond_1a
    move-object/from16 v7, p7

    :cond_1b
    :goto_a
    move-object/from16 v8, p9

    if-eqz v8, :cond_1c

    array-length v10, v8

    if-eqz v10, :cond_1c

    const v10, -0x6ffff7c6

    invoke-virtual {v0, v10, v8}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    :cond_1c
    return-void
.end method

.method public static addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V
    .locals 5

    const v0, 0x30000008

    const/16 v1, 0x20

    if-eq p1, v1, :cond_3

    const/16 v1, 0x80

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    aget v1, p3, v1

    invoke-static {v1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    int-to-long v3, v2

    invoke-virtual {p0, v0, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/security/ProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HMAC key authorized for unsupported digest: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/security/ProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported number of authorized digests for HMAC key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Exactly one digest must be authorized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_4

    const-wide/16 v1, 0x60

    invoke-virtual {p0, v0, v1, v2}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;Landroid/security/keystore/UserAuthArgs;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/UserAuthArgs;->isUserConfirmationRequired()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x700001fc

    invoke-virtual {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_0
    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/UserAuthArgs;->isUserPresenceRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x700001fb

    invoke-virtual {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_1
    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/UserAuthArgs;->isUnlockedDeviceRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x700001fd

    invoke-virtual {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/UserAuthArgs;->isUserAuthenticationRequired()Z

    move-result v1

    if-nez v1, :cond_3

    const v1, 0x700001f7

    invoke-virtual {v0, v1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    return-void

    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/UserAuthArgs;->getUserAuthenticationValidityDurationSeconds()I

    move-result v1

    const/4 v2, -0x1

    const v3, 0x100001f8

    const v4, -0x5ffffe0a

    const-wide/16 v5, 0x0

    if-ne v1, v2, :cond_12

    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    move-result-wide v7

    goto :goto_0

    :cond_4
    move-wide v7, v5

    :goto_0
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager;->getAuthenticatorId()J

    move-result-wide v9

    goto :goto_1

    :cond_5
    move-wide v9, v5

    :goto_1
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/samsung/android/biometrics/SemBiometricsManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Lcom/samsung/android/biometrics/SemBiometricsManager;->getAuthenticatorId()J

    move-result-wide v12

    goto :goto_2

    :cond_6
    move-wide v12, v5

    :goto_2
    cmp-long v14, v7, v5

    if-nez v14, :cond_8

    cmp-long v14, v9, v5

    if-nez v14, :cond_8

    cmp-long v14, v12, v5

    if-eqz v14, :cond_7

    goto :goto_3

    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "At least one fingerprint/iris/intelligentScan must be enrolled to create keys requiring user authentication for every use"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    :goto_3
    const/4 v14, 0x0

    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/UserAuthArgs;->getBoundToSpecificSecureUserId()J

    move-result-wide v15

    cmp-long v15, v15, v5

    if-eqz v15, :cond_9

    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/UserAuthArgs;->getBoundToSpecificSecureUserId()J

    move-result-wide v5

    nop

    invoke-static {v5, v6}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v0, v4, v15}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    goto :goto_4

    :cond_9
    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/UserAuthArgs;->isInvalidatedByBiometricEnrollment()Z

    move-result v5

    if-eqz v5, :cond_c

    const-wide/16 v5, 0x0

    cmp-long v15, v7, v5

    if-eqz v15, :cond_a

    nop

    invoke-static {v7, v8}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v0, v4, v15}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    :cond_a
    cmp-long v15, v9, v5

    const v5, 0x70002af8

    if-eqz v15, :cond_b

    invoke-virtual {v0, v5}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_b

    nop

    invoke-static {v9, v10}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    :cond_b
    const-wide/16 v15, 0x0

    cmp-long v6, v12, v15

    if-eqz v6, :cond_d

    invoke-virtual {v0, v5}, Landroid/security/keymaster/KeymasterArguments;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_d

    nop

    invoke-static {v12, v13}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    goto :goto_4

    :cond_c
    invoke-static {}, Landroid/security/keystore/KeymasterUtils;->getRootSid()J

    move-result-wide v5

    nop

    invoke-static {v5, v6}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v0, v4, v15}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    :cond_d
    :goto_4
    const-wide/16 v4, 0x0

    cmp-long v6, v7, v4

    if-eqz v6, :cond_e

    or-int/lit8 v14, v14, 0x2

    :cond_e
    cmp-long v6, v9, v4

    if-eqz v6, :cond_f

    or-int/lit8 v14, v14, 0x4

    :cond_f
    cmp-long v4, v12, v4

    if-eqz v4, :cond_10

    or-int/lit8 v14, v14, 0x10

    :cond_10
    invoke-virtual {v0, v3, v14}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/UserAuthArgs;->isUserAuthenticationValidWhileOnBody()Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_6

    :cond_11
    new-instance v3, Ljava/security/ProviderException;

    const-string v4, "Key validity extension while device is on-body is not supported for keys requiring fingerprint authentication"

    invoke-direct {v3, v4}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_12
    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/UserAuthArgs;->getBoundToSpecificSecureUserId()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_13

    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/UserAuthArgs;->getBoundToSpecificSecureUserId()J

    move-result-wide v1

    goto :goto_5

    :cond_13
    invoke-static {}, Landroid/security/keystore/KeymasterUtils;->getRootSid()J

    move-result-wide v1

    :goto_5
    nop

    invoke-static {v1, v2}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    const/16 v4, 0x17

    invoke-virtual {v0, v3, v4}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    const v3, 0x300001f9

    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/UserAuthArgs;->getUserAuthenticationValidityDurationSeconds()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    invoke-interface/range {p1 .. p1}, Landroid/security/keystore/UserAuthArgs;->isUserAuthenticationValidWhileOnBody()Z

    move-result v3

    if-eqz v3, :cond_14

    const v3, 0x700001fa

    invoke-virtual {v0, v3}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    :cond_14
    :goto_6
    return-void
.end method

.method public static getDigestOutputSizeBits(I)I
    .locals 3

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown digest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x200

    return v0

    :pswitch_1
    const/16 v0, 0x180

    return v0

    :pswitch_2
    const/16 v0, 0x100

    return v0

    :pswitch_3
    const/16 v0, 0xe0

    return v0

    :pswitch_4
    const/16 v0, 0xa0

    return v0

    :pswitch_5
    const/16 v0, 0x80

    return v0

    :pswitch_6
    const/4 v0, -0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getRootSid()J
    .locals 4

    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Secure lock screen must be enabled to create keys requiring user authentication"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z
    .locals 3

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported block mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z
    .locals 3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported asymmetric encryption padding scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :cond_0
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isPrintable(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-lt v2, v3, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
