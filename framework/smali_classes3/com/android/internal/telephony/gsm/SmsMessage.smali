.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    }
.end annotation


# static fields
.field private static final CSCFEATURE_RIL_SPECIAL_ADDRESS_HANDLINGFOR:Z

.field private static final INVALID_VALIDITY_PERIOD:I = -0x1

.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final VALIDITY_PERIOD_FORMAT_ABSOLUTE:I = 0x3

.field private static final VALIDITY_PERIOD_FORMAT_ENHANCED:I = 0x1

.field private static final VALIDITY_PERIOD_FORMAT_NONE:I = 0x0

.field private static final VALIDITY_PERIOD_FORMAT_RELATIVE:I = 0x2

.field private static final VALIDITY_PERIOD_MAX:I = 0x9b0a0

.field private static final VALIDITY_PERIOD_MIN:I = 0x5

.field private static final VDBG:Z = false

.field public static mDay:I

.field public static mHour:I

.field private static mIgnoreSpecialChar:Z

.field public static mMin:I

.field public static mMonth:I

.field public static mSec:I

.field public static mTimezone:I

.field private static mUnsupportedDatacodingScheme:Z

.field public static mYear:I


# instance fields
.field private mDataCodingScheme:I

.field private mIsStatusReportMessage:Z

.field private mProtocolIdentifier:I

.field private mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private mReplyPathPresent:Z

.field private mStatus:I

.field private mVoiceMailCount:I

.field private messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    const-string v1, "CTC"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SpecialAddressHandlingFor"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/telephony/gsm/SmsMessage;->CSCFEATURE_RIL_SPECIAL_ADDRESS_HANDLINGFOR:Z

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIgnoreSpecialChar:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return-void
.end method

