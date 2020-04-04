.class public final Landroid/provider/Telephony$Sms$Intents;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony$Sms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Intents"
.end annotation


# static fields
.field public static final ACTION_CHANGE_DEFAULT:Ljava/lang/String; = "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

.field public static final ACTION_DEFAULT_SMS_PACKAGE_CHANGED:Ljava/lang/String; = "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

.field public static final ACTION_EXTERNAL_PROVIDER_CHANGE:Ljava/lang/String; = "android.provider.action.EXTERNAL_PROVIDER_CHANGE"

.field public static final ACTION_KTLBS_DATA_SMS_RECEIVED:Ljava/lang/String; = "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

.field public static final ACTION_KT_TWO_PHONE_MANAGE_SMS_RECEIVED:Ljava/lang/String; = "com.kt.menu.action.TWO_CALL_REG_CHANGED"

.field public static final CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.CB_RECEIVED"

.field public static final CB_SETTINGS_AVAILABLE_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.CB_SETTINGS_AVAILABLE"

.field public static final DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field public static final DEVICE_READY_ACTION:Ljava/lang/String; = "android.provider.Telephony.DEVICE_READY"

.field public static final DIRECTED_SMS_RECEIVED_ACTION:Ljava/lang/String; = "verizon.intent.action.DIRECTED_SMS_RECEIVED"

.field public static final EMERGENCY_CDMA_MESSAGE_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.EMERGENCY_CDMA_MESSAGE_RECEIVED"

.field public static final EXTRA_IS_DEFAULT_SMS_APP:Ljava/lang/String; = "android.provider.extra.IS_DEFAULT_SMS_APP"

.field public static final EXTRA_LMS_TOKEN_CTC:Ljava/lang/String; = "lms_token_ctc"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final GET_CB_ERR_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.GET_CB_ERR_RECEIVED"

.field public static final GET_SMSC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.GET_SMSC"

.field public static final IMEI_TRACKER_SMS_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.IMEI_TRACKER_SMS_RECEIVED"

.field public static final LGU_APM_RECEIVED_ACTION:Ljava/lang/String; = "android.lgt.action.APM_SMS_RECEIVED"

.field public static final LGU_FOTA_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.intent.action.PUSH_CONFIRM"

.field public static final LMS_FIRST_DISPLAY_TIMEOUT_CTC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.LMS_FIRST_DISPLAY_TIMEOUT_CTC"

.field public static final LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC"

.field public static final MMS_DOWNLOADED_ACTION:Ljava/lang/String; = "android.provider.Telephony.MMS_DOWNLOADED"

.field public static final NSRISMS_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.SECURITY_SMS_RECEIVED"

.field public static final RESULT_SMS_DSAC_FAIL:I = 0x7

.field public static final RESULT_SMS_DUPLICATE:I = 0x8

.field public static final RESULT_SMS_DUPLICATED:I = 0x5

.field public static final RESULT_SMS_GENERIC_ERROR:I = 0x2

.field public static final RESULT_SMS_HANDLED:I = 0x1

.field public static final RESULT_SMS_MDM_DISCARDED:I = 0xa

.field public static final RESULT_SMS_OUT_OF_MEMORY:I = 0x3

.field public static final RESULT_SMS_SEGMENT:I = 0x9

.field public static final RESULT_SMS_UNSUPPORTED:I = 0x4

.field public static final SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field public static final SET_CB_ERR_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SET_CB_ERR_RECEIVED"

.field public static final SHOW_DATA_SMS_RECEIVED_ACTION:Ljava/lang/String; = "com.kt.show.manger.action.SHOW_DATA_SMS_RECEIVED"

.field public static final SIM_FULL_ACTION:Ljava/lang/String; = "android.provider.Telephony.SIM_FULL"

.field public static final SMS_CARRIER_PROVISION_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CARRIER_PROVISION"

.field public static final SMS_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_RECEIVED"

.field public static final SMS_CB_RECEIVED_WIFI_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_CB_WIFI_RECEIVED"

.field public static final SMS_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_DELIVER"

.field public static final SMS_EMERGENCY_CB_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_EMERGENCY_CB_RECEIVED"

.field public static final SMS_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"

.field public static final SMS_REJECTED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_REJECTED"

.field public static final SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_SERVICE_CATEGORY_PROGRAM_DATA_RECEIVED"

.field public static final WAP_PUSH_DELIVER_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_DELIVER"

.field public static final WAP_PUSH_DM_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

.field public static final WAP_PUSH_DS_NOTI_RECEIVED_ACTION:Ljava/lang/String; = "com.samsung.provider.Telephony.WAP_PUSH_DS_NOTI_RECEIVED"

