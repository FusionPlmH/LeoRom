.class public final Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceRootKeyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceInfo"
.end annotation


# static fields
.field public static final DEVICE_INFO_ALL:I = 0x2f

.field private static final DEVICE_INFO_EMPTY:I = 0x0

.field public static final DEVICE_INFO_HUID:I = 0x20

.field public static final DEVICE_INFO_IMEI:I = 0x4

.field public static final DEVICE_INFO_IMEI_MODEM:I = 0x6

.field public static final DEVICE_INFO_IMEI_MODEM_SERIAL:I = 0xe

.field public static final DEVICE_INFO_IMEI_SERIAL:I = 0xc

.field public static final DEVICE_INFO_INTEGRITY_STATUS:I = 0x1

.field public static final DEVICE_INFO_MODEL_NAME:I = 0x10

.field public static final DEVICE_INFO_MODEM:I = 0x2

.field public static final DEVICE_INFO_MODEM_SERIAL:I = 0xa

.field public static final DEVICE_INFO_SERIAL:I = 0x8

.field public static final DEVICE_INFO_SPU:I = 0x40

.field private static final DEVICE_STATUS_IS_VALID:B = 0x1t

.field private static final MAX_HUID_LENGTH:I = 0x80

.field private static final MAX_SHA256_LENGTH:I = 0x20

.field private static final MAX_STATUS_LENGTH:I = 0x1


# instance fields
.field private mHuid:Ljava/lang/String;

.field private mImeiHash:[B

.field private mIsHuidMatched:Z

.field private mModemHash:[B

.field private mSerialHash:[B

.field final synthetic this$0:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;I)V
    .locals 6

    iput-object p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->this$0:Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mImeiHash:[B

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mModemHash:[B

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mSerialHash:[B

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mHuid:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mIsHuidMatched:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    and-int/lit8 v3, p2, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/16 v2, 0x66

    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->access$000(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mModemHash:[B

    :cond_0
    and-int/lit8 v3, p2, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    const/16 v2, 0x68

    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->access$000(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v3, v1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mImeiHash:[B

    :cond_1
    and-int/lit8 v3, p2, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    const/16 v2, 0x6c

    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->access$000(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v3, v1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iput-object v3, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mSerialHash:[B

    :cond_2
    and-int/lit8 v3, p2, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_3

    const/16 v2, 0x84

    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->access$000(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v3, v1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mHuid:Ljava/lang/String;

    :cond_3
    and-int/lit8 v3, p2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    const/16 v2, 0x65

    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->access$000(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object v3

    const/16 v5, 0x64

    add-int/2addr v5, v2

    invoke-virtual {v3, v5}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object v1

    aget-byte v0, v1, v0

    if-ne v0, v4, :cond_4

    iput-boolean v4, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mIsHuidMatched:Z

    :cond_4
    return-void
.end method

.method private isValidLength(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    if-ltz p2, :cond_0

    const/16 v2, 0x80

    if-le p2, v2, :cond_1

    :cond_0
    return v1

    :pswitch_1
    if-eq p2, v0, :cond_1

    return v1

    :pswitch_2
    const/16 v2, 0x20

    if-eq p2, v2, :cond_1

    return v1

    :cond_1
    return v0

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getHuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mHuid:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mImeiHash:[B

    return-object v0
.end method

.method public getModem()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mModemHash:[B

    return-object v0
.end method

.method public getSerial()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mSerialHash:[B

    return-object v0
.end method

.method public isHuidMatched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mIsHuidMatched:Z

    return v0
.end method
