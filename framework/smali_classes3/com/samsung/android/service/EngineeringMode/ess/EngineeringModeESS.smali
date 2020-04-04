.class public Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;
.super Ljava/lang/Object;
.source "EngineeringModeESS.java"


# static fields
.field public static final ESS_ERROR_BROKEN_INTEGRITY:I = -0x65

.field public static final ESS_ERROR_INVAILD_PARAM:I = -0x64

.field public static final ESS_NOK:I = 0x0

.field public static final ESS_OK:I = 0x1

.field public static final ESS_V1_INST_MAX_PARAMS:I = 0x6

.field public static final ESS_V1_MAX_CERT:I = 0x1000

.field public static final ESS_V1_MAX_CERT_LEN:I = 0x5

.field public static final ESS_V1_MAX_DATE:I = 0x8

.field public static final ESS_V1_MAX_ERSD:I = 0x800

.field public static final ESS_V1_MAX_ERSD_LEN:I = 0x800

.field public static final ESS_V1_MAX_ESS:I = 0x100

.field public static final ESS_V1_MAX_ETOKEN:I = 0xf000

.field public static final ESS_V1_MAX_ETOKEN_LEN:I = 0x6

.field public static final ESS_V1_MAX_HASH:I = 0x40

.field public static final ESS_V1_MAX_IV:I = 0x20

.field public static final ESS_V1_MAX_IV_LEN:I = 0x3

.field public static final ESS_V1_MAX_MODES_SET:I = 0x80

.field public static final ESS_V1_MAX_NUM_MODES:I = 0x3

.field public static final ESS_V1_MAX_OTP:I = 0x6

.field public static final ESS_V1_MAX_PARAMS:I = 0xb

.field public static final ESS_V1_MAX_SINGLE_ID:I = 0x64

.field public static final ESS_V1_NUM_CHECK:I = 0x1

.field public static final ESS_V1_RECOVERY_MAX_PARAMS:I = 0x6

.field public static final ESS_V1_RM_NUM_PARAMS:I = 0x7

.field public static final ESS_V1_TDM_MAX_PARAMS:I = 0x5

.field public static final ESS_V1_TRM_NUM_PARAMS:I = 0xb

.field public static final INSTALL_TOK:I = 0x3

.field public static final MAKE_RECOVERY_MSG:I = 0x4

.field public static final MAKE_TOK_DEL_MSG:I = 0x2

.field public static final MAKE_TOK_REQ_MSG:I = 0x1

.field public static final RECOVERY_DATA:I = 0x5

.field private static final TAG:Ljava/lang/String; = "EngineeringModeESS"