.field public static final WAP_PUSH_RECEIVED_ACTION:Ljava/lang/String; = "android.provider.Telephony.WAP_PUSH_RECEIVED"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combineFourBytes([B[BI)Ljava/lang/String;
    .locals 5

    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "combineFourBytes : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " offset : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x4

    new-array v1, v1, [B

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    aget-byte v2, p0, p2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x2

    aput-byte v2, v1, v3

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x3

    aput-byte v2, v1, v3

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-16"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v0, ""

    const-string v3, "Telephony"

    const-string/jumbo v4, "implausible UnsupportedEncodingException"

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public static getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 29

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "pdus"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_7

    move-object v3, v0

    nop

    nop

    if-nez v3, :cond_0

    const-string v0, "Telephony"

    const-string/jumbo v4, "pdus does not exist in the intent"

    invoke-static {v0, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    const-string v0, "format"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v5

    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v0, "Telephony"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getMessagesFromIntent sub_id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    array-length v6, v3

    const/4 v7, 0x2

    new-array v8, v7, [B

    const/4 v0, 0x0

    const/4 v9, 0x0

    new-array v10, v6, [Landroid/telephony/SmsMessage;

    move v12, v9

    move v9, v0

    const/4 v0, 0x0

    :goto_0
    move v13, v0

    if-ge v13, v6, :cond_13

    aget-object v0, v3, v13

    move-object v14, v0

    check-cast v14, [B

    if-eqz v14, :cond_11

    array-length v0, v14

    if-lez v0, :cond_11

    invoke-static {v14, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v0

    aput-object v0, v10, v13

    const/4 v15, 0x1

    if-eqz v9, :cond_1

    aget-object v0, v10, v13

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getUserData()[B

    move-result-object v0

    invoke-static {v0, v8, v12}, Landroid/provider/Telephony$Sms$Intents;->combineFourBytes([B[BI)Ljava/lang/String;

    move-result-object v0

    aget-object v7, v10, v13

    iget-object v7, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v7}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aget-object v2, v10, v13

    iget-object v2, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SmsMessageBase;->replaceMessageBody(Ljava/lang/String;)V

    const/4 v9, 0x0

    :cond_1
    aget-object v0, v10, v13

    if-eqz v0, :cond_2

    aget-object v0, v10, v13

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v0, :cond_2

    aget-object v0, v10, v13

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getIsFourBytesUnicode()Z

    move-result v0

    if-ne v0, v15, :cond_2

    const-string v0, "Telephony"

    const-string v2, "Detect multibyte unicode at the end of page"

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v0, v10, v13

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsMessageBase;->getLastByte()[B

    move-result-object v0

    const/4 v2, 0x0

    aget-byte v7, v0, v2

    aput-byte v7, v8, v2

    aget-byte v2, v0, v15

    aput-byte v2, v8, v15

    aget-object v2, v10, v13

    iget-object v2, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsMessageBase;->getBodyOffset()I

    move-result v12

    aget-object v2, v10, v13

    iget-object v2, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    const-string v7, "Telephony"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "messageBody Length : "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v7, v10, v13

    iget-object v7, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v15, 0x1

    sub-int/2addr v11, v15

    const/4 v15, 0x0

    invoke-virtual {v2, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/internal/telephony/SmsMessageBase;->replaceMessageBody(Ljava/lang/String;)V

    const/4 v9, 0x1

    :cond_2
    invoke-static {}, Landroid/telephony/SmsMessage;->getCDMASmsReassembly()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    if-le v6, v2, :cond_11

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    aget-object v11, v10, v13

    if-eqz v11, :cond_10

    aget-object v11, v10, v13

    iget-object v11, v11, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v11, :cond_10

    aget-object v11, v10, v13

    iget-object v11, v11, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v11}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v11

    const/4 v15, 0x0

    move-object/from16 v19, v15

    :try_start_1
    const-string v0, "("

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ")"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x28

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v15, 0x1

    add-int/2addr v0, v15

    const/16 v15, 0x29

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    invoke-virtual {v11, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v11, v0

    goto :goto_2

    :cond_3
    const-string v0, "["

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "]"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x5b

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v1, 0x5d

    invoke-virtual {v11, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    invoke-virtual {v11, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    invoke-virtual {v11, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "{"

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "}"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x7b

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v1, 0x7d

    invoke-virtual {v11, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    invoke-virtual {v11, v0, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    invoke-virtual {v11, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    const-string v0, "Telephony"

    const-string/jumbo v1, "there is no pagination pattern maybe / or of "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    nop

    move/from16 v20, v2

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "Telephony"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v2

    const-string v2, "getMessagesFromIntent : "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz v7, :cond_7

    move-object v1, v11

    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    const/4 v15, 0x2

    if-ne v0, v15, :cond_6

    const/4 v15, 0x0

    :try_start_2
    aget-object v0, v2, v15

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v15, 0x1

    aget-object v0, v2, v15

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v0, 0x1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v15, "Telephony"

    move-object/from16 v21, v0

    const-string/jumbo v0, "there is no pagination yet"

    invoke-static {v15, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move v0, v2

    goto :goto_4

    :cond_6
    move/from16 v0, v20

    :goto_4
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    const/4 v3, 0x0

    goto/16 :goto_c

    :cond_7
    const-string v0, " of "

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v0, v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_8

    const-string v0, " "

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    const/4 v15, 0x3

    if-lt v0, v15, :cond_8

    const/4 v15, 0x0

    :try_start_3
    aget-object v0, v2, v15
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v15, 0x2

    aget-object v0, v2, v15

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v15, 0x0

    aget-object v0, v2, v15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v22, v1

    const/4 v15, 0x2

    :try_start_5
    aget-object v1, v2, v15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {v11, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v19, v1

    const/4 v0, 0x1

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v23, v2

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    goto :goto_6

    :catch_5
    move-exception v0

    move-object/from16 v22, v1

    :goto_5
    const-string v1, "Telephony"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v2

    const-string v2, "extractPagination : "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_6
    move-exception v0

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    :goto_6
    const-string v1, "Telephony"

    const-string/jumbo v2, "there is no pagination yet"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_8
    move-object/from16 v22, v1

    :goto_7
    move-object/from16 v1, v19

    move/from16 v0, v20

    :goto_8
    if-nez v0, :cond_e

    const-string v2, "/"

    invoke-virtual {v11, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v15, v2

    move-object/from16 v24, v1

    const/4 v1, 0x2

    if-lt v15, v1, :cond_d

    const/4 v15, 0x1

    aget-object v1, v2, v15

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/16 v17, 0x0

    aget-object v15, v2, v17

    invoke-virtual {v15}, Ljava/lang/String;->toCharArray()[C

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v19, v17

    :goto_9
    move/from16 v25, v19

    move/from16 v26, v0

    aget-object v0, v2, v17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v18, 0x1

    add-int/lit8 v0, v0, -0x1

    move-object/from16 v27, v3

    move/from16 v3, v25

    if-ge v3, v0, :cond_9

    aget-char v0, v15, v3

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_9

    add-int/lit8 v19, v3, 0x1

    move/from16 v0, v26

    move-object/from16 v3, v27

    const/16 v17, 0x0

    goto :goto_9

    :cond_9
    const/16 v17, 0x0

    aget-object v0, v2, v17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v18, 0x1

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_a

    const/16 v16, 0x1

    :cond_a
    const/4 v0, 0x0

    if-eqz v16, :cond_c

    :goto_a
    move-object/from16 v28, v4

    const/4 v3, 0x1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v0, v4, :cond_b

    aget-char v3, v1, v0

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_b

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v4, v28

    goto :goto_a

    :cond_b
    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    const/16 v17, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v11, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    move-object v1, v4

    goto :goto_c

    :cond_c
    move-object/from16 v28, v4

    const/4 v3, 0x0

    goto :goto_b

    :cond_d
    move/from16 v26, v0

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    const/4 v3, 0x0

    goto :goto_b

    :cond_e
    move/from16 v26, v0

    move-object/from16 v24, v1

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    const/4 v3, 0x0

    :goto_b
    move-object/from16 v1, v24

    move/from16 v0, v26

    :goto_c
    if-nez v0, :cond_f

    const-string v2, "Telephony"

    const-string v4, "No pagination found"

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_f
    aget-object v2, v10, v13

    iget-object v2, v2, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SmsMessageBase;->replaceMessageBody(Ljava/lang/String;)V

    :goto_d
    goto :goto_e

    :cond_10
    move/from16 v20, v2

    move-object/from16 v27, v3

    move-object/from16 v28, v4

    const/4 v3, 0x0

    const-string v1, "Telephony"

    const-string/jumbo v2, "msgs[i] == null && msgs[i].mWrappedSmsMessage == null "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_11
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    const/4 v3, 0x0

    :goto_e
    aget-object v0, v10, v13

    if-eqz v0, :cond_12

    aget-object v0, v10, v13

    invoke-virtual {v0, v5}, Landroid/telephony/SmsMessage;->setSubId(I)V

    :cond_12
    add-int/lit8 v0, v13, 0x1

    move-object/from16 v3, v27

    move-object/from16 v4, v28

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v7, 0x2

    goto/16 :goto_0

    :cond_13
    move-object/from16 v27, v3

    move-object/from16 v28, v4

    return-object v10

    :catch_7
    move-exception v0

    const-string v1, "Telephony"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMessagesFromIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method
