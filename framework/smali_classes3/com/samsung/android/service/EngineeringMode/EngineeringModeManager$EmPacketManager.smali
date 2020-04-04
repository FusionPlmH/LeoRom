.class Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;
.super Ljava/lang/Object;
.source "EngineeringModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EmPacketManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager$EmType;
    }
.end annotation


# static fields
.field private static final EMP_2BYTES:I = 0x2

.field private static final EMP_3BYTES:I = 0x3

.field private static final EMP_4BYTES:I = 0x4

.field private static final EMP_MAGIC_SIZE:I = 0x4

.field private static final EMP_MAX_DEVICE_NUM:I = 0x1f4

.field private static final EMP_MAX_MODE_DESC:I = 0x80

.field private static final EMP_MAX_MODE_NAME:I = 0x20


# instance fields
.field private headerLen:I

.field private mNumOfDevice:I

.field private mOTPtime:I

.field private mPos:I

.field private mPosDeviceInfo:[I

.field private mPosGroupDb:I

.field private mPosIntegrityInfo:I

.field private mPosIssuerInfo:I

.field private mPosModeDb:I

.field private mPosModeInfo:I

.field private mPosTokenInfo:I

.field private mPosValidityInfo:I

.field private mPrefix:Ljava/lang/String;

.field private mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

.field private mType:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    const/16 v0, 0x1f4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosDeviceInfo:[I

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-direct {v0}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mNumOfDevice:I

    return-void
.end method

.method private byteArrayToHex([B)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p1, v3

    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getBytes([BII)[B
    .locals 1

    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method private getInt([BI)I
    .locals 2

    const/4 v0, 0x4

    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    return v0
.end method

.method private getShort([BI)I
    .locals 2

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private getStringFromBytes([B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-object v0
.end method

.method private parseDeviceInfo([BI)I
    .locals 13

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, v1}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr p2, v1

    const-string v2, "DEVI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Error deviceInfo magic"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v2

    add-int/2addr p2, v1

    if-gez v2, :cond_1

    const-string v1, "EngineeringModeManager"

    const-string v4, "Error deviceInfo sizeOfInfo"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v4

    add-int/2addr p2, v1

    if-gez v4, :cond_2

    const-string v1, "EngineeringModeManager"

    const-string v5, "Error deviceInfo numOfData"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string v1, "EngineeringModeManager"

    const-string v5, ""

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    const-string v5, "[Device Info]"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Magic : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sizeOfInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "numOfdata : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    const-string v5, ""

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    move v5, p2

    move p2, v1

    :goto_0
    if-gt p2, v4, :cond_8

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v6

    add-int/lit8 v5, v5, 0x2

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v7

    const/4 v8, 0x2

    add-int/2addr v5, v8

    if-gez v7, :cond_3

    const-string v1, "EngineeringModeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error deviceInfo item len : type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    const/4 v9, 0x3

    if-eq v6, v1, :cond_4

    if-eq v6, v8, :cond_4

    if-eq v6, v9, :cond_4

    const-string v10, "EngineeringModeManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unregistered type but it can be new one : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0, p1, v5, v7}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v10

    add-int/2addr v5, v7

    iget-object v11, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v11, v6, v7, v10}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushDeviceInfo(II[B)V

    if-ne v6, v1, :cond_5

    const-string v8, "EngineeringModeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "type : Model Name, len : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v7, :cond_7

    const-string v8, "EngineeringModeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v10}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-ne v6, v8, :cond_6

    const-string v8, "EngineeringModeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "type : DID, len : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v7, :cond_7

    const-string v8, "EngineeringModeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v10}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    if-ne v6, v9, :cond_7

    const-string v8, "EngineeringModeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "type : IMEI, len : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v7, :cond_7

    const-string v8, "EngineeringModeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v10}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_8
    const-string p2, "EngineeringModeManager"

    const-string v1, ""

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "EngineeringModeManager"

    const-string v1, ""

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    return p2
.end method

.method private parseGroupData([BI)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v2

    add-int/lit8 v3, p2, 0x2

    const/4 v4, -0x1

    if-gez v2, :cond_0

    const-string v5, "EngineeringModeManager"

    const-string v6, "Error parseGroupData groupIndex"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    new-instance v5, Ljava/lang/String;

    const/16 v6, 0x20

    invoke-direct {v5, v1, v3, v6}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr v3, v6

    new-instance v6, Ljava/lang/String;

    const/16 v7, 0x80

    invoke-direct {v6, v1, v3, v7}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr v3, v7

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v7

    add-int/lit8 v3, v3, 0x4

    if-gez v7, :cond_1

    const-string v8, "EngineeringModeManager"

    const-string v9, "Error parseGroupData sizeOfAttrInfo"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    invoke-direct {v0, v1, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v8

    add-int/lit8 v3, v3, 0x4

    if-gez v8, :cond_2

    const-string v9, "EngineeringModeManager"

    const-string v10, "Error parseGroupData numOfAttr"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_2
    iget-object v9, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v9, v2, v5, v6}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushGroupDB(ILjava/lang/String;Ljava/lang/String;)V

    const-string v9, "EngineeringModeManager"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "EngineeringModeManager"

    const-string v10, "[Groupe DB Attr]"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "groupIndex : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "groupName : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "groupDesc : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "sizeOfAttrInfo : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "numOfAttr : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "EngineeringModeManager"

    const-string v10, ""

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    move v10, v3

    move v3, v9

    :goto_0
    if-gt v3, v8, :cond_6

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v11

    add-int/lit8 v10, v10, 0x2

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v12

    add-int/lit8 v10, v10, 0x2

    if-gez v12, :cond_3

    const-string v9, "EngineeringModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error groupData item len : type : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    if-eq v11, v9, :cond_4

    const-string v13, "EngineeringModeManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unregistered type but it can be new one : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {v0, v1, v10, v12}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v13

    add-int/2addr v10, v12

    iget-object v14, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v14, v2, v11, v12, v13}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushAttrToGroupItem(III[B)V

    if-ne v11, v9, :cond_5

    const-string v14, "EngineeringModeManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "type : No Duplicate, len : "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v12, :cond_5

    const-string v4, "EngineeringModeManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Value : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v13}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v3, v3, 0x1

    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_6
    const-string v3, "EngineeringModeManager"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "EngineeringModeManager"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method private parseGroupDb([BI)I
    .locals 9

    const-string v0, "EngineeringModeManager"

    const-string v1, "Enter praseGroupDb"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EngineeringModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buf Lengh : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "EngineeringModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "POS Offset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x4

    invoke-direct {v1, p1, p2, v2}, Ljava/lang/String;-><init>([BII)V

    add-int/lit8 p2, p2, 0x4

    const-string v2, "EngineeringModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "magic : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "GRDB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    const-string v2, "EngineeringModeManager"

    const-string v4, "Error groupDB magic"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v2

    add-int/lit8 p2, p2, 0x4

    if-gez v2, :cond_1

    const-string v4, "EngineeringModeManager"

    const-string v5, "Error groupDB sizeOfInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v4

    add-int/lit8 p2, p2, 0x4

    if-gez v4, :cond_2

    const-string v5, "EngineeringModeManager"

    const-string v6, "Error groupDB numOfData"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string v5, "EngineeringModeManager"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EngineeringModeManager"

    const-string v6, "[Group DB]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EngineeringModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Magic : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EngineeringModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sizeOfInfo : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EngineeringModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "numOfdata : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "EngineeringModeManager"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v5, p2

    move p2, v0

    :goto_0
    if-ge p2, v4, :cond_4

    :try_start_1
    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseGroupData([BI)I

    move-result v6

    move v5, v6

    if-gez v5, :cond_3

    const-string v6, "EngineeringModeManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parseGroupData : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    move p2, v5

    goto :goto_1

    :cond_4
    nop

    move-object p2, v1

    move v1, v2

    move v2, v4

    return v0

    :catch_1
    move-exception v1

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private parseIntegrityInfo([BI)I
    .locals 12

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, v1}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr p2, v1

    const-string v2, "INTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Error integInfo magic"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v2

    add-int/2addr p2, v1

    if-gez v2, :cond_1

    const-string v1, "EngineeringModeManager"

    const-string v4, "Error integInfo sizeOfInfo"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v4

    add-int/2addr p2, v1

    if-gez v4, :cond_2

    const-string v1, "EngineeringModeManager"

    const-string v5, "Error integInfo numOfData"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string v1, "EngineeringModeManager"

    const-string v5, ""

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    const-string v5, "[Integrity Info]"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Magic : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sizeOfInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "numOfdata : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    const-string v5, ""

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    move v5, p2

    move p2, v1

    :goto_0
    if-gt p2, v4, :cond_7

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v6

    add-int/lit8 v5, v5, 0x2

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v7

    const/4 v8, 0x2

    add-int/2addr v5, v8

    if-gez v7, :cond_3

    const-string v1, "EngineeringModeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error integInfo item len : type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    if-eq v6, v1, :cond_4

    if-eq v6, v8, :cond_4

    const-string v9, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unregistered type but it can be new one : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0, p1, v5, v7}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v9

    add-int/2addr v5, v7

    iget-object v10, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v10, v6, v7, v9}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushIntegrityInfo(II[B)V

    if-ne v6, v1, :cond_5

    const-string v8, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "type : Signature, len : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v7, :cond_6

    const-string v8, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-ne v6, v8, :cond_6

    const-string v8, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "type : Server Cert, len : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v7, :cond_6

    const-string v8, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_7
    const-string p2, "EngineeringModeManager"

    const-string v1, ""

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "EngineeringModeManager"

    const-string v1, ""

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    return p2
.end method

.method private parseIssuerInfo([BI)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr v2, v4

    const-string v5, "ISSU"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_0

    const-string v4, "EngineeringModeManager"

    const-string v5, "Error issuerInfo magic"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    add-int/2addr v2, v4

    if-gez v5, :cond_1

    const-string v4, "EngineeringModeManager"

    const-string v7, "Error issuerInfo sizeOfInfo"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v7

    add-int/2addr v2, v4

    if-gez v7, :cond_2

    const-string v4, "EngineeringModeManager"

    const-string v8, "Error issuerInfo numOfData"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    const-string v4, "EngineeringModeManager"

    const-string v8, ""

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "EngineeringModeManager"

    const-string v8, "[Issuer Info]"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "EngineeringModeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Magic : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "EngineeringModeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sizeOfInfo : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "EngineeringModeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "numOfdata : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "EngineeringModeManager"

    const-string v8, ""

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move v8, v2

    move v2, v4

    :goto_0
    if-gt v2, v7, :cond_b

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v9

    add-int/lit8 v8, v8, 0x2

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v10

    const/4 v11, 0x2

    add-int/2addr v8, v11

    if-gez v10, :cond_3

    const-string v4, "EngineeringModeManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error issuerInfo item len : type : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    const/16 v12, 0x1003

    const/16 v13, 0x1002

    const/16 v14, 0x1001

    const/4 v15, 0x3

    if-eq v9, v4, :cond_4

    if-eq v9, v11, :cond_4

    if-eq v9, v15, :cond_4

    if-eq v9, v14, :cond_4

    if-eq v9, v13, :cond_4

    if-eq v9, v12, :cond_4

    const-string v6, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unregistered type but it can be new one : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {v0, v1, v8, v10}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v6

    add-int/2addr v8, v10

    iget-object v12, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v12, v9, v10, v6}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushIssuerInfo(II[B)V

    if-ne v9, v4, :cond_5

    const-string v11, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "type : Single ID, len : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v10, :cond_a

    const-string v11, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Value : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    if-ne v9, v11, :cond_6

    const-string v11, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "type : OTP, len : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v10, :cond_a

    const-string v11, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Value : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    if-ne v9, v15, :cond_7

    const-string v11, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "type : Nonce, len : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v10, :cond_a

    const-string v11, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Value : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    if-ne v9, v14, :cond_8

    const-string v11, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "type : System ID, len : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v10, :cond_a

    const-string v11, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Value : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    const/16 v11, 0x1002

    if-ne v9, v11, :cond_9

    const-string v11, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "type : IP, len : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v10, :cond_a

    const-string v11, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Value : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    const/16 v11, 0x1003

    if-ne v9, v11, :cond_a

    const-string v11, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "type : MAC, len : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v10, :cond_a

    const-string v11, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Value : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_1
    add-int/lit8 v2, v2, 0x1

    const/4 v6, -0x1

    goto/16 :goto_0

    :cond_b
    const-string v2, "EngineeringModeManager"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "EngineeringModeManager"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private parseModeData([BI)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v2

    const/4 v3, 0x2

    add-int/lit8 v4, p2, 0x2

    const/4 v5, -0x1

    if-gez v2, :cond_0

    const-string v3, "EngineeringModeManager"

    const-string v6, "Error parseModeData modeIndex"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    new-instance v6, Ljava/lang/String;

    const/16 v7, 0x20

    invoke-direct {v6, v1, v4, v7}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr v4, v7

    new-instance v7, Ljava/lang/String;

    const/16 v8, 0x80

    invoke-direct {v7, v1, v4, v8}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr v4, v8

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v8

    add-int/2addr v4, v3

    if-gez v8, :cond_1

    const-string v3, "EngineeringModeManager"

    const-string v9, "Error parseModeData groupIndex"

    invoke-static {v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-direct {v0, v1, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v9

    const/4 v10, 0x4

    add-int/2addr v4, v10

    if-gez v9, :cond_2

    const-string v3, "EngineeringModeManager"

    const-string v10, "Error parseModeData sizeOfAttrInfo"

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    invoke-direct {v0, v1, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v11

    add-int/2addr v4, v10

    if-gez v11, :cond_3

    const-string v3, "EngineeringModeManager"

    const-string v10, "Error parseModeData numOfAttr"

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    iget-object v12, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v12, v2, v6, v7, v8}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushModeDB(ILjava/lang/String;Ljava/lang/String;I)V

    const-string v12, "EngineeringModeManager"

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "EngineeringModeManager"

    const-string v13, "[Mode DB Attr]"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "EngineeringModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "modeIndex : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "EngineeringModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "modeName : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "EngineeringModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "modeDesc : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "EngineeringModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "groupIndex : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "EngineeringModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "sizeOfAttrInfo : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "EngineeringModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "numOfAttr : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "EngineeringModeManager"

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x1

    move v13, v4

    move v4, v12

    :goto_0
    if-gt v4, v11, :cond_c

    invoke-direct {v0, v1, v13}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v14

    add-int/lit8 v13, v13, 0x2

    invoke-direct {v0, v1, v13}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v15

    add-int/2addr v13, v3

    if-gez v15, :cond_4

    const-string v3, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error modeData item len : type : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4
    const/4 v5, 0x3

    if-eq v14, v12, :cond_5

    if-eq v14, v3, :cond_5

    if-eq v14, v5, :cond_5

    if-eq v14, v10, :cond_5

    const/4 v10, 0x5

    if-eq v14, v10, :cond_5

    const/4 v10, 0x6

    if-eq v14, v10, :cond_5

    const-string v10, "EngineeringModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unregistered type but it can be new one : "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {v0, v1, v13, v15}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v3

    add-int/2addr v13, v15

    iget-object v5, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v2, v14, v15, v3}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushAttrToModeItem(III[B)V

    if-ne v14, v12, :cond_6

    const-string v10, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "type : Device Unique Info, len : "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v15, :cond_b

    const-string v5, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Value : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-direct {v0, v3, v12}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const/4 v5, 0x2

    if-ne v14, v5, :cond_7

    const-string v10, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "type : Hidden, len : "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v15, :cond_b

    const-string v5, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Value : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    const/4 v5, 0x3

    if-ne v14, v5, :cond_8

    const-string v5, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "type : MTUC, len : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v15, :cond_b

    const-string v5, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Value : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    const/4 v5, 0x4

    if-ne v14, v5, :cond_9

    const-string v10, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "type : MTUC Value, len : "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v15, :cond_b

    const-string v5, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Value : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v12, 0x0

    invoke-direct {v0, v3, v12}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    const/4 v5, 0x5

    if-ne v14, v5, :cond_a

    const-string v5, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "type : Exclusive, len : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v15, :cond_b

    const-string v5, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Value : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_a
    const/4 v5, 0x6

    if-ne v14, v5, :cond_b

    const-string v5, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "type : Used Once, len : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v15, :cond_b

    const-string v5, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Value : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_1
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x2

    const/4 v5, -0x1

    const/4 v10, 0x4

    const/4 v12, 0x1

    goto/16 :goto_0

    :cond_c
    const-string v3, "EngineeringModeManager"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "EngineeringModeManager"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v13
.end method

.method private parseModeDb([BI)I
    .locals 8

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, v1}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr p2, v1

    const-string v2, "MODB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Error modeDB magic"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v2

    add-int/2addr p2, v1

    if-gez v2, :cond_1

    const-string v1, "EngineeringModeManager"

    const-string v4, "Error modeDB sizeOfInfo"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v4

    add-int/2addr p2, v1

    if-gez v4, :cond_2

    const-string v1, "EngineeringModeManager"

    const-string v5, "Error modeDB numOfData"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string v1, "EngineeringModeManager"

    const-string v5, ""

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    const-string v5, "[Mode DB]"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Magic : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sizeOfInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "numOfdata : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    const-string v5, ""

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v5, p2

    move p2, v1

    :goto_0
    if-ge p2, v4, :cond_4

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseModeData([BI)I

    move-result v5

    if-gez v5, :cond_3

    const-string v1, "EngineeringModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parseModeData : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method

.method private parseModeInfo([BI)I
    .locals 10

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, v1}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr p2, v1

    const-string v2, "MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Error modeInfo magic"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v2

    add-int/2addr p2, v1

    if-gez v2, :cond_1

    const-string v1, "EngineeringModeManager"

    const-string v4, "Error modeInfo sizeOfInfo"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v4

    add-int/2addr p2, v1

    if-gez v4, :cond_2

    const-string v1, "EngineeringModeManager"

    const-string v5, "Error modeInfo numOfData"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string v1, "EngineeringModeManager"

    const-string v5, ""

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    const-string v5, "[Mode Info]"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Magic : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sizeOfInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "numOfdata : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    const-string v5, ""

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v4, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v5

    add-int/lit8 p2, p2, 0x2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v6

    add-int/lit8 p2, p2, 0x2

    if-gez v6, :cond_3

    const-string v7, "EngineeringModeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error modeInfo item len : type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    iget-object v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v6, v8}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushModeInfo(II[B)V

    const-string v7, "EngineeringModeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Mode "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "EngineeringModeManager"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    const-string v3, ""

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method private parseOTPtime([BI)I
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mOTPtime:I

    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mOTPtime:I

    if-gez v0, :cond_0

    const-string v0, "EngineeringModeManager"

    const-string v1, "Error OTP remain time"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    const-string v0, "EngineeringModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OTP Time : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mOTPtime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    iget v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mOTPtime:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushOTPTime(I)V

    const/4 v0, 0x0

    return v0
.end method

.method private parseTokenInfo([BI)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v2, v4}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr v2, v4

    const-string v5, "TOKE"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, -0x1

    if-nez v5, :cond_0

    const-string v4, "EngineeringModeManager"

    const-string v5, "Error tokenInfo magic"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    add-int/2addr v2, v4

    if-gez v5, :cond_1

    const-string v4, "EngineeringModeManager"

    const-string v7, "Error tokenInfo sizeOfInfo"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v7

    add-int/2addr v2, v4

    if-gez v7, :cond_2

    const-string v4, "EngineeringModeManager"

    const-string v8, "Error tokenInfo numOfData"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    const-string v4, "EngineeringModeManager"

    const-string v8, ""

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "EngineeringModeManager"

    const-string v8, "[Token Info]"

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "EngineeringModeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Magic : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "EngineeringModeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sizeOfInfo : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "EngineeringModeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "numOfdata : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "EngineeringModeManager"

    const-string v8, ""

    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move v8, v2

    move v2, v4

    :goto_0
    const/4 v9, 0x0

    if-gt v2, v7, :cond_9

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v10

    add-int/lit8 v8, v8, 0x2

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v11

    const/4 v12, 0x2

    add-int/2addr v8, v12

    if-gez v11, :cond_3

    const-string v4, "EngineeringModeManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error tokenInfo item len : type : "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    const/4 v13, 0x3

    if-eq v10, v4, :cond_4

    if-eq v10, v12, :cond_4

    if-eq v10, v13, :cond_4

    const-string v14, "EngineeringModeManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unregistered type but it can be new one : "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v14, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {v0, v1, v8, v11}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v6

    add-int/2addr v8, v11

    iget-object v14, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v14, v10, v11, v6}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushTokenInfo(II[B)V

    if-ne v10, v13, :cond_5

    invoke-direct {v0, v6, v9}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v14

    iput v14, v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mNumOfDevice:I

    :cond_5
    if-ne v10, v4, :cond_6

    const-string v9, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "type : TokenID, len : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_8

    const-string v9, "EngineeringModeManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Value : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    if-ne v10, v12, :cond_7

    const-string v12, "EngineeringModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "type : Device Unique Info, len : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_8

    const-string v12, "EngineeringModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Value : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v6, v9}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    if-ne v10, v13, :cond_8

    const-string v12, "EngineeringModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "type : Number Of Device Info, len : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v11, :cond_8

    const-string v12, "EngineeringModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Value : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v6, v9}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    add-int/lit8 v2, v2, 0x1

    const/4 v6, -0x1

    goto/16 :goto_0

    :cond_9
    const-string v2, "EngineeringModeManager"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "EngineeringModeManager"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method

.method private parseValidityInfo([BI)I
    .locals 12

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x4

    invoke-direct {v0, p1, p2, v1}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr p2, v1

    const-string v2, "VALI"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, -0x1

    if-nez v2, :cond_0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Error validityInfo magic"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v2

    add-int/2addr p2, v1

    if-gez v2, :cond_1

    const-string v1, "EngineeringModeManager"

    const-string v4, "Error validityInfo sizeOfInfo"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v4

    add-int/2addr p2, v1

    if-gez v4, :cond_2

    const-string v1, "EngineeringModeManager"

    const-string v5, "Error validityInfo numOfData"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const-string v1, "EngineeringModeManager"

    const-string v5, ""

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    const-string v5, "[Validity Info]"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Magic : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sizeOfInfo : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "numOfdata : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "EngineeringModeManager"

    const-string v5, ""

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    move v5, p2

    move p2, v1

    :goto_0
    if-gt p2, v4, :cond_7

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v6

    add-int/lit8 v5, v5, 0x2

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getShort([BI)I

    move-result v7

    const/4 v8, 0x2

    add-int/2addr v5, v8

    if-gez v7, :cond_3

    const-string v1, "EngineeringModeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error validityInfo item len : type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    if-eq v6, v1, :cond_4

    if-eq v6, v8, :cond_4

    const-string v9, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unregistered type but it can be new one : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0, p1, v5, v7}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getBytes([BII)[B

    move-result-object v9

    add-int/2addr v5, v7

    iget-object v10, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v10, v6, v7, v9}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->pushValidityInfo(II[B)V

    if-ne v6, v1, :cond_5

    const-string v8, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "type : Issued Date, len : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v7, :cond_6

    const-string v8, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-ne v6, v8, :cond_6

    const-string v8, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "type : Expiry Date, len : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v7, :cond_6

    const-string v8, "EngineeringModeManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Value : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v9}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getStringFromBytes([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_7
    const-string p2, "EngineeringModeManager"

    const-string v1, ""

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "EngineeringModeManager"

    const-string v1, ""

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    return p2
.end method


# virtual methods
.method public parseToken(I[B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;
    .locals 10

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v1, "EngineeringModeManager"

    const-string v2, "Error Invalid Argument"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    const/4 v3, 0x3

    invoke-direct {v1, p2, v2, v3}, Ljava/lang/String;-><init>([BII)V

    iget v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    const-string v2, "ENG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "EngineeringModeManager"

    const-string v3, "Error prefix"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    new-instance v2, Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {v2, p2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    iget v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    new-instance v3, Ljava/lang/String;

    iget v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    const/4 v5, 0x4

    invoke-direct {v3, p2, v4, v5}, Ljava/lang/String;-><init>([BII)V

    iget v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v4, v1}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setPrefix(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v4, v2}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setType(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v4, v3}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setVersion(Ljava/lang/String;)V

    const-string v4, "EngineeringModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Prefix : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", Type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", Version : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p2, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseModeDb([BI)I

    move-result v4

    if-gez v4, :cond_2

    const-string v5, "EngineeringModeManager"

    const-string v6, "Error parseModeDB"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v6, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p2, v6}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iget v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    if-gez v6, :cond_3

    const-string v5, "EngineeringModeManager"

    const-string v7, "Error modeDB sizeOfInfo"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    iget v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    const-string v7, "EngineeringModeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pos Offset : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p2, v7}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseGroupDb([BI)I

    move-result v4

    if-gez v4, :cond_4

    const-string v5, "EngineeringModeManager"

    const-string v7, "Error parseGroupDB"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_4
    iget v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p2, v7}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v6

    iget v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v7, v5

    iput v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    if-gez v6, :cond_5

    const-string v5, "EngineeringModeManager"

    const-string v7, "Error modeDB sizeOfInfo"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5
    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseOTPtime([BI)I

    iget-object v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    return-object v0
.end method

.method public parseToken([B)Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v0, "EngineeringModeManager"

    const-string v2, "Error Invalid Argument"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/String;

    iget v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    const/4 v4, 0x3

    invoke-direct {v2, p1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    iget v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    const-string v3, "ENG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "EngineeringModeManager"

    const-string v3, "Error prefix"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance v3, Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {v3, p1, v5, v4}, Ljava/lang/String;-><init>([BII)V

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    new-instance v4, Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    const/4 v6, 0x4

    invoke-direct {v4, p1, v5, v6}, Ljava/lang/String;-><init>([BII)V

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget-object v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v2}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setPrefix(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v3}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setType(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    invoke-virtual {v5, v4}, Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;->setVersion(Ljava/lang/String;)V

    const-string v5, "EngineeringModeManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prefix : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Version : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->headerLen:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosTokenInfo:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosTokenInfo:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseTokenInfo([BI)I

    move-result v5

    if-gez v5, :cond_2

    const-string v0, "EngineeringModeManager"

    const-string v6, "Error parseTokenInfo"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    nop

    :goto_0
    iget v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mNumOfDevice:I

    if-ge v0, v7, :cond_4

    iget-object v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosDeviceInfo:[I

    iget v8, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v8}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v8

    aput v8, v7, v0

    iget v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget-object v7, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosDeviceInfo:[I

    aget v7, v7, v0

    invoke-direct {p0, p1, v7}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseDeviceInfo([BI)I

    move-result v5

    if-gez v5, :cond_3

    const-string v6, "EngineeringModeManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error parseDeviceInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosIssuerInfo:I

    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v0, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosIssuerInfo:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseIssuerInfo([BI)I

    move-result v0

    if-gez v0, :cond_5

    const-string v5, "EngineeringModeManager"

    const-string v6, "Error parseIssuerInfo"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5
    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosModeInfo:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosModeInfo:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseModeInfo([BI)I

    move-result v0

    if-gez v0, :cond_6

    const-string v5, "EngineeringModeManager"

    const-string v6, "Error parseModeInfo"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_6
    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosValidityInfo:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosValidityInfo:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseValidityInfo([BI)I

    move-result v0

    if-gez v0, :cond_7

    const-string v5, "EngineeringModeManager"

    const-string v6, "Error parseValidityInfo"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_7
    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosIntegrityInfo:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosIntegrityInfo:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseIntegrityInfo([BI)I

    move-result v0

    if-gez v0, :cond_8

    const-string v5, "EngineeringModeManager"

    const-string v6, "Error parseIntegrityInfo"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_8
    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosModeDb:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosModeDb:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseModeDb([BI)I

    move-result v0

    if-gez v0, :cond_9

    const-string v5, "EngineeringModeManager"

    const-string v6, "Error parseModeDB"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_9
    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->getInt([BI)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosGroupDb:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPos:I

    iget v5, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mPosGroupDb:I

    invoke-direct {p0, p1, v5}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->parseGroupDb([BI)I

    move-result v0

    if-gez v0, :cond_a

    const-string v5, "EngineeringModeManager"

    const-string v6, "Error parseGroupDB"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager$EmPacketManager;->mToken:Lcom/samsung/android/service/EngineeringMode/token/EngineeringModeToken;

    return-object v1
.end method