# instance fields
.field private mCert:[B

.field private mErsdB64:Ljava/lang/String;

.field private mEtokenB64:Ljava/lang/String;

.field private mPrefixBody:Ljava/lang/String;

.field private mRxIVB64:Ljava/lang/String;

.field private mType:I

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkIntegrityOfCmd([B[B)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x20

    new-array v1, v1, [B

    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    move-object v1, v3

    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method private hexToByteArray(Ljava/lang/String;)[B
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    mul-int v3, v1, v2

    mul-int v4, v1, v2

    add-int/2addr v4, v1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isStringInt(Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private parseCommandV1(ILjava/lang/String;)I
    .locals 26

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/16 v6, 0xb

    filled-new-array {v6, v5}, [I

    move-result-object v6

    const-class v7, I

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "EngineeringModeESS"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Command Type : "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EngineeringModeESS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Command : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x100

    const/16 v18, 0x6

    const/16 v19, 0x40

    const/16 v20, 0x5

    const/16 v21, 0x4

    const/4 v15, 0x3

    const/4 v5, 0x1

    const/4 v14, 0x0

    packed-switch v2, :pswitch_data_0

    const-string v2, "EngineeringModeESS"

    const-string v5, "It\'s not supported type"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    :pswitch_0
    const/4 v4, 0x6

    aget-object v17, v6, v5

    aput v15, v17, v14

    aget-object v17, v6, v5

    aput v5, v17, v5

    const/16 v16, 0x2

    aget-object v17, v6, v16

    const/16 v18, 0x20

    aput v18, v17, v14

    aget-object v17, v6, v15

    const/16 v18, 0x800

    aput v18, v17, v14

    aget-object v17, v6, v15

    aput v5, v17, v5

    aget-object v17, v6, v21

    aput v18, v17, v14

    aget-object v17, v6, v20

    aput v19, v17, v14

    const/4 v11, 0x1

    const/4 v13, 0x1

    goto/16 :goto_0

    :pswitch_1
    const/4 v4, 0x7

    aget-object v24, v6, v5

    aput v17, v24, v14

    const/16 v16, 0x2

    aget-object v17, v6, v16

    const/16 v23, 0x64

    aput v23, v17, v14

    aget-object v17, v6, v15

    aput v18, v17, v14

    aget-object v17, v6, v21

    aput v20, v17, v14

    aget-object v17, v6, v20

    const/16 v20, 0x1000

    aput v20, v17, v14

    aget-object v17, v6, v18

    aput v19, v17, v14

    const/4 v9, 0x1

    const/4 v10, 0x1

    goto/16 :goto_0

    :pswitch_2
    const/4 v4, 0x6

    aget-object v17, v6, v5

    aput v15, v17, v14

    aget-object v17, v6, v5

    aput v5, v17, v5

    const/16 v16, 0x2

    aget-object v17, v6, v16

    const/16 v22, 0x20

    aput v22, v17, v14

    aget-object v17, v6, v15

    aput v18, v17, v14

    aget-object v17, v6, v15

    aput v5, v17, v5

    aget-object v17, v6, v21

    const v18, 0xf000

    aput v18, v17, v14

    aget-object v17, v6, v20

    aput v19, v17, v14

    const/4 v11, 0x1

    const/4 v12, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x5

    aget-object v18, v6, v5

    aput v17, v18, v14

    const/16 v16, 0x2

    aget-object v17, v6, v16

    aput v20, v17, v14

    aget-object v17, v6, v15

    const/16 v18, 0x1000

    aput v18, v17, v14

    aget-object v17, v6, v21

    aput v19, v17, v14

    const/4 v9, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :pswitch_4
    const/16 v4, 0xb

    aget-object v24, v6, v5

    aput v17, v24, v14

    const/16 v16, 0x2

    aget-object v17, v6, v16

    aput v15, v17, v14

    aget-object v17, v6, v15

    const/16 v24, 0x80

    aput v24, v17, v14

    aget-object v17, v6, v21

    const/16 v24, 0x8

    aput v24, v17, v14

    aget-object v17, v6, v21

    aput v5, v17, v5

    aget-object v17, v6, v20

    aput v24, v17, v14

    aget-object v17, v6, v20

    aput v5, v17, v5

    aget-object v17, v6, v18

    const/16 v23, 0x64

    aput v23, v17, v14

    const/16 v17, 0x7

    aget-object v17, v6, v17

    aput v18, v17, v14

    aget-object v17, v6, v24

    aput v20, v17, v14

    const/16 v17, 0x9

    aget-object v17, v6, v17

    const/16 v18, 0x1000

    aput v18, v17, v14

    const/16 v17, 0xa

    aget-object v17, v6, v17

    aput v19, v17, v14

    const/4 v9, 0x1

    const/4 v10, 0x1

    nop

    :goto_0
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v15, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v0, v5

    const/16 v15, -0x64

    if-ge v0, v4, :cond_0

    const-string v0, "EngineeringModeESS"

    const-string v14, "Improper parameters"

    invoke-static {v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v15

    :cond_0
    const/4 v0, 0x1

    :goto_1
    if-ge v0, v4, :cond_4

    aget-object v15, v5, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-ltz v15, :cond_3

    aget-object v15, v5, v0

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    aget-object v17, v6, v0

    aget v2, v17, v14

    if-le v15, v2, :cond_1

    goto :goto_2

    :cond_1
    aget-object v2, v6, v0

    const/4 v15, 0x1

    aget v2, v2, v15

    if-ne v15, v2, :cond_2

    aget-object v2, v5, v0

    invoke-static {v2}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->isStringInt(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "EngineeringModeESS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Improper type of parameter#"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x64

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, p1

    const/16 v15, -0x64

    goto :goto_1

    :cond_3
    :goto_2
    const-string v2, "EngineeringModeESS"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Improper size of parameter#"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x64

    return v2

    :cond_4
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v4, -0x1

    aget-object v2, v5, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v3, v14, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    const-string v0, "EngineeringModeESS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bodyMsg : "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "UTF-8"

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_3
    add-int/lit8 v0, v4, -0x1

    aget-object v0, v5, v0

    invoke-direct {v1, v0}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v8, v0}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->checkIntegrityOfCmd([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "EngineeringModeESS"

    const-string v2, "Broken integrity"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x65

    return v0

    :cond_5
    if-eqz v10, :cond_6

    add-int/lit8 v0, v4, -0x2

    aget-object v0, v5, v0

    invoke-direct {v1, v0}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mCert:[B

    iget-object v0, v1, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mCert:[B

    array-length v0, v0

    add-int/lit8 v2, v4, -0x3

    aget-object v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_6

    const-string v0, "EngineeringModeESS"

    const-string v2, "Invaild length of certificate"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x64

    return v2

    :cond_6
    if-eqz v9, :cond_7

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v2, v4, -0x1

    aget-object v2, v5, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v2, v4, -0x2

    aget-object v2, v5, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v2, v4, -0x3

    aget-object v2, v5, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x4

    const/4 v2, 0x3

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mPrefixBody:Ljava/lang/String;

    :cond_7
    if-eqz v11, :cond_8

    const/4 v2, 0x2

    aget-object v0, v5, v2

    iput-object v0, v1, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mRxIVB64:Ljava/lang/String;

    :cond_8
    if-eqz v12, :cond_9

    aget-object v0, v5, v21

    iput-object v0, v1, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mEtokenB64:Ljava/lang/String;

    :cond_9
    if-eqz v13, :cond_a

    aget-object v0, v5, v21

    iput-object v0, v1, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mErsdB64:Ljava/lang/String;

    :cond_a
    const/4 v2, 0x1

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getmCert()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mCert:[B

    return-object v0
.end method

.method public getmErsdB64()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mErsdB64:Ljava/lang/String;

    return-object v0
.end method

.method public getmEtokenB64()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mEtokenB64:Ljava/lang/String;

    return-object v0
.end method

.method public getmPrefixBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mPrefixBody:Ljava/lang/String;

    return-object v0
.end method

.method public getmRxIVB64()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mRxIVB64:Ljava/lang/String;

    return-object v0
.end method

.method public getmType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mType:I

    return v0
.end method

.method public init(ILjava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mVersion:Ljava/lang/String;

    const-string v2, "EngineeringModeESS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ESS Protocol Version is v."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->mVersion:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x601

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "01"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    const-string v1, "EngineeringModeESS"

    const-string v2, "It\'s not supported version"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/ess/EngineeringModeESS;->parseCommandV1(ILjava/lang/String;)I

    move-result v0

    nop

    :goto_2
    return v0

    :cond_4
    :goto_3
    const-string v2, "EngineeringModeESS"

    const-string v3, "Invaild parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
