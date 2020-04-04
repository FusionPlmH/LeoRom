.class public Lcom/android/internal/telephony/cdma/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;,
        Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;
    }
.end annotation


# static fields
.field private static final BEARER_DATA:B = 0x8t

.field private static final BEARER_REPLY_OPTION:B = 0x6t

.field private static final CAUSE_CODES:B = 0x7t

.field private static final CSCFEATURE_RIL_SPECIAL_ADDRESS_HANDLINGFOR:Z

.field private static final DESTINATION_ADDRESS:B = 0x4t

.field private static final DESTINATION_SUB_ADDRESS:B = 0x5t

.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final ORIGINATING_ADDRESS:B = 0x2t

.field private static final ORIGINATING_SUB_ADDRESS:B = 0x3t

.field private static final PRIORITY_EMERGENCY:I = 0x3

.field private static final PRIORITY_INTERACTIVE:I = 0x1

.field private static final PRIORITY_NORMAL:I = 0x0

.field private static final PRIORITY_URGENT:I = 0x2

.field private static final RETURN_ACK:I = 0x1

.field private static final RETURN_NO_ACK:I = 0x0

.field private static final SERVICE_CATEGORY:B = 0x1t

.field private static final TELESERVICE_IDENTIFIER:B = 0x0t

.field private static final VDBG:Z = false


# instance fields
.field private mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

.field private mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field private mIsCtcFota:Z

.field public mMsgEncoding:I