.method public static ConvertDateStringToBCD(Ljava/lang/String;)[B
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "date : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v0, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0xc

    invoke-virtual {v0, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "1. year:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " month:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " day:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " hour:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " min:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " sec:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v12

    sput v12, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v12

    sput v12, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v12

    sput v12, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v12

    sput v12, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v12

    sput v12, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v12

    sput v12, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    sput v2, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    const/4 v12, 0x0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v13

    int-to-long v13, v13

    const-string v15, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "timezeone"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v18, 0x0

    cmp-long v1, v13, v18

    const-wide/32 v18, 0xdbba0

    const/16 v20, 0x1

    if-gez v1, :cond_2

    neg-long v13, v13

    move-object/from16 v21, v3

    div-long v2, v13, v18

    const-string v1, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timezeone->temp"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v1, v2

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v1

    div-int/lit8 v6, v1, 0xa

    shl-int/2addr v6, v4

    rem-int/lit8 v15, v1, 0xa

    add-int/2addr v15, v8

    add-int/2addr v6, v15

    sput v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    const-string v6, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mTimezone"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "2. year:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " month:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " day:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " hour:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " min:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " sec:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    const-string v8, "ar"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "SmsMessage"

    const-string v8, "This is timestamp in Arabic."

    invoke-static {v6, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%02d%02d%02d%02d%02d%02d%02x"

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    sget v4, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v18, 0x0

    aput-object v4, v15, v18

    sget v4, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v15, v20

    sget v4, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v17, 0x2

    aput-object v4, v15, v17

    sget v4, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v17, 0x3

    aput-object v4, v15, v17

    sget v4, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v17, 0x4

    aput-object v4, v15, v17

    sget v4, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v17, 0x5

    aput-object v4, v15, v17

    sget v4, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x6

    aput-object v4, v15, v16

    invoke-static {v6, v8, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    goto/16 :goto_1

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v6, "fa"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SmsMessage"

    const-string v6, "This is timestamp in Farsi."

    invoke-static {v4, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%02d%02d%02d%02d%02d%02d%02x"

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    sget v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v18, 0x0

    aput-object v15, v8, v18

    sget v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v8, v20

    sget v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x2

    aput-object v15, v8, v17

    sget v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x3

    aput-object v15, v8, v17

    sget v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x4

    aput-object v15, v8, v17

    sget v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v17, 0x5

    aput-object v15, v8, v17

    sget v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x6

    aput-object v15, v8, v16

    invoke-static {v4, v6, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v4, "%02d%02d%02d%02d%02d%02d%02x"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x0

    aput-object v8, v6, v15

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v20

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x2

    aput-object v8, v6, v15

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x3

    aput-object v8, v6, v15

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x4

    aput-object v8, v6, v15

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x5

    aput-object v8, v6, v15

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x6

    aput-object v8, v6, v15

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v1, v4

    goto/16 :goto_3

    :cond_2
    move-object/from16 v21, v3

    div-long v1, v13, v18

    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "timezeone->temp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v3, v1

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v3

    sput v3, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mTimezone"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2. year:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " month:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " day:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " hour:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " min:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " sec:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "SmsMessage"

    const-string v4, "This is timestamp in Arabic."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%02d%02d%02d%02d%02d%02d%02d"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x0

    aput-object v8, v6, v15

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v20

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x2

    aput-object v8, v6, v15

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x3

    aput-object v8, v6, v15

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x4

    aput-object v8, v6, v15

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x5

    aput-object v8, v6, v15

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x6

    aput-object v8, v6, v15

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_2
    move-object v1, v3

    goto/16 :goto_3

    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "fa"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "SmsMessage"

    const-string v4, "This is timestamp in Farsi."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%02d%02d%02d%02d%02d%02d%02d"

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x0

    aput-object v8, v6, v15

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v20

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x2

    aput-object v8, v6, v15

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x3

    aput-object v8, v6, v15

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x4

    aput-object v8, v6, v15

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x5

    aput-object v8, v6, v15

    sget v8, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v15, 0x6

    aput-object v8, v6, v15

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_4
    const-string v3, "%02d%02d%02d%02d%02d%02d%02d"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v4, v8

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v20

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v4, v8

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x3

    aput-object v6, v4, v8

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x4

    aput-object v6, v4, v8

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x5

    aput-object v6, v4, v8

    sget v6, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x6

    aput-object v6, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    const-string v2, "SmsMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timestamp string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    return-object v2
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    return v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4

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
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SmsMessage;->mIgnoreSpecialChar:Z

    invoke-static {v0, p1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/internal/telephony/gsm/SmsMessage;->mIgnoreSpecialChar:Z

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    return-object v3

    :cond_2
    return-object v2
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public static calculateLengthForCdma(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIgnoreSpecialChar:Z

    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 9

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    move-object v0, v1

    const/4 v1, 0x2

    mul-int/2addr p2, v1

    const/16 v2, 0x8c

    const/4 v3, 0x1

    if-lez p2, :cond_0

    sub-int/2addr v2, p2

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    nop

    :goto_0
    const/16 v4, 0x86

    if-lez p2, :cond_1

    sub-int/2addr v4, p2

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    mul-int/2addr v5, v1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    const/4 v6, -0x1

    const/16 v7, 0x3e8

    if-le v5, v2, :cond_4

    add-int/lit8 v8, v2, -0x2

    if-le p2, v8, :cond_2

    iput v7, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    :cond_2
    rem-int v6, v5, v4

    if-eqz v6, :cond_3

    div-int v6, v5, v4

    add-int/2addr v6, v3

    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    rem-int v3, v5, v4

    sub-int v3, v4, v3

    div-int/2addr v3, v1

    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    :cond_3
    div-int v1, v5, v4

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    :cond_4
    add-int/lit8 v8, v4, -0x2

    if-lt p2, v8, :cond_5

    iput v7, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    :cond_5
    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    sub-int v3, v2, v5

    div-int/2addr v3, v1

    iput v3, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_2
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    :cond_6
    return-object v0
.end method

.method public static calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 9

    new-instance v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-static {p0, v1, p3}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p3}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_8

    new-instance v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    move-object v0, v2

    const/4 v2, 0x2

    mul-int/2addr p3, v2

    const/16 v3, 0x8c

    if-lez p3, :cond_2

    sub-int/2addr v3, p3

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_2
    nop

    :goto_1
    const/16 v4, 0x86

    if-lez p3, :cond_3

    sub-int/2addr v4, p3

    sub-int/2addr v4, v1

    goto :goto_2

    :cond_3
    nop

    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    mul-int/2addr v5, v2

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    const/4 v6, -0x1

    const/16 v7, 0x3e8

    if-le v5, v3, :cond_6

    add-int/lit8 v8, v3, -0x2

    if-le p3, v8, :cond_4

    iput v7, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    :cond_4
    rem-int v6, v5, v4

    if-eqz v6, :cond_5

    div-int v6, v5, v4

    add-int/2addr v6, v1

    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    rem-int v1, v5, v4

    sub-int v1, v4, v1

    div-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    :cond_5
    div-int v1, v5, v4

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    :cond_6
    add-int/lit8 v8, v4, -0x2

    if-lt p3, v8, :cond_7

    iput v7, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    iput v6, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    :cond_7
    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    sub-int v1, v3, v5

    div-int/2addr v1, v2

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    :goto_3
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    :cond_8
    return-object v0
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    iput p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIndexOnIcc:I

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

    iput v3, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatusOnIcc:I

    array-length v3, p1

    sub-int/2addr v3, v4

    new-array v5, v3, [B

    invoke-static {p1, v4, v5, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
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

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "SmsMessage"

    const-string v3, "SMS PDU parsing failed with out of memory: "

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :catch_1
    move-exception v1

    const-string v2, "SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private static decToBcd(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    div-int/lit8 v0, p0, 0xa

    rem-int/lit8 v1, p0, 0xa

    mul-int/lit8 v3, v1, 0xa

    add-int/2addr v3, v0

    return v3
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string/jumbo v0, "utf-16be"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    array-length v3, p1

    array-length v4, v0

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    new-array v3, v3, [B

    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    array-length v4, p1

    invoke-static {p1, v1, v3, v2, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v4, p1

    add-int/2addr v4, v2

    array-length v5, v0

    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    array-length v4, v3

    add-int/2addr v4, v2

    new-array v4, v4, [B

    array-length v5, v3

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    array-length v5, v3

    invoke-static {v3, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    return-object v4
.end method

.method public static getRelativeValidityPeriod(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x5

    if-lt p0, v1, :cond_5

    const v1, 0x9b0a0

    if-le p0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x2d0

    if-gt p0, v2, :cond_1

    div-int/lit8 v1, p0, 0x5

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x5a0

    if-gt p0, v2, :cond_2

    add-int/lit16 v1, p0, -0x2d0

    div-int/lit8 v1, v1, 0x1e

    add-int/lit16 v0, v1, 0x8f

    goto :goto_0

    :cond_2
    const v2, 0xa8c0

    if-gt p0, v2, :cond_3

    div-int/lit16 v1, p0, 0x5a0

    add-int/lit16 v0, v1, 0xa6

    goto :goto_0

    :cond_3
    if-gt p0, v1, :cond_4

    div-int/lit16 v1, p0, 0x2760

    add-int/lit16 v0, v1, 0xc0

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Validity Period"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    if-nez v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v5

    if-eqz v5, :cond_2

    iget v0, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-gtz v0, :cond_1

    iget v0, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-lez v0, :cond_2

    :cond_1
    const-string v0, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimDeliverPdu: ted.languageTable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getSimDeliverPdu: ted.languageShiftTable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iget v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v6, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iget v6, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v6, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_2
    move-object/from16 v6, p4

    :goto_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;-><init>()V

    move-object v7, v0

    if-eqz v6, :cond_3

    const/16 v0, 0x40

    goto :goto_1

    :cond_3
    move v0, v4

    :goto_1
    or-int/2addr v0, v4

    int-to-byte v8, v0

    move-object v9, v3

    const/4 v10, 0x7

    move-object/from16 v11, p0

    :try_start_0
    invoke-static {v11, v1, v8, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    move-object v9, v0

    if-eqz v5, :cond_4

    iget v0, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v12, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {v2, v6, v0, v12}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-static {v2, v6, v4, v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    :goto_2
    const/16 v12, 0xff

    aget-byte v13, v0, v4

    and-int/2addr v12, v13

    const/16 v13, 0xa0

    if-le v12, v13, :cond_5

    return-object v3

    :cond_5
    invoke-virtual {v9, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-array v12, v10, [B

    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->ConvertDateStringToBCD(Ljava/lang/String;)[B

    move-result-object v13

    move-object v12, v13

    array-length v13, v12

    invoke-virtual {v9, v12, v4, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length v13, v0

    invoke-virtual {v9, v0, v4, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v12, v0

    :try_start_1
    const-string/jumbo v0, "utf-16be"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    nop

    if-eqz v6, :cond_6

    array-length v13, v6

    array-length v14, v0

    add-int/2addr v13, v14

    new-array v13, v13, [B

    array-length v14, v6

    invoke-static {v6, v4, v13, v4, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v14, v6

    array-length v15, v0

    invoke-static {v0, v4, v13, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_3

    :cond_6
    move-object v13, v0

    :goto_3
    array-length v14, v13

    const/16 v15, 0x8c

    if-le v14, v15, :cond_7

    return-object v3

    :cond_7
    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    new-array v3, v10, [B

    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->ConvertDateStringToBCD(Ljava/lang/String;)[B

    move-result-object v3

    array-length v10, v3

    invoke-virtual {v9, v3, v4, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length v10, v13

    invoke-virtual {v9, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v10, v13

    invoke-virtual {v9, v13, v4, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_4
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedMessage:[B

    return-object v7

    :catch_1
    move-exception v0

    const-string v4, "SmsMessage"

    const-string v10, "Implausible UnsupportedEncodingException "

    invoke-static {v4, v10, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3

    :cond_8
    :goto_5
    move-object/from16 v11, p0

    return-object v3
.end method

.method private static getSimDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 9

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xb4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    iput-object v1, p3, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p3, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    const-string v6, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Address is ."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v1, "SmsMessage"

    const-string v6, "Address is Numeric."

    invoke-static {v1, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4

    :cond_3
    array-length v6, v1

    sub-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0x2

    array-length v7, v1

    sub-int/2addr v7, v5

    aget-byte v7, v1, v7

    const/16 v8, 0xf0

    and-int/2addr v7, v8

    if-ne v7, v8, :cond_4

    goto :goto_3

    :cond_4
    move v5, v2

    :goto_3
    sub-int/2addr v6, v5

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v5, v1

    invoke-virtual {v0, v1, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    :cond_5
    const-string v6, "SmsMessage"

    const-string v7, "Address is Alphabetic."

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    nop

    nop

    array-length v6, v1

    sub-int/2addr v6, v5

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0xd0

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v6, v1

    sub-int/2addr v6, v5

    invoke-virtual {v0, v1, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_4
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-object v0

    :catch_0
    move-exception v2

    const-string v5, "SmsMessage"

    const-string v6, "Implausible UnsupportedEncodingException "

    invoke-static {v5, v6, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static getSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 11

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-gtz v3, :cond_1

    iget v3, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-lez v3, :cond_2

    :cond_1
    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimSubmitPdu: ted.languageTable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimSubmitPdu: ted.languageShiftTable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iget v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v4, v3, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iget v4, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v4, v3, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p3

    :cond_2
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/4 v4, 0x1

    if-eqz p3, :cond_3

    const/16 v5, 0x40

    goto :goto_0

    :cond_3
    move v5, v1

    :goto_0
    or-int/2addr v4, v5

    int-to-byte v4, v4

    invoke-static {p0, p1, v4, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v5

    if-eqz v2, :cond_4

    :try_start_0
    iget v6, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v7, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {p2, p3, v6, v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v6

    goto :goto_1

    :catch_0
    move-exception v6

    goto :goto_2

    :cond_4
    invoke-static {p2, p3, v1, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v6

    :goto_1
    const/16 v7, 0xff

    aget-byte v8, v6, v1

    and-int/2addr v7, v8

    const/16 v8, 0xa0

    if-le v7, v8, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v7, v6

    invoke-virtual {v5, v6, v1, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_2
    nop

    :try_start_1
    const-string/jumbo v7, "utf-16be"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    nop

    nop

    if-eqz p3, :cond_6

    array-length v8, p3

    array-length v9, v7

    add-int/2addr v8, v9

    new-array v8, v8, [B

    array-length v9, p3

    invoke-static {p3, v1, v8, v1, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v9, p3

    array-length v10, v7

    invoke-static {v7, v1, v8, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_3

    :cond_6
    move-object v8, v7

    :goto_3
    array-length v9, v8

    const/16 v10, 0x8c

    if-le v9, v10, :cond_7

    return-object v0

    :cond_7
    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v0, v8

    invoke-virtual {v5, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v0, v8

    invoke-virtual {v5, v8, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_4
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v3

    :catch_1
    move-exception v1

    const-string v7, "SmsMessage"

    const-string v8, "Implausible UnsupportedEncodingException "

    invoke-static {v7, v8, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0

    :cond_8
    :goto_5
    return-object v0
.end method

.method private static getSimSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xb4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    if-nez p0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_1
    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    array-length v5, v2

    sub-int/2addr v5, v4

    aget-byte v5, v2, v5

    const/16 v6, 0xf0

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8

    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    iput p3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    array-length v4, p4

    array-length v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x8c

    if-le v4, v5, :cond_0

    const-string v1, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS data message may only contain "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p5, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v6, p4

    array-length v7, v3

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v6, v3

    invoke-virtual {v5, v3, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length v6, p4

    invoke-virtual {v5, p4, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v4
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8

    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    iput-boolean v1, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput-object v0, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v3

    array-length v4, p3

    array-length v5, v3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    const/16 v5, 0x8c

    if-le v4, v5, :cond_0

    const-string v1, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMS data message may only contain "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v3

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p4, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v5

    if-nez v5, :cond_1

    return-object v4

    :cond_1
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v6, p3

    array-length v7, v3

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v6, v3

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v6, v3

    invoke-virtual {v5, v3, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length v6, p3

    invoke-virtual {v5, p3, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v4
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v8, p4

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 14

    move/from16 v11, p8

    move/from16 v12, p9

    if-gtz v11, :cond_1

    if-lez v12, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move v9, v11

    move v10, v12

    invoke-static/range {v0 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    move-object v13, v0

    iput v11, v13, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iput v12, v13, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v13}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move v9, v11

    move v10, v12

    invoke-static/range {v0 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 12

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SmsKsc5601Send"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object/from16 v5, p4

    invoke-static/range {v1 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 9

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 19

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_10

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v4, "CscFeature_RIL_SegmentedSms"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p4

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p5, :cond_7

    invoke-static {v2, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    iget v6, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    iget v8, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v9, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-ne v6, v4, :cond_6

    if-nez v8, :cond_2

    if-eqz v9, :cond_6

    :cond_2
    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v10

    iget v11, v10, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    if-ne v11, v8, :cond_3

    iget v11, v10, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    if-eq v11, v9, :cond_4

    :cond_3
    const-string v11, "SmsMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Updating language table in SMS header: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v10, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " -> "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v8, v10, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iput v9, v10, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v10}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    :cond_4
    goto :goto_1

    :cond_5
    new-instance v10, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v10}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput v8, v10, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    iput v9, v10, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-static {v10}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v0

    :cond_6
    :goto_1
    move v7, v6

    goto :goto_2

    :cond_7
    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    :goto_2
    move-object v6, v0

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v10, v0

    const/4 v0, 0x0

    const/4 v11, -0x1

    invoke-static/range {p8 .. p8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRelativeValidityPeriod(I)I

    move-result v12

    move v11, v12

    if-ltz v12, :cond_8

    const/4 v0, 0x2

    :cond_8
    move v12, v0

    shl-int/lit8 v0, v12, 0x3

    or-int/2addr v0, v4

    if-eqz v6, :cond_9

    const/16 v13, 0x40

    goto :goto_3

    :cond_9
    move v13, v5

    :goto_3
    or-int/2addr v0, v13

    int-to-byte v13, v0

    move-object/from16 v14, p0

    move/from16 v15, p3

    invoke-static {v14, v1, v13, v15, v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v5

    if-nez v5, :cond_a

    return-object v10

    :cond_a
    if-ne v7, v4, :cond_b

    :try_start_0
    invoke-static {v2, v6, v8, v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_b
    :try_start_1
    invoke-static {v2, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :goto_4
    nop

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v17, v0

    :try_start_2
    const-string v4, "SmsMessage"

    const-string v3, "Implausible UnsupportedEncodingException "

    invoke-static {v4, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v3, 0x0

    return-object v3

    :goto_5
    move-object v3, v0

    :try_start_3
    invoke-static {v2, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v7, 0x3

    nop

    :goto_6
    nop

    const/16 v3, 0xff

    const/4 v4, 0x1

    if-ne v7, v4, :cond_d

    const/4 v4, 0x0

    aget-byte v16, v0, v4

    and-int v4, v3, v16

    const/16 v3, 0xa0

    if-le v4, v3, :cond_c

    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message too long ("

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/16 v16, 0xff

    and-int v1, v16, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " septets)"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_c
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_7

    :cond_d
    const/4 v1, 0x0

    aget-byte v3, v0, v1

    const/16 v4, 0xff

    and-int/2addr v3, v4

    const/16 v4, 0x8c

    if-le v3, v4, :cond_e

    const-string v3, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message too long ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v0, v1

    const/16 v2, 0xff

    and-int/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes)"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_e
    const/16 v1, 0x8

    invoke-virtual {v5, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_7
    const/4 v1, 0x2

    if-ne v12, v1, :cond_f

    invoke-virtual {v5, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_f
    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v10, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v10

    :catch_2
    move-exception v0

    move-object v1, v0

    const-string v1, "SmsMessage"

    const-string v2, "Implausible UnsupportedEncodingException "

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1

    :cond_10
    :goto_8
    move-object/from16 v14, p0

    move/from16 v15, p3

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 20

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p8

    const-string v0, "SmsMessage"

    const-string v6, "getSubmitPdu with Options"

    invoke-static {v0, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_14

    if-nez v1, :cond_0

    goto/16 :goto_10

    :cond_0
    const-string v0, "SmsMessage"

    const-string v7, "**getSubmitPdu_Options**"

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "replyPath = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "encodingType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SmsMessage"

    const-string v7, "**********************"

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    move-object v7, v0

    const/4 v8, 0x0

    if-eqz v3, :cond_1

    const/16 v0, 0x40

    goto :goto_0

    :cond_1
    move v0, v8

    :goto_0
    const/4 v9, 0x1

    or-int/2addr v0, v9

    int-to-byte v0, v0

    if-eqz v4, :cond_2

    or-int/lit16 v10, v0, 0x80

    int-to-byte v0, v10

    const-string v10, "SmsMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mtiByte = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_SmsNotUsedValidityPeriodFormat"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string v10, "SmsMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SMS not used TP-VPF  mtiByte = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v10, v0

    goto :goto_2

    :cond_3
    or-int/lit8 v10, v0, 0x10

    int-to-byte v0, v10

    const-string v10, "SmsMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mtiByte = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :goto_2
    const/4 v11, 0x0

    const/4 v0, 0x0

    move-object/from16 v12, p0

    move/from16 v13, p3

    invoke-static {v12, v1, v10, v13, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v14

    if-eq v5, v9, :cond_9

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v15, "CscFeature_RIL_SmsSupportKsc5601"

    invoke-virtual {v0, v15}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_5

    :try_start_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v15, "CscFeature_RIL_SmsKsc5601Send"

    invoke-virtual {v0, v15}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "ril.simtype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "2"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string v15, "3"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    const/4 v11, 0x1

    goto :goto_3

    :cond_4
    new-instance v15, Lcom/android/internal/telephony/EncodeException;

    const-string v9, "Input Method is Unicode"

    invoke-direct {v15, v9}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move/from16 v6, p6

    move/from16 v9, p9

    move/from16 v15, p10

    goto/16 :goto_7

    :cond_5
    :goto_3
    move/from16 v9, p9

    move/from16 v15, p10

    :try_start_2
    invoke-static {v2, v3, v9, v15}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v0

    const/16 v16, 0xff

    aget-byte v17, v0, v8

    and-int v8, v16, v17

    const/16 v6, 0xa0

    if-le v8, v6, :cond_6

    const/4 v6, 0x0

    return-object v6

    :cond_6
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v8, "CscFeature_RIL_SmsNotUsedValidityPeriodFormat"

    invoke-virtual {v6, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "CPW"

    sget-object v8, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_3

    if-eqz v6, :cond_7

    const/16 v6, 0xa7

    goto :goto_4

    :cond_7
    move/from16 v6, p6

    :goto_4
    :try_start_3
    invoke-virtual {v14, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v8, "SmsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expirty = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    move/from16 v6, p6

    :goto_5
    array-length v1, v0

    const/4 v4, 0x0

    invoke-virtual {v14, v0, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_e

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move/from16 v9, p9

    move/from16 v15, p10

    goto :goto_6

    :cond_9
    move/from16 v9, p9

    move/from16 v15, p10

    :try_start_4
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    const-string v1, "Input Method is Unicode"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    move-exception v0

    :goto_6
    move/from16 v6, p6

    :goto_7
    move-object v1, v0

    :try_start_5
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v4, "CscFeature_RIL_SmsSupportKsc5601"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_5

    if-eqz v0, :cond_c

    :try_start_6
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v4, "CscFeature_RIL_SmsKsc5601Send"

    invoke-virtual {v0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v4, 0x1

    if-eq v5, v4, :cond_b

    if-eqz v11, :cond_a

    goto :goto_8

    :cond_a
    const-string v0, "EUC_KR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_9

    :cond_b
    :goto_8
    const-string/jumbo v0, "utf-16be"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_4

    :goto_9
    goto :goto_a

    :catch_4
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_f

    :cond_c
    :try_start_7
    const-string/jumbo v0, "utf-16be"

    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_a
    const-string/jumbo v4, "utf-16be"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_5

    move-object v0, v4

    nop

    nop

    if-eqz v3, :cond_d

    array-length v4, v3

    array-length v8, v0

    add-int/2addr v4, v8

    const/4 v8, 0x1

    add-int/2addr v4, v8

    new-array v4, v4, [B

    array-length v8, v3

    int-to-byte v8, v8

    move-object/from16 v18, v1

    const/4 v1, 0x0

    aput-byte v8, v4, v1

    array-length v8, v3

    const/4 v2, 0x1

    invoke-static {v3, v1, v4, v2, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    array-length v8, v3

    add-int/2addr v8, v2

    array-length v2, v0

    invoke-static {v0, v1, v4, v8, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_b

    :cond_d
    move-object/from16 v18, v1

    move-object v4, v0

    :goto_b
    move-object v1, v4

    array-length v2, v1

    const/16 v4, 0x8c

    if-le v2, v4, :cond_e

    const/4 v2, 0x0

    return-object v2

    :cond_e
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_SmsSupportKsc5601"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const/16 v4, 0x8

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v8, "CscFeature_RIL_SmsKsc5601Send"

    invoke-virtual {v2, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    if-eq v5, v2, :cond_10

    if-eqz v11, :cond_f

    goto :goto_c

    :cond_f
    const/16 v2, 0x84

    invoke-virtual {v14, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_d

    :cond_10
    :goto_c
    invoke-virtual {v14, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_d

    :cond_11
    invoke-virtual {v14, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_d
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_SmsNotUsedValidityPeriodFormat"

    invoke-virtual {v2, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "CPW"

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v6, 0xa7

    :cond_12
    invoke-virtual {v14, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v2, "SmsMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expirty = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    array-length v2, v1

    invoke-virtual {v14, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v2, v1

    const/4 v4, 0x0

    invoke-virtual {v14, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_e
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v7

    :catch_5
    move-exception v0

    move-object/from16 v18, v1

    :goto_f
    const-string v1, "SmsMessage"

    const-string v2, "Implausible UnsupportedEncodingException "

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1

    :cond_14
    :goto_10
    move-object/from16 v12, p0

    move/from16 v13, p3

    move/from16 v9, p9

    move/from16 v15, p10

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPduForAutoLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz p2, :cond_7

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getRelativeValidityPeriod(I)I

    move-result v5

    move v4, v5

    if-ltz v5, :cond_1

    const/4 v3, 0x2

    :cond_1
    const/4 v5, 0x1

    shl-int/lit8 v6, v3, 0x3

    or-int/2addr v5, v6

    const/4 v6, 0x0

    if-eqz p4, :cond_2

    const/16 v7, 0x40

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_0
    or-int/2addr v5, v7

    int-to-byte v5, v5

    move-object v7, p0

    move/from16 v8, p3

    invoke-static {v7, v0, v5, v8, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v9

    if-nez v9, :cond_3

    return-object v2

    :cond_3
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPackedForAutoLogin(Ljava/lang/String;)[B

    move-result-object v10

    if-nez v10, :cond_4

    return-object v1

    :cond_4
    aget-byte v11, v10, v6

    const/16 v12, 0xff

    and-int/2addr v11, v12

    const/16 v13, 0x8c

    if-le v11, v13, :cond_5

    const-string v11, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message too long ("

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v1, v10, v6

    and-int/2addr v1, v12

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes)"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_5
    const/4 v1, 0x4

    invoke-virtual {v9, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x2

    if-ne v3, v1, :cond_6

    invoke-virtual {v9, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_6
    array-length v1, v10

    invoke-virtual {v9, v10, v6, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v2

    :cond_7
    :goto_1
    move-object v7, p0

    move/from16 v8, p3

    const/4 v1, 0x0

    return-object v1
.end method

.method public static getSubmitPduForKTOTA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 10

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0xb4

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v3, 0x0

    if-nez p0, :cond_0

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v5

    if-nez v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_1
    array-length v6, v5

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    array-length v8, v5

    sub-int/2addr v8, v7

    aget-byte v8, v5, v8

    const/16 v9, 0xf0

    and-int/2addr v8, v9

    if-ne v8, v9, :cond_2

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    sub-int/2addr v6, v7

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v6, v5

    invoke-virtual {v2, v5, v4, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/16 v6, 0x7f

    invoke-virtual {v2, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v6
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    const/16 v7, 0xff

    aget-byte v8, v6, v4

    and-int/2addr v7, v8

    const/16 v8, 0xa0

    if-le v7, v8, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v6

    invoke-virtual {v2, v6, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    return-object v0

    :catch_0
    move-exception v4

    const-string v6, "SmsMessage"

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xb4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v1, 0x0

    if-nez p0, :cond_0

    iput-object v1, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SmsNotUsedStatusReportRequest"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    :cond_1
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->DocomoNetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v3

    :goto_1
    if-nez v3, :cond_3

    return-object v1

    :cond_3
    if-eqz v3, :cond_5

    array-length v1, v3

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    mul-int/lit8 v1, v1, 0x2

    array-length v5, v3

    sub-int/2addr v5, v4

    aget-byte v5, v3, v5

    const/16 v6, 0xf0

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    :goto_2
    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v1, v3

    invoke-virtual {v0, v3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_3

    :cond_5
    const-string v1, "SmsMessage"

    const-string v2, "daBytes is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-object v0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method public static newFromCDS([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SmsCml"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "3gpp"

    invoke-static {v1}, Landroid/telephony/SmsMessage;->writePduFormat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SmsMessage"

    const-string v2, "CDS SMS PDU parsing failed: "

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public static newFromCMT([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SmsMessage"

    const-string v2, "SMS PDU parsing failed: "

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private parsePdu([B)V
    .locals 4

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6

    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->CSCFEATURE_RIL_SPECIAL_ADDRESS_HANDLINGFOR:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v3, "+00852"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v3, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v4, "+"

    iput-object v4, v3, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v5, v4, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    and-int/lit8 v0, p2, 0x40

    const/16 v3, 0x40

    if-ne v0, v3, :cond_2

    move v1, v2

    nop

    :cond_2
    move v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    return-void
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    move v2, v1

    :goto_0
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_0

    :cond_0
    and-int/lit8 v3, v1, 0x78

    if-nez v3, :cond_4

    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    :cond_1
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    :cond_2
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_4

    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    :cond_4
    return-void
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6

    and-int/lit16 v0, p2, 0x80

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x80

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/4 v0, 0x0

    shr-int/lit8 v3, p2, 0x3

    and-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v4, v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x7

    :goto_1
    add-int/lit8 v4, v0, -0x1

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move v0, v4

    goto :goto_1

    :cond_3
    and-int/lit8 v0, p2, 0x40

    const/16 v5, 0x40

    if-ne v0, v5, :cond_4

    move v1, v2

    nop

    :cond_4
    move v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    return-void
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xd0

    const v8, 0x11200b4

    const/16 v11, 0x80

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/16 v14, 0xf0

    const/4 v15, 0x0

    const/4 v9, 0x1

    const/16 v10, 0x84

    if-ne v6, v10, :cond_0

    const/4 v5, 0x4

    :goto_0
    move v6, v4

    move v4, v0

    goto/16 :goto_b

    :cond_0
    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v11

    if-nez v6, :cond_7

    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_1

    move v6, v9

    goto :goto_1

    :cond_1
    move v6, v15

    :goto_1
    move v4, v6

    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_2

    move v6, v9

    goto :goto_2

    :cond_2
    move v6, v15

    :goto_2
    move v0, v6

    if-eqz v4, :cond_3

    const-string v6, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v9, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    goto :goto_0

    :cond_3
    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    shr-int/2addr v6, v13

    and-int/2addr v6, v12

    packed-switch v6, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const/4 v5, 0x3

    sput-boolean v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    goto :goto_4

    :pswitch_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_SupportGsm8bitSms"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto :goto_3

    :cond_4
    :pswitch_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v10, "CscFeature_RIL_SmsSupportKsc5601"

    invoke-virtual {v6, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x4

    sput-boolean v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    goto :goto_4

    :cond_5
    const-string v6, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    sput-boolean v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v5, 0x2

    goto :goto_4

    :pswitch_3
    const/4 v5, 0x1

    sput-boolean v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    nop

    :goto_4
    goto/16 :goto_0

    :cond_7
    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v14

    if-ne v6, v14, :cond_9

    const/4 v0, 0x1

    const/4 v4, 0x0

    sput-boolean v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_8

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_9
    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v14

    const/16 v10, 0xc0

    if-eq v6, v10, :cond_e

    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v14

    if-eq v6, v7, :cond_e

    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v14

    const/16 v11, 0xe0

    if-ne v6, v11, :cond_a

    goto/16 :goto_5

    :cond_a
    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v10

    const/16 v10, 0x80

    if-ne v6, v10, :cond_d

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string v10, "CscFeature_RIL_SmsSupportKsc5601"

    invoke-virtual {v6, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    shr-int/2addr v6, v13

    and-int/2addr v6, v12

    if-eq v6, v9, :cond_b

    sput-boolean v9, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    const-string v6, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "5 - 1 Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const/4 v5, 0x4

    sput-boolean v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    goto/16 :goto_0

    :cond_c
    sput-boolean v9, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    const-string v6, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "5 - Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const-string v6, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v9, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    goto/16 :goto_0

    :cond_e
    :goto_5
    sput-boolean v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mUnsupportedDatacodingScheme:Z

    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v6, v14

    const/16 v11, 0xe0

    if-ne v6, v11, :cond_f

    const/4 v5, 0x3

    goto :goto_6

    :cond_f
    const/4 v5, 0x1

    :goto_6
    const/4 v4, 0x0

    iget v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v11, 0x8

    and-int/2addr v6, v11

    if-ne v6, v11, :cond_10

    move v6, v9

    goto :goto_7

    :cond_10
    move v6, v15

    :goto_7
    iget v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v11, v12

    if-nez v11, :cond_13

    iput-boolean v9, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    iput-boolean v6, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    iget v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v11, v14

    if-ne v11, v10, :cond_11

    move v10, v9

    goto :goto_8

    :cond_11
    move v10, v15

    :goto_8
    iput-boolean v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-ne v6, v9, :cond_12

    const/4 v10, -0x1

    iput v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_9

    :cond_12
    iput v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    :goto_9
    const-string v10, "SmsMessage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MWI in DCS for Vmail. DCS = "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v8, v8, 0xff

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " Dont store = "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " vmail count = "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_13
    iput-boolean v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const-string v8, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MWI in DCS for fax/email/other: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/lit16 v11, v11, 0xff

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    goto/16 :goto_0

    :goto_b
    if-ne v5, v9, :cond_14

    move v0, v9

    goto :goto_c

    :cond_14
    move v0, v15

    :goto_c
    invoke-virtual {v2, v3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserData:[B

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v3, :cond_1d

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    iget v11, v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    and-int/lit16 v11, v11, 0xff

    if-eqz v11, :cond_16

    const/16 v13, 0x80

    if-ne v11, v13, :cond_15

    goto :goto_e

    :cond_15
    const-string v13, "SmsMessage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_16
    :goto_e
    iput-boolean v9, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/16 v7, 0x80

    if-ne v11, v7, :cond_18

    iput-boolean v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    :cond_17
    const/16 v7, 0xe0

    const/16 v13, 0xd0

    goto :goto_10

    :cond_18
    iget-boolean v12, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-nez v12, :cond_17

    iget v12, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v12, v14

    const/16 v13, 0xd0

    if-eq v12, v13, :cond_19

    iget v12, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    and-int/2addr v12, v14

    const/16 v7, 0xe0

    if-ne v12, v7, :cond_1a

    goto :goto_f

    :cond_19
    const/16 v7, 0xe0

    :goto_f
    iget v12, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/16 v16, 0x3

    and-int/lit8 v12, v12, 0x3

    if-eqz v12, :cond_1b

    :cond_1a
    iput-boolean v9, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    :cond_1b
    :goto_10
    iget v12, v10, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    and-int/lit16 v12, v12, 0xff

    iput v12, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    iget v12, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    if-lez v12, :cond_1c

    iput-boolean v9, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    goto :goto_11

    :cond_1c
    iput-boolean v15, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    :goto_11
    const-string v12, "SmsMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MWI in TP-UDH for Vmail. Msg Ind = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " Dont store = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " Vmail count = "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12
    nop

    const/16 v7, 0xd0

    const/4 v12, 0x3

    const/4 v13, 0x2

    goto/16 :goto_d

    :cond_1d
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v7, "CscFeature_RIL_SmsSupportReplyAddress"

    invoke-virtual {v0, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    iget-object v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v10, :cond_20

    iget-object v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v10, v10, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_13
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_20

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    iget v12, v11, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    const/16 v13, 0x22

    if-ne v12, v13, :cond_1f

    iget v12, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    if-nez v12, :cond_1f

    const/4 v12, 0x1

    iget-object v0, v11, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v0, v0

    const/4 v13, 0x2

    if-le v0, v13, :cond_1e

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v13, v11, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    iget-object v14, v11, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    array-length v14, v14

    invoke-direct {v0, v13, v15, v14}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_14

    :catch_0
    move-exception v0

    const-string v13, "SmsMessage"

    const-string v14, "GsmSmsAddress FAIL!"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    goto :goto_15

    :cond_1e
    iput-object v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v0, "SmsMessage"

    const-string v13, "SMS replyAddress: null"

    invoke-static {v0, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_15
    move v0, v12

    :cond_1f
    goto :goto_13

    :cond_20
    if-nez v0, :cond_21

    iget-object v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v10, "SmsMessage"

    const-string v11, "hasReplayAddress = false, SMS replayAddress = mOriginatingAddress"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_SmsPortAddressedMessage"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_22

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string v11, "CscFeature_RIL_SmsTidMessage"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_22

    goto :goto_16

    :cond_22
    iget-object v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v10, :cond_24

    iget-object v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v10, v10, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x3

    if-le v10, v11, :cond_24

    iget-object v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget v10, v10, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-ne v10, v9, :cond_23

    const-string v10, "+82"

    iget-object v12, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v12, v12, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v12, v15, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    iget-object v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v12, "\\+82"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    :cond_23
    iget-object v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget v10, v10, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-ne v10, v9, :cond_24

    const-string v10, "82"

    iget-object v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-virtual {v11, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    iget-object v10, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v12, "82"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    :cond_24
    :goto_16
    packed-switch v5, :pswitch_data_1

    goto/16 :goto_19

    :pswitch_4
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_19

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v0

    array-length v7, v0

    if-lez v7, :cond_26

    add-int/lit8 v10, v7, -0x2

    aget-byte v10, v0, v10

    and-int/lit16 v10, v10, 0xff

    const/16 v11, 0x8

    shl-int/2addr v10, v11

    int-to-char v10, v10

    add-int/lit8 v11, v7, -0x1

    aget-byte v11, v0, v11

    and-int/lit16 v11, v11, 0xff

    int-to-char v11, v11

    or-int/2addr v11, v10

    int-to-char v10, v11

    const v11, 0xd83d

    if-eq v10, v11, :cond_25

    const v11, 0xd83c

    if-eq v10, v11, :cond_25

    const v11, 0xd83e

    if-ne v10, v11, :cond_26

    :cond_25
    const-string v11, "SmsMessage"

    const-string v12, "found emoji"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x2

    new-array v11, v11, [B

    iput-object v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mlastByte:[B

    iget-object v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mlastByte:[B

    add-int/lit8 v12, v7, -0x2

    aget-byte v12, v0, v12

    aput-byte v12, v11, v15

    iget-object v11, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mlastByte:[B

    add-int/lit8 v12, v7, -0x1

    aget-byte v12, v0, v12

    aput-byte v12, v11, v9

    iput-boolean v9, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsfourBytesUnicode:Z

    :cond_26
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_19

    :pswitch_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x11200b4

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v9

    if-nez v9, :cond_28

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_SupportGsm8bitSms"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_27

    goto :goto_17

    :cond_27
    iput-object v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_19

    :cond_28
    :goto_17
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_19

    :pswitch_7
    nop

    if-eqz v3, :cond_29

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    goto :goto_18

    :cond_29
    move v0, v15

    :goto_18
    if-eqz v3, :cond_2a

    iget-object v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget v15, v7, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    nop

    :cond_2a
    invoke-virtual {v2, v8, v0, v15}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto :goto_19

    :pswitch_8
    iput-object v7, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    nop

    :goto_19
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v7, "CscFeature_RIL_SmsTidMessage"

    invoke-virtual {v0, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v0, :cond_2b

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const v7, 0xc00a

    if-ne v0, v7, :cond_2b

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSpecificTid(I)V

    :cond_2b
    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    if-eqz v0, :cond_2d

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v7, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v0, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    const-string v7, "\r\n"

    const-string v9, "\n"

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v7, 0xd

    const/16 v9, 0xa

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    :cond_2d
    if-nez v4, :cond_2e

    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_1a

    :cond_2e
    iget v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    const/4 v7, 0x3

    and-int/2addr v0, v7

    packed-switch v0, :pswitch_data_2

    goto :goto_1a

    :pswitch_9
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_1a

    :pswitch_a
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_1a

    :pswitch_b
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_1a

    :pswitch_c
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    nop

    :goto_1a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method protected extractPaginationForGsm()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v4

    if-nez v4, :cond_0

    const-string v0, "SmsMessage"

    const-string/jumbo v7, "there is no message body"

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move-object v7, v0

    :try_start_0
    const-string v0, "("

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x28

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v9

    const/16 v10, 0x29

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v4, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_1
    const-string v0, "["

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x5b

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v9

    const/16 v10, 0x5d

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v4, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "{"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v9

    const/16 v10, 0x7d

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v4, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v8

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_3
    const-string v0, "SmsMessage"

    const-string/jumbo v10, "there is no pagination pattern maybe / or of "

    invoke-static {v0, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    nop

    const/4 v10, 0x0

    if-eqz v7, :cond_5

    move-object v6, v4

    const-string v0, "/"

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v0, v11

    if-ne v0, v8, :cond_4

    :try_start_1
    aget-object v0, v11, v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    aget-object v0, v11, v9

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v0

    const/4 v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v8, "SmsMessage"

    const-string/jumbo v9, "there is no pagination yet"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :cond_4
    :goto_1
    goto/16 :goto_8

    :cond_5
    const-string v0, " of "

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v0, v11

    const/4 v12, 0x3

    if-lt v0, v8, :cond_6

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    array-length v0, v13

    if-lt v0, v12, :cond_6

    :try_start_2
    aget-object v0, v13, v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    aget-object v0, v13, v8

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v3, v0

    aget-object v0, v13, v10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aget-object v14, v13, v8

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v0, v14

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v14, v0, 0x1

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v14

    const/4 v5, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v14, "SmsMessage"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "extractPagination : "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v12, "SmsMessage"

    const-string/jumbo v14, "there is no pagination yet"

    invoke-static {v12, v14}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    nop

    :cond_6
    :goto_3
    if-nez v5, :cond_c

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v0, v12

    if-lt v0, v8, :cond_c

    const/4 v3, 0x0

    aget-object v0, v12, v9

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move-object v13, v0

    :try_start_3
    aget-object v0, v12, v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v0

    move v0, v10

    :goto_4
    aget-char v14, v13, v0

    invoke-static {v14}, Ljava/lang/Character;->isDigit(C)Z

    move-result v14

    if-eqz v14, :cond_b

    if-nez v0, :cond_7

    aget-char v14, v13, v0

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    move v3, v14

    :goto_5
    const/4 v15, 0x3

    goto :goto_6

    :cond_7
    if-ne v0, v9, :cond_8

    aget-char v14, v13, v10

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    mul-int/lit8 v14, v14, 0xa

    aget-char v15, v13, v9

    invoke-static {v15}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v15

    add-int v3, v14, v15

    goto :goto_5

    :cond_8
    if-ne v0, v8, :cond_9

    aget-char v14, v13, v10

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    mul-int/lit8 v14, v14, 0x64

    aget-char v15, v13, v9

    invoke-static {v15}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v15

    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v14, v15

    aget-char v15, v13, v8

    invoke-static {v15}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v15

    add-int v3, v14, v15

    goto :goto_5

    :cond_9
    const/4 v14, 0x3

    if-ne v0, v14, :cond_a

    aget-char v14, v13, v10

    invoke-static {v14}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v14

    mul-int/lit16 v14, v14, 0x3e8

    aget-char v15, v13, v9

    invoke-static {v15}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v15

    mul-int/lit8 v15, v15, 0x64

    add-int/2addr v14, v15

    aget-char v15, v13, v8

    invoke-static {v15}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v15

    mul-int/lit8 v15, v15, 0xa

    add-int/2addr v14, v15

    const/4 v15, 0x3

    aget-char v8, v13, v15

    invoke-static {v8}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v8

    add-int v3, v14, v8

    goto :goto_6

    :cond_a
    move v15, v14

    :goto_6
    add-int/lit8 v0, v0, 0x1

    const/4 v8, 0x2

    goto :goto_4

    :cond_b
    aget-object v8, v12, v10

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v0

    add-int/2addr v8, v9

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v6, v8

    const/4 v5, 0x1

    goto :goto_7

    :catch_3
    move-exception v0

    const-string v8, "SmsMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extractPagination : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_4
    move-exception v0

    const-string v8, "SmsMessage"

    const-string/jumbo v9, "there is no pagination"

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    nop

    :cond_c
    :goto_8
    if-nez v5, :cond_d

    const-string v0, "SmsMessage"

    const-string v8, "No pagination found"

    invoke-static {v0, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    const-string v0, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "segmented number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SmsMessage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "total number: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x270f

    if-gez v2, :cond_e

    if-gt v2, v0, :cond_f

    :cond_e
    if-gez v3, :cond_10

    if-le v2, v0, :cond_10

    :cond_f
    const-string v0, "SmsMessage"

    const-string v8, "Its not segmented sms. "

    invoke-static {v0, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    if-eqz v2, :cond_11

    if-eqz v3, :cond_11

    if-gt v2, v3, :cond_11

    if-gt v3, v0, :cond_11

    const-string v0, "SmsMessage"

    const-string v8, "It\'s segmented sms"

    invoke-static {v0, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    iput v2, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v8, -0x1

    iput v8, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    iput-object v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v8, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, v8, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    goto :goto_9

    :cond_11
    const-string v0, "SmsMessage"

    const-string v8, "It\'s not segmented sms."

    invoke-static {v0, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    return-void

    :catch_5
    move-exception v0

    const-string v8, "SmsMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extractPagination : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method getDataCodingScheme()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    return v0
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public getMessageIdentifier()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMessagePriority()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNumOfVoicemails()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    :goto_0
    const-string v0, "SmsMessage"

    const-string v1, "CPHS voice mail message"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

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

.method public isMWIClearMessage()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMWISetMessage()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isMwiDontStore()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v3, "CscFeature_RIL_NotCountVoicemail"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "RWC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "TLS"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MTA"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const-string v0, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPHS MWI messages in Canada "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " don\'t store"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    const-string v0, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return v1

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    :cond_5
    return v2
.end method

.method public isReplace()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUsimDataDownload()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
