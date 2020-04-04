.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field private static final LTE_RSRP_THRESHOLDS_NUM:I = 0x4

.field private static final MAX_LTE_RSRP:I = -0x2c

.field private static final MAX_WCDMA_RSCP:I = -0x18

.field private static final MEASUMENT_TYPE_RSCP:Ljava/lang/String; = "rscp"

.field private static final MIN_LTE_RSRP:I = -0x8c

.field private static final MIN_WCDMA_RSCP:I = -0x78

.field public static NUM_SIGNAL_STRENGTH_BINS:I = 0x0

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1

.field private static final WCDMA_RSCP_THRESHOLDS_NUM:I = 0x4


# instance fields
.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mIsGsm:Z

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrpBoost:I

.field private mLteRsrpThresholds:[I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mSignalBar:I

.field private mTdScdmaRscp:I

.field private mUseOnlyRsrpForLteLevel:Z

.field private mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

.field private mWcdmaRscp:I

.field private mWcdmaRscpAsu:I

.field private mWcdmaRscpThresholds:[I

.field private mWcdmaSignalStrength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/telephony/SignalStrength;->InitializeSignalBins()I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    invoke-static {}, Landroid/telephony/SignalStrength;->InitializeSignalNames()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/telephony/SignalStrength;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIII)V
    .locals 20

    const-string v19, ""

    const/16 v14, 0x63

    const v15, 0x7fffffff

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v19}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIIZZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIII)V
    .locals 20

    const-string v19, ""

    const/16 v14, 0x63

    const v15, 0x7fffffff

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v19}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIIZZLjava/lang/String;)V

    move/from16 v1, p14

    iput v1, v0, Landroid/telephony/SignalStrength;->mSignalBar:I

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIII)V
    .locals 20

    const-string v19, ""

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-direct/range {v0 .. v19}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIIZZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIII)V
    .locals 20

    const-string v19, ""

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    invoke-direct/range {v0 .. v19}, Landroid/telephony/SignalStrength;-><init>(IIIIIIIIIIIIIIIIZZLjava/lang/String;)V

    move/from16 v1, p16

    iput v1, v0, Landroid/telephony/SignalStrength;->mSignalBar:I

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIIIIZZLjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p15

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x4

    new-array v3, v2, [I

    iput-object v3, v0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    new-array v2, v2, [I

    iput-object v2, v0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    move/from16 v2, p1

    iput v2, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    move/from16 v3, p2

    iput v3, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    move/from16 v4, p3

    iput v4, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    move/from16 v5, p4

    iput v5, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    move/from16 v6, p5

    iput v6, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    move/from16 v7, p6

    iput v7, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    move/from16 v8, p7

    iput v8, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    move/from16 v9, p8

    iput v9, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    move/from16 v10, p9

    iput v10, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    move/from16 v11, p10

    iput v11, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    move/from16 v12, p11

    iput v12, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    move/from16 v13, p12

    iput v13, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    const v14, 0x7fffffff

    iput v14, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    move/from16 v14, p14

    iput v14, v0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    iput v1, v0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    add-int/lit8 v15, v1, -0x78

    iput v15, v0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    move/from16 v15, p16

    iput v15, v0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Landroid/telephony/SignalStrength;->getDefaultLteRsrpThresholds()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setLteRsrpThresholds([I)V

    invoke-direct/range {p0 .. p0}, Landroid/telephony/SignalStrength;->getDefaultWcdmaRscpThresholds()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalStrength;->setWcdmaRscpThresholds([I)V

    const/4 v1, 0x0

    iput v1, v0, Landroid/telephony/SignalStrength;->mSignalBar:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    return-void
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    const/16 v0, 0x63

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    const/16 v2, -0x78

    iput v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    const/16 v3, -0xa0

    iput v3, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const v1, 0x7fffffff

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    iput v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const/16 v0, 0xff

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    const-string v1, ""

    iput-object v1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getDefaultLteRsrpThresholds()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/telephony/SignalStrength;->setLteRsrpThresholds([I)V

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getDefaultWcdmaRscpThresholds()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/telephony/SignalStrength;->setWcdmaRscpThresholds([I)V

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    return-void
.end method

.method private static InitializeSignalBins()I
    .locals 3

    const-string v0, "1"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    return v0

    :cond_0
    const/4 v0, 0x5

    return v0
.end method

.method private static InitializeSignalNames()[Ljava/lang/String;
    .locals 7

    const-string v0, "1"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "none"

    const-string/jumbo v2, "poor"

    const-string/jumbo v3, "moderate"

    const-string/jumbo v4, "good"

    const-string/jumbo v5, "great"

    const-string v6, "excellent"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "none"

    const-string/jumbo v1, "poor"

    const-string/jumbo v2, "moderate"

    const-string/jumbo v3, "good"

    const-string/jumbo v4, "great"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCdmaRelatedSignalStrength()I
    .locals 5

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v1

    if-nez v1, :cond_0

    move v2, v0

    :goto_0
    goto :goto_3

    :cond_0
    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    move v2, v0

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel()Z

    move-result v3

    if-eqz v3, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v1

    goto :goto_3

    :cond_4
    const-string v3, "USC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    if-eqz v3, :cond_5

    move v3, v0

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    move v2, v3

    :cond_6
    :goto_3
    return v2
.end method

.method private getDefaultLteRsrpThresholds()[I
    .locals 2

    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v1, "lte_rsrp_thresholds_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private getDefaultWcdmaRscpThresholds()[I
    .locals 2

    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string/jumbo v1, "wcdma_rscp_thresholds_int_array"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method private getGsmRelatedSignalStrength()I
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaLevel()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v0

    :cond_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1

    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    const-string v0, "LteRsrpBoost"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    const-string v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const-string v0, "WcdmaSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    const-string v0, "WcdmaRscpAsu"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    const-string v0, "WcdmaRscp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const-string v0, "IsGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    const-string v0, "UseOnlyRsrpForLteLevel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    const-string v0, "WcdmaDefaultSignalMeasurement"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    const-string/jumbo v0, "lteRsrpThresholds"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v2

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "wcdmaRscpThresholds"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v3

    :cond_2
    nop

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const-string v1, "SignalBar"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1

    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->mIsGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    iget-object v0, p1, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    iget-object v0, p1, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->setLteRsrpThresholds([I)V

    iget-object v0, p1, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->setWcdmaRscpThresholds([I)V

    iget v0, p1, Landroid/telephony/SignalStrength;->mSignalBar:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/SignalStrength;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    iget-boolean v3, v1, Landroid/telephony/SignalStrength;->mIsGsm:Z

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    iget-boolean v3, v1, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    iget-object v3, v1, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    iget-object v3, v1, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    iget v3, v1, Landroid/telephony/SignalStrength;->mSignalBar:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    iget-object v3, v1, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "LteRsrpBoost"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "WcdmaSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "WcdmaRscpAsu"

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "WcdmaRscp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "IsGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "UseOnlyRsrpForLteLevel"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "WcdmaDefaultSignalMeasurement"

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "lteRsrpThresholds"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    array-length v4, v2

    :goto_1
    if-ge v3, v4, :cond_1

    aget v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "wcdmaRscpThresholds"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "SignalBar"

    iget v3, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public fixType()V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCdmaRelatedSignalStrength()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    return-void
.end method

.method public getAlternateLteLevel()I
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x2c

    if-le v1, v2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x61

    if-lt v1, v2, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-lt v1, v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-lt v1, v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x78

    if-lt v1, v2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x8c

    if-lt v1, v2, :cond_5

    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0
.end method

.method public getAsuLevel()I
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_2

    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_2

    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaAsuLevel()I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    if-nez v1, :cond_5

    move v0, v2

    goto :goto_2

    :cond_5
    if-ge v1, v2, :cond_6

    move v3, v1

    goto :goto_0

    :cond_6
    move v3, v2

    :goto_0
    move v0, v3

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v0, v2

    goto :goto_2

    :cond_7
    const-string v3, "USC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    if-eqz v3, :cond_8

    move v3, v1

    goto :goto_1

    :cond_8
    move v3, v2

    :goto_1
    move v0, v3

    :cond_9
    :goto_2
    return v0
.end method

.method public getCdmaAsuLevel()I
    .locals 6

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    const/16 v2, 0x63

    const/16 v3, -0x64

    const/16 v4, -0x5a

    const/16 v5, -0x4b

    if-lt v0, v5, :cond_0

    const/16 v5, 0x10

    :goto_0
    goto :goto_1

    :cond_0
    const/16 v5, -0x52

    if-lt v0, v5, :cond_1

    const/16 v5, 0x8

    goto :goto_0

    :cond_1
    if-lt v0, v4, :cond_2

    const/4 v5, 0x4

    goto :goto_0

    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v5, 0x2

    goto :goto_0

    :cond_3
    if-lt v0, v3, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    move v5, v2

    :goto_1
    if-lt v1, v4, :cond_5

    const/16 v2, 0x10

    :goto_2
    goto :goto_3

    :cond_5
    if-lt v1, v3, :cond_6

    const/16 v2, 0x8

    goto :goto_2

    :cond_6
    const/16 v3, -0x73

    if-lt v1, v3, :cond_7

    const/4 v2, 0x4

    goto :goto_2

    :cond_7
    const/16 v3, -0x82

    if-lt v1, v3, :cond_8

    const/4 v2, 0x2

    goto :goto_2

    :cond_8
    const/16 v3, -0x96

    if-lt v1, v3, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    nop

    :goto_3
    if-ge v5, v2, :cond_a

    move v3, v5

    goto :goto_4

    :cond_a
    move v3, v2

    :goto_4
    return v3
.end method

.method public getCdmaDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v0

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getDbm()I
    .locals 6

    const v0, 0x7fffffff

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaDbm()I

    move-result v2

    if-ne v2, v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaDbm()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v0

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    const-string v3, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, -0x78

    if-eqz v3, :cond_5

    if-ne v2, v4, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    return v3

    :cond_5
    const-string v3, "USC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    if-eqz v3, :cond_7

    if-ne v1, v4, :cond_6

    move v3, v2

    goto :goto_2

    :cond_6
    move v3, v1

    :goto_2
    return v3

    :cond_7
    if-ne v2, v4, :cond_8

    move v3, v1

    goto :goto_3

    :cond_8
    move v3, v2

    :goto_3
    return v3

    :cond_9
    if-ne v2, v4, :cond_a

    goto :goto_4

    :cond_a
    if-ne v1, v4, :cond_b

    goto :goto_5

    :cond_b
    if-ge v1, v2, :cond_c

    :goto_4
    move v3, v1

    goto :goto_6

    :cond_c
    :goto_5
    move v3, v2

    :goto_6
    return v3
.end method

.method public getEvdoAsuLevel()I
    .locals 5

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    const/16 v2, 0x63

    const/16 v3, -0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x10

    :goto_0
    goto :goto_1

    :cond_0
    const/16 v3, -0x4b

    if-lt v0, v3, :cond_1

    const/16 v3, 0x8

    goto :goto_0

    :cond_1
    const/16 v3, -0x55

    if-lt v0, v3, :cond_2

    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    const/16 v3, -0x5f

    if-lt v0, v3, :cond_3

    const/4 v3, 0x2

    goto :goto_0

    :cond_3
    const/16 v3, -0x69

    if-lt v0, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    move v3, v2

    :goto_1
    const/4 v4, 0x7

    if-lt v1, v4, :cond_5

    const/16 v2, 0x10

    :goto_2
    goto :goto_3

    :cond_5
    const/4 v4, 0x6

    if-lt v1, v4, :cond_6

    const/16 v2, 0x8

    goto :goto_2

    :cond_6
    const/4 v4, 0x5

    if-lt v1, v4, :cond_7

    const/4 v2, 0x4

    goto :goto_2

    :cond_7
    const/4 v4, 0x3

    if-lt v1, v4, :cond_8

    const/4 v2, 0x2

    goto :goto_2

    :cond_8
    const/4 v4, 0x1

    if-lt v1, v4, :cond_9

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    nop

    :goto_3
    if-ge v3, v2, :cond_a

    move v4, v3

    goto :goto_4

    :cond_a
    move v4, v2

    :goto_4
    return v4
.end method

.method public getEvdoDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v0

    and-int/lit16 v0, v0, 0xf00

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getEvdoSnr()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 4

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0x63

    if-ne v0, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eq v2, v1, :cond_1

    const/16 v1, -0x71

    const/4 v3, 0x2

    mul-int/2addr v3, v2

    add-int/2addr v1, v3

    goto :goto_1

    :cond_1
    nop

    :goto_1
    return v1
.end method

.method public getGsmLevel()I
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getGsmSignalBar()I
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v0

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 2

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getGsmRelatedSignalStrength()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getCdmaRelatedSignalStrength()I

    move-result v0

    :goto_0
    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-lt v0, v1, :cond_1

    sget v1, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v0, v1, -0x1

    :cond_1
    return v0
.end method

.method public getLteAsuLevel()I
    .locals 3

    const/16 v0, 0x63

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    add-int/lit16 v0, v1, 0x8c

    :goto_0
    return v0
.end method

.method public getLteCqi()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 3

    const/4 v0, 0x0

    const-string v1, "USC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isImsRegistered()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v1

    and-int/lit16 v1, v1, 0xf0

    shr-int/lit8 v0, v1, 0x4

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v1

    const v2, 0xf000

    and-int/2addr v1, v2

    shr-int/lit8 v0, v1, 0xc

    :goto_0
    return v0
.end method

.method public getLteRsrp()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrpBoost()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getNr5gLevel()I
    .locals 1

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public getSglteGsmLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSglteRssiDisplayNum()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSignalBar()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTdScdmaAsuLevel()I
    .locals 2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x78

    :goto_0
    return v1
.end method

.method public getTdScdmaDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 3

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v1

    and-int/lit8 v1, v1, 0xf

    return v1

    :cond_0
    const/16 v2, -0x19

    if-gt v0, v2, :cond_6

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, -0x31

    if-lt v0, v1, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    :cond_2
    const/16 v1, -0x49

    if-lt v0, v1, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :cond_3
    const/16 v1, -0x61

    if-lt v0, v1, :cond_4

    const/4 v1, 0x2

    goto :goto_1

    :cond_4
    const/16 v1, -0x6e

    if-lt v0, v1, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    const/4 v1, 0x0

    :goto_1
    nop

    return v1
.end method

.method public getWcdmaAsuLevel()I
    .locals 3

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getWcdmaDbm()I

    move-result v0

    const/16 v1, 0xff

    const v2, 0x7fffffff

    if-ne v0, v2, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x78

    :goto_0
    return v1
.end method

.method public getWcdmaDbm()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    return v0
.end method

.method public getWcdmaLevel()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v1

    and-int/lit8 v0, v1, 0xf

    return v0
.end method

.method public getWcdmaRscp()I
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0x1f

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    add-int/2addr v1, v2

    iget-boolean v2, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public isGsm()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    return-void
.end method

.method public setLteRsrpBoost(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    return-void
.end method

.method public setLteRsrpThresholds([I)V
    .locals 3

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "SignalStrength"

    const-string/jumbo v1, "setLteRsrpThresholds - lteRsrpThresholds is invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setUseOnlyRsrpForLteLevel(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    return-void
.end method

.method public setWcdmaDefaultSignalMeasurement(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    return-void
.end method

.method public setWcdmaRscpThresholds([I)V
    .locals 3

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "SignalStrength"

    const-string/jumbo v1, "setWcdmaRscpThresholds - wcdmaRscpThresholds is invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    if-eqz v1, :cond_0

    const-string v1, "P"

    goto :goto_0

    :cond_0
    const-string v1, "T"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "gsm|lte"

    goto :goto_1

    :cond_1
    const-string v1, "cdma"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "use_only_rsrp_for_lte_level"

    goto :goto_2

    :cond_2
    const-string/jumbo v1, "use_rsrp_and_rssnr_for_lte_level"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public useOnlyRsrpForLteLevel()Z
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    return v0
.end method

.method public validateInput()V
    .locals 5

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    const/4 v1, -0x1

    const/16 v2, 0x63

    if-ne v0, v1, :cond_0

    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    :cond_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_3

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    nop

    :cond_3
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    nop

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    add-int/lit8 v0, v0, -0x78

    const/16 v2, -0x18

    const/16 v3, -0x78

    if-lt v0, v3, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    add-int/lit8 v0, v0, -0x78

    if-gt v0, v2, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    goto :goto_2

    :cond_4
    const/16 v0, 0xff

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    const v4, 0x7fffffff

    if-lt v0, v3, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    if-gt v0, v2, :cond_5

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    goto :goto_3

    :cond_5
    move v0, v4

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    goto :goto_4

    :cond_6
    move v0, v3

    :goto_4
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    const/16 v2, -0xa0

    if-ltz v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    goto :goto_5

    :cond_7
    move v0, v2

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v3, v0

    nop

    :cond_8
    iput v3, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_9

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v2, v0

    nop

    :cond_9
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ltz v0, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_a

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    nop

    :cond_a
    iput v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    const/16 v1, -0x8c

    if-lt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    const/16 v1, -0x2c

    if-gt v0, v1, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    goto :goto_6

    :cond_b
    move v0, v4

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    goto :goto_7

    :cond_c
    move v0, v4

    :goto_7
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_d

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_d

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    goto :goto_8

    :cond_d
    move v0, v4

    :goto_8
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ltz v0, :cond_e

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x60

    if-gt v0, v1, :cond_e

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    add-int/lit8 v4, v0, -0x78

    nop

    :cond_e
    iput v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpAsu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpBoost:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mIsGsm:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mUseOnlyRsrpForLteLevel:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaDefaultSignalMeasurement:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLteRsrpThresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdmaRscpThresholds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