.field private mUserDataCtcFota:[B

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "CTC"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SpecialAddressHandlingFor"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/cdma/SmsMessage;->CSCFEATURE_RIL_SPECIAL_ADDRESS_HANDLINGFOR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mIsCtcFota:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMsgEncoding:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/SmsAddress;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mIsCtcFota:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMsgEncoding:I

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    return-void
.end method

.method private static buildRuimDeliveryPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;
    .locals 11

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SmsCdmaNanpUsa"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    nop

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    :goto_0
    nop

    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput v1, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    iput p3, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    iput-object p2, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgDeliveryTime:Ljava/lang/String;

    iput-object p1, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v5

    if-nez v5, :cond_2

    return-object v2

    :cond_2
    iget-boolean v6, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v6, :cond_3

    const/16 v6, 0x1005

    goto :goto_1

    :cond_3
    const/16 v6, 0x1002

    :goto_1
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    iput v4, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    iput v6, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput v1, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    iput-object v5, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x64

    invoke-direct {v1, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v9, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v10, v10

    invoke-virtual {v8, v9, v4, v10}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write(I)V

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    array-length v9, v5

    invoke-virtual {v8, v5, v4, v9}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;-><init>()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;->encodedMessage:[B

    iput-object v2, v4, Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v1

    const-string v4, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "creating SubmitPdu failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private static buildRuimSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 11

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SmsCdmaNanpUsa"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    nop

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    const/4 v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    iput p2, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    iput-object p1, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v5

    if-nez v5, :cond_2

    return-object v2

    :cond_2
    iget-boolean v6, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v6, :cond_3

    const/16 v6, 0x1005

    goto :goto_1

    :cond_3
    const/16 v6, 0x1002

    :goto_1
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    iput v4, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    iput v6, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput v1, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    iput-object v5, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x64

    invoke-direct {v1, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v9, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v10, v10

    invoke-virtual {v8, v9, v4, v10}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write(I)V

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    array-length v9, v5

    invoke-virtual {v8, v5, v4, v9}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    iput-object v2, v4, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v1

    const-string v4, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "creating SubmitPdu failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p0

    :cond_1
    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    return-object v2
.end method

.method public static calculateLengthForEms(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;ZZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetailsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static convertDtmfToAscii(B)B
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/16 v0, 0x20

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x43

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x42

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x41

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x23

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x2a

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x30

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x39

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x38

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x37

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x36

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x35

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x34

    goto :goto_0

    :pswitch_c
    const/16 v0, 0x33

    goto :goto_0

    :pswitch_d
    const/16 v0, 0x32

    goto :goto_0

    :pswitch_e
    const/16 v0, 0x31

    goto :goto_0

    :pswitch_f
    const/16 v0, 0x30

    :goto_0
    nop

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    iput p0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mIndexOnIcc:I

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_0

    const-string v2, "SmsMessage"

    const-string v3, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0x7

    iput v3, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mStatusOnIcc:I

    iget v3, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mStatusOnIcc:I

    if-eq v3, v4, :cond_2

    iget v3, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mStatusOnIcc:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_1

    goto :goto_0

    :cond_1
    iput v4, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMti:I

    goto :goto_1

    :cond_2
    :goto_0
    iput v2, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMti:I

    :goto_1
    aget-byte v3, p1, v4

    and-int/lit16 v3, v3, 0xff

    const-string v4, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "msg["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]statusOnIcc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mStatusOnIcc:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v3, [B

    const/4 v5, 0x2

    invoke-static {p1, v5, v4, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePduFromEfRecord([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 5

    new-instance v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    const-string v3, "SmsMessage"

    const-string v4, "SMS PDU parsing failed with out of memory: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :catch_1
    move-exception v2

    const-string v3, "SmsMessage"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static getDomainChangeNotification(BLjava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 26

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SmsCdmaNanpUsa"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    nop

    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    move-object/from16 v2, p1

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    invoke-static {v2, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    :goto_0
    move-object v3, v0

    const/4 v4, 0x0

    if-nez v3, :cond_1

    return-object v4

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    move-object v5, v0

    const/4 v0, 0x2

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v6

    iput v6, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput-boolean v1, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    iput-boolean v6, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    iput-boolean v1, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    new-instance v7, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput v6, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    iput-boolean v1, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    const/16 v8, 0x8

    new-array v9, v8, [B

    iput-object v9, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v9, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    aput-byte v6, v9, v6

    iget-object v9, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget v10, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    rem-int/lit16 v10, v10, 0x100

    int-to-byte v10, v10

    aput-byte v10, v9, v1

    iget-object v9, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    aput-byte v8, v9, v0

    iget-object v9, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v10, 0x3

    aput-byte p0, v9, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v14

    int-to-long v1, v14

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/4 v6, 0x5

    invoke-virtual {v11, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v0, 0xa

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v0, 0xc

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v0, 0xd

    move-wide/from16 v17, v9

    invoke-virtual {v11, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const-wide/16 v19, 0x76c

    sub-long v19, v1, v19

    const-wide/32 v21, 0x1e1853e

    mul-long v19, v19, v21

    move-wide/from16 v23, v1

    int-to-long v0, v14

    const-wide/32 v21, 0x28206f

    mul-long v0, v0, v21

    add-long v19, v19, v0

    int-to-long v0, v4

    const-wide/32 v21, 0x15180

    mul-long v0, v0, v21

    add-long v19, v19, v0

    int-to-long v0, v6

    const-wide/16 v21, 0xe10

    mul-long v0, v0, v21

    add-long v19, v19, v0

    int-to-long v0, v8

    const-wide/16 v21, 0x3c

    mul-long v0, v0, v21

    add-long v19, v19, v0

    int-to-long v0, v9

    add-long v19, v19, v0

    iget-object v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const-wide/16 v12, 0xff

    and-long v1, v19, v12

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    iget-object v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/16 v2, 0x8

    shr-long v21, v19, v2

    and-long v1, v21, v12

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    iget-object v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/16 v1, 0x10

    shr-long v1, v19, v1

    and-long/2addr v1, v12

    long-to-int v1, v1

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    iget-object v0, v7, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v15, v19, v2

    and-long/2addr v12, v15

    long-to-int v2, v12

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iput-object v7, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v5}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v1

    const-string v0, "CDMA:SMS"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MO (encoded) BearerData = "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    const-string v0, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MO raw BearerData = \'"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\'"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez v1, :cond_3

    const/4 v2, 0x0

    return-object v2

    :cond_3
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    move-object v2, v0

    const/4 v0, 0x0

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    const/16 v0, 0x1092

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    const/4 v0, 0x1

    iput v0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    iput-object v1, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v10, 0x64

    invoke-direct {v0, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v10, Ljava/io/DataOutputStream;

    invoke-direct {v10, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v12, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v10, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v10, v12}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v12, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v10, v12}, Ljava/io/DataOutputStream;->write(I)V

    iget v12, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v10, v12}, Ljava/io/DataOutputStream;->write(I)V

    iget v12, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v10, v12}, Ljava/io/DataOutputStream;->write(I)V

    iget v12, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v10, v12}, Ljava/io/DataOutputStream;->write(I)V

    iget v12, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v10, v12}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v12, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v13, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v13, v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v25, v2

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v10, v12, v2, v13}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->write(I)V

    array-length v2, v1

    invoke-virtual {v10, v2}, Ljava/io/DataOutputStream;->write(I)V

    array-length v2, v1

    const/4 v12, 0x0

    invoke-virtual {v10, v1, v12, v2}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v10}, Ljava/io/DataOutputStream;->close()V

    new-instance v2, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v2, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v12, 0x0

    iput-object v12, v2, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v25, v2

    :goto_1
    const-string v2, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "creating SubmitPdu failed: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method public static declared-synchronized getNextMessageId()I
    .locals 7

    const-class v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "persist.radio.cdma.msgid"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const v3, 0xffff

    rem-int v3, v1, v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v3, "persist.radio.cdma.msgid"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CDMA:SMS"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "next persist.radio.cdma.msgid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readback gets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "persist.radio.cdma.msgid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set nextMessage ID failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getRuimDeliveryPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;
    .locals 2

    const-string v0, "SmsMessage"

    const-string v1, "getRuimDeliveryPdu"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {p1, v0, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->buildRuimDeliveryPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$DeliverPdu;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRuimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2

    const-string v0, "SmsMessage"

    const-string v1, "getRuimSubmitPdu"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    invoke-static {p1, v0, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->buildRuimSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1

    invoke-static {p0, p2, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZI)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1

    invoke-static {p0, p2, p1, p3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1

    invoke-static {p0, p2, p1, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 5

    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    const-string v4, "CHN"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    iput-boolean v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p3}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object v2, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v1, 0x1

    iput-boolean v1, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    iput-object p3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    :goto_0
    invoke-static {p1, p4, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {p1, p3, v0, p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {p1, p3, v0, p5, p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->isAutoLogin:Z

    invoke-static {p1, p3, v0, p5}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2

    const-string v0, "SmsMessage"

    const-string v1, "getTPLayerLengthForPDU: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 10

    new-instance v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    new-instance v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    new-instance v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    :cond_0
    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-nez v4, :cond_1

    const/4 v4, 0x2

    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    :cond_1
    iput v5, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/16 v6, 0xff

    and-int v7, v6, v4

    int-to-byte v7, v7

    iput v7, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    and-int/2addr v7, v6

    int-to-byte v7, v7

    iput v7, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    iput v7, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    and-int/2addr v6, v7

    int-to-byte v6, v6

    iput v6, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    new-array v7, v6, [B

    move v8, v5

    :goto_1
    if-ge v8, v6, :cond_3

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v7, v8

    if-nez v4, :cond_2

    aget-byte v9, v7, v8

    invoke-static {v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v9

    aput-byte v9, v7, v8

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    iput-object v7, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v8

    iput-byte v8, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v6

    if-gez v6, :cond_4

    const/4 v6, 0x0

    :cond_4
    new-array v7, v6, [B

    move v8, v5

    :goto_2
    if-ge v8, v6, :cond_5

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    iput-object v7, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-gez v8, :cond_6

    const/4 v8, 0x0

    :cond_6
    new-array v7, v8, [B

    nop

    :goto_3
    if-ge v5, v8, :cond_7

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    iput-object v7, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v3, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v1, v0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    return-object v0
.end method

.method private parsePdu([B)V
    .locals 10

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    new-instance v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    new-instance v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    :try_start_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    array-length v6, p1

    if-gt v5, v6, :cond_1

    new-array v6, v5, [B

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v6, v3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7, v5}, Ljava/io/DataInputStream;->read([BII)I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput-byte v6, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput-byte v6, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    iput-byte v6, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    array-length v8, p1

    if-gt v6, v8, :cond_0

    new-array v8, v6, [B

    iput-object v8, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v8, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-virtual {v1, v8, v7, v6}, Ljava/io/DataInputStream;->read([BII)I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: Invalid pdu, bearerDataLength "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " > pdu len "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createFromPdu: Invalid pdu, addr.numberOfDigits "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " > pdu len "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    const-string v6, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v3, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v4, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SmsCml"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v5, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    :cond_2
    return-void

    :catch_1
    move-exception v5

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private parsePduFromEfRecord([B)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v3, v0

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v0

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    move-object v5, v0

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    move-object v6, v0

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;-><init>()V

    move-object v7, v0

    const/4 v0, 0x0

    move v8, v0

    :try_start_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->available()I

    move-result v9

    if-lez v9, :cond_b

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readByte()B

    move-result v9

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v10

    new-array v11, v10, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v14, 0x2

    const/4 v15, 0x6

    const/16 v12, 0x8

    const/4 v13, 0x1

    packed-switch v9, :pswitch_data_0

    move/from16 v19, v8

    :try_start_2
    new-instance v0, Ljava/lang/Exception;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_a

    :pswitch_0
    :try_start_3
    invoke-virtual {v4, v11, v0, v10}, Ljava/io/DataInputStream;->read([BII)I

    iput-object v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    nop

    :cond_0
    :goto_1
    move/from16 v19, v8

    goto/16 :goto_8

    :pswitch_1
    invoke-virtual {v4, v11, v0, v10}, Ljava/io/DataInputStream;->read([BII)I

    new-instance v13, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v13, v11}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    invoke-virtual {v13, v15}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v15

    aget-byte v15, v15, v0

    iput-byte v15, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v13, v14}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v14

    aget-byte v14, v14, v0

    iput-byte v14, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    iget-byte v14, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    if-eqz v14, :cond_0

    invoke-virtual {v13, v12}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v12

    aget-byte v12, v12, v0

    iput-byte v12, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    goto :goto_1

    :pswitch_2
    invoke-virtual {v4, v11, v0, v10}, Ljava/io/DataInputStream;->read([BII)I

    new-instance v12, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v12, v11}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    invoke-virtual {v12, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    iput v13, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :pswitch_3
    :try_start_4
    invoke-virtual {v4, v11, v0, v10}, Ljava/io/DataInputStream;->read([BII)I

    new-instance v14, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v14, v11}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v15

    iput v15, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->type:I

    invoke-virtual {v14, v13}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v13

    aget-byte v13, v13, v0

    iput-byte v13, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->odd:B

    invoke-virtual {v14, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v12

    new-array v13, v12, [B

    move v15, v0

    :goto_2
    if-ge v15, v12, :cond_1

    const/4 v0, 0x4

    invoke-virtual {v14, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v18
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move/from16 v19, v8

    const/16 v0, 0xff

    and-int v8, v0, v18

    int-to-byte v0, v8

    :try_start_5
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v13, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v8, v19

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    move/from16 v19, v8

    iput-object v13, v7, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    goto/16 :goto_8

    :pswitch_4
    move/from16 v19, v8

    const/4 v0, 0x4

    if-eq v9, v0, :cond_3

    iget v0, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mMti:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-ne v0, v13, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    move v0, v13

    :goto_4
    move v8, v0

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {v4, v11, v0, v10}, Ljava/io/DataInputStream;->read([BII)I

    new-instance v15, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v15, v11}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    invoke-virtual {v15, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v15, v13}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    const/4 v0, 0x0

    iget v14, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-ne v14, v13, :cond_4

    const/4 v14, 0x3

    :try_start_7
    invoke-virtual {v15, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v14

    move v0, v14

    iput v0, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    iget v14, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v14, :cond_4

    const/4 v14, 0x4

    invoke-virtual {v15, v14}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    iput v13, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_4
    :try_start_8
    invoke-virtual {v15, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v13

    iput v13, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    iget v13, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    new-array v13, v13, [B

    const/4 v14, 0x0

    iget v12, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    if-nez v12, :cond_5

    const/4 v12, 0x0

    :goto_5
    move/from16 v20, v8

    :try_start_9
    iget v8, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v12, v8, :cond_a

    const/4 v8, 0x4

    invoke-virtual {v15, v8}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v16

    const/16 v17, 0xf

    and-int v8, v17, v16

    int-to-byte v14, v8

    invoke-static {v14}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v8

    aput-byte v8, v13, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v8, v20

    goto :goto_5

    :cond_5
    move/from16 v20, v8

    iget v8, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v12, 0x1

    if-ne v8, v12, :cond_9

    iget v8, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    if-nez v8, :cond_6

    const/4 v8, 0x0

    :goto_6
    iget v12, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v8, v12, :cond_a

    const/16 v12, 0x8

    invoke-virtual {v15, v12}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v17

    const/16 v16, 0xff

    and-int v12, v16, v17

    int-to-byte v14, v12

    aput-byte v14, v13, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_6
    iget v8, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    const/4 v12, 0x1

    if-ne v8, v12, :cond_8

    const/4 v8, 0x2

    if-ne v0, v8, :cond_7

    const-string v8, "SmsMessage"

    const-string v12, "TODO: Originating Addr is email id"

    invoke-static {v8, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_7
    const-string v8, "SmsMessage"

    const-string v12, "TODO: Originating Addr is data network address"

    invoke-static {v8, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_8
    const-string v8, "SmsMessage"

    const-string v12, "Originating Addr is of incorrect type"

    invoke-static {v8, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_9
    const-string v8, "SmsMessage"

    const-string v12, "Incorrect Digit mode"

    invoke-static {v8, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_7
    iput-object v13, v6, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const-string v8, "SmsMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v0

    const-string v0, "Originating Addr="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    nop

    move/from16 v8, v20

    goto :goto_9

    :catch_0
    move-exception v0

    move/from16 v8, v20

    goto :goto_b

    :catch_1
    move-exception v0

    move/from16 v20, v8

    goto :goto_b

    :pswitch_5
    move/from16 v19, v8

    :try_start_a
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    goto :goto_8

    :pswitch_6
    move/from16 v19, v8

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const-string v0, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "teleservice = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_8
    move/from16 v8, v19

    :goto_9
    const/4 v0, 0x0

    goto/16 :goto_0

    :goto_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "unsupported parameterId ("

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move/from16 v19, v8

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    move/from16 v8, v19

    goto :goto_b

    :catch_3
    move-exception v0

    move/from16 v19, v8

    goto :goto_b

    :catch_4
    move-exception v0

    :goto_b
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "parsePduFromEfRecord: conversion from pdu to SmsMessage failed"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v8

    :goto_c
    if-eqz v19, :cond_c

    iput-object v6, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v6, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    goto :goto_d

    :cond_c
    iput-object v6, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v6, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    :goto_d
    iput-object v7, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iput-object v5, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 11

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    nop

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    const/4 v3, 0x2

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput-boolean p1, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    iput-boolean v4, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    const/4 v5, 0x1

    if-ltz p3, :cond_2

    const/4 v6, 0x3

    if-gt p3, v6, :cond_2

    iput-boolean v5, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    iput p3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    :cond_2
    iput-object p2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v6

    const-string v7, "CDMA:SMS"

    invoke-static {v7, v3}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MO (encoded) BearerData = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MO raw BearerData = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v6, :cond_4

    return-object v0

    :cond_4
    iget-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v3, :cond_5

    const/16 v3, 0x1005

    goto :goto_0

    :cond_5
    const/16 v3, 0x1002

    :goto_0
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    iput v4, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    iput v3, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    iput-object v1, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput v5, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    iput-object v6, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    :try_start_0
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x64

    invoke-direct {v5, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v9, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v9, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v9, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v10, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v10, v10

    invoke-virtual {v8, v9, v4, v10}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v8, v4}, Ljava/io/DataOutputStream;->write(I)V

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    array-length v9, v6

    invoke-virtual {v8, v6, v4, v9}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    iput-object v0, v4, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v4

    const-string v5, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "creating SubmitPdu failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_6
    :goto_1
    const-string v1, "SmsMessage"

    const-string/jumbo v2, "privateGetSubmitPdu - destAddrStr is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 11

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SmsCdmaNanpUsa"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    nop

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    goto :goto_0

    :cond_0
    nop

    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return-object v2

    :cond_1
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    const/4 v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v5

    iput v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput-boolean p1, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    iput-boolean v5, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    const-string v6, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "callback number is set: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v6

    if-eqz v6, :cond_2

    iput-object v6, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    :cond_2
    if-ne p4, v4, :cond_3

    const-string v6, "SmsMessage"

    const-string/jumbo v7, "priority is set to high"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    iput p4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_Sms3gpp2LgtNetwork"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iput-boolean v1, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->languageIndicatorSet:Z

    const/16 v6, 0x40

    sput v6, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    :cond_4
    iput-object p2, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v6

    const-string v7, "CDMA:SMS"

    invoke-static {v7, v4}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MO (encoded) BearerData = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_5

    const-string v4, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MO raw BearerData = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v6, :cond_6

    return-object v2

    :cond_6
    iget-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v4, :cond_7

    const/16 v4, 0x1005

    goto :goto_1

    :cond_7
    const/16 v4, 0x1002

    :goto_1
    new-instance v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    iput v5, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    iput v4, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    iput-object v0, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput v1, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    iput-object v6, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x64

    invoke-direct {v1, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v8, Ljava/io/DataOutputStream;

    invoke-direct {v8, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v9, v7, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v10, v10

    invoke-virtual {v8, v9, v5, v10}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v8, v5}, Ljava/io/DataOutputStream;->write(I)V

    array-length v9, v6

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    array-length v9, v6

    invoke-virtual {v8, v6, v5, v9}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->close()V

    new-instance v5, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v5, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    iput-object v2, v5, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception v1

    const-string v5, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "creating SubmitPdu failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method


# virtual methods
.method public createPdu()V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v4, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v5, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v5, v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/DataOutputStream;->write([BII)V

    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-byte v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v5, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mPdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPdu: conversion from object to byte array failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getBearerData()[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    return-object v0
.end method

.method public getCDMAMessageType()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getIncomingSmsFingerprint()[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_Sms3gpp2LgtNetwork"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/16 v2, 0x1002

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origSubaddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsSubaddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public getMessageEncoding()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMsgEncoding:I

    return v0
.end method

.method public getMessageIdentifier()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMessagePriority()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getMessageType()I
    .locals 3

    const-string v0, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMessageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMti:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMti:I

    return v0
.end method

.method public getNumOfVoicemails()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 2

    const-string v0, "SmsMessage"

    const-string v1, "getProtocolIdentifier: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getSemSmsCbProgramData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/telephony/cdma/SemCdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->semServiceCategoryProgramData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getServiceCategory()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    return v0
.end method

.method public getSmsCbProgramData()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->serviceCategoryProgramData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public getTeleService()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 2

    const-string v0, "SmsMessage"

    const-string v1, "isCphsMwiMessage: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isCtcFota()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mIsCtcFota:Z

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMWISetMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMwiDontStore()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReplace()Z
    .locals 2

    const-string v0, "SmsMessage"

    const-string/jumbo v1, "isReplace: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 2

    const-string v0, "SmsMessage"

    const-string/jumbo v1, "isReplyPathPresent: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public parseBroadcastSms()Landroid/telephony/SmsCbMessage;
    .locals 14

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([BI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "SmsMessage"

    const-string v2, "BearerData.decode() returned null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const-string v1, "CDMA:SMS"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MT raw BearerData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Landroid/telephony/SmsCbLocation;

    invoke-direct {v6, v1}, Landroid/telephony/SmsCbLocation;-><init>(Ljava/lang/String;)V

    new-instance v13, Landroid/telephony/SmsCbMessage;

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v7, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->getLanguage()Ljava/lang/String;

    move-result-object v8

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v9, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget v10, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->cmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Landroid/telephony/SmsCbMessage;-><init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V

    return-object v13
.end method

.method public parseCtcFota()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mIsCtcFota:Z

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataCtcFota:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataCtcFota:[B

    aget-byte v2, v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataCtcFota:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v2, v2, v4

    const/4 v4, 0x6

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataCtcFota:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    new-array v4, v2, [B

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataCtcFota:[B

    invoke-static {v5, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mIsCtcFota:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public parseSms()V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/4 v1, 0x0

    const/high16 v2, 0x40000

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const/16 v2, 0xff

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    aget-byte v1, v3, v1

    and-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSpecificTid(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    sget-boolean v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->mIsfourBytesUnicode:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mIsfourBytesUnicode:Z

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mlastByte:[B

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    sget v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->mBodyOffset:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBodyOffset:I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mlastByte:[B

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    sget-object v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->mlastByte:[B

    aget-byte v4, v4, v1

    aput-byte v4, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mlastByte:[B

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    sget-object v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->mlastByte:[B

    aget-byte v4, v4, v3

    aput-byte v4, v0, v3

    :cond_2
    const-string v0, "CDMA:SMS"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MT raw BearerData = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v5}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MT (decoded) BearerData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageRef:I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMsgEncoding:I

    :cond_4
    const-string v0, "CTC"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_WapPushFormat4"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/16 v4, 0x1002

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataCtcFota:[B

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserDataCtcFota:[B

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    array-length v5, v5

    invoke-static {v0, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_6

    const-string v0, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseSms() callback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_6

    iget-object v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->callbackNumber:Ljava/lang/String;

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/android/internal/telephony/cdma/SmsMessage;->CSCFEATURE_RIL_SPECIAL_ADDRESS_HANDLINGFOR:Z

    const/16 v4, 0x2b

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget v0, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-nez v0, :cond_8

    new-instance v0, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v4, v4, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "00852"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receive sms from HK number Before Address= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v5, "+"

    iput-object v5, v4, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v6, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v4, "SmsMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "After Address Replacement = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v6, v6, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v0, v4, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    :goto_0
    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget v0, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v6, v6, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, v5, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v6, v6, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    iput-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget v0, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-ne v0, v3, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v4, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, v5, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    iput-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    :cond_c
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v4, "CscFeature_RIL_SmsSupportReplyAddress"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_d

    const-string v0, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS callback number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v0, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS CALL BACK NUMBER: getDisplayOriginatingAddress(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v0, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SMS CALL BACK NUMBER: null  getDisplayOriginatingAddress(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mScTimeMillis:J

    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mTeleserviceId:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v4, "CscFeature_RIL_SmsTidMessage"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSpecificTid(I)V

    :cond_10
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_13

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v0, :cond_12

    const-string v0, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    if-nez v3, :cond_11

    const-string v3, "also missing"

    goto :goto_3

    :cond_11
    const-string v3, "does have"

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " userData)."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_4

    :cond_12
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_4

    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v0, v3, :cond_15

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-ne v0, v2, :cond_14

    goto :goto_4

    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mMessageBody:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseMessageBody()V

    goto :goto_5

    :cond_16
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mUserData:[B

    :goto_5
    return-void
.end method
