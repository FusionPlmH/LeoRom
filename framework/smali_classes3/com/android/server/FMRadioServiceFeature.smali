.class public Lcom/android/server/FMRadioServiceFeature;
.super Ljava/lang/Object;
.source "FMRadioServiceFeature.java"


# static fields
.field public static final BANDWIDTHAS_76000_108000:Ljava/lang/String; = "76000_108000"

.field public static final BANDWIDTHAS_76000_90000:Ljava/lang/String; = "76000_90000"

.field public static final BANDWIDTHAS_87500_108000:Ljava/lang/String; = "87500_108000"

.field public static final CHIP_BRAODCOM:I = 0x2

.field public static final CHIP_MRVL:I = 0x3

.field public static final CHIP_MTK:I = 0x8

.field public static final CHIP_QCOM:I = 0x4

.field public static final CHIP_QCOM_CHROKEE:I = 0x9

.field public static final CHIP_RICHWAVE:I = 0x5

.field public static final CHIP_RICHWAVE_V2:I = 0xa

.field public static final CHIP_SILICON:I = 0x1

.field public static final CHIP_SLSI:I = 0x7

.field public static final CHIP_SPRD:I = 0x6

.field public static final CHIP_VENDOR:I

.field public static final FEATURE_BANDWIDTH:Ljava/lang/String;

.field public static final FEATURE_CONFIG_SOFTMUTE:Ljava/lang/String;

.field public static final FEATURE_DECONSTANT:I

.field public static final FEATURE_DISABLEDNS:Z

.field public static final FEATURE_FREQUENCYSPACE:I

.field public static final FEATURE_SETLOCALTUNNING:Ljava/lang/String;

.field public static final FEATURE_SOFTMUTE:Ljava/lang/String;

.field public static final FEATURE_SUPPORT_SOFTMUTE:Z

.field public static final FEATURE_USE_CHIPSET_VOLUME:Z

.field public static final FEATURE_WAIT_PID_DURING_SCAN:Z = false

.field public static sCscFeature:Lcom/samsung/android/feature/SemCscFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->sCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    sget-object v0, Lcom/android/server/FMRadioServiceFeature;->sCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    const-string v1, "CscFeature_FMRadio_SetLocalTunning"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SETLOCALTUNNING:Ljava/lang/String;

    sget-object v0, Lcom/android/server/FMRadioServiceFeature;->sCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    const-string v1, "CscFeature_FMRadio_BandWidthAs"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_BANDWIDTH:Ljava/lang/String;

    sget-object v0, Lcom/android/server/FMRadioServiceFeature;->sCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    const-string v1, "CscFeature_FMRadio_FrequencySpaceAs"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_FREQUENCYSPACE:I

    sget-object v0, Lcom/android/server/FMRadioServiceFeature;->sCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    const-string v1, "CscFeature_FMRadio_DeconstantAs"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DECONSTANT:I

    sget-object v0, Lcom/android/server/FMRadioServiceFeature;->sCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    const-string v1, "CscFeature_FMRadio_DefaultSoftMuteValue"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SOFTMUTE:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FMRADIO_SUPPORT_HYBRID_RADIO"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/FMRadioServiceFeature;->sCscFeature:Lcom/samsung/android/feature/SemCscFeature;

    const-string v3, "CscFeature_FMRadio_DisableMenuInternetRadio"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_COMMON_SOFTMUTE_TH"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_CONFIG_SOFTMUTE:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_SUPPORT_SOFTMUTE"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/FMRadioServiceFeature;->FEATURE_SUPPORT_SOFTMUTE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v3, "SEC_FLOATING_FEATURE_FMRADIO_CONFIG_CHIP_VENDOR"

    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    if-eq v0, v2, :cond_3

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    sget v0, Lcom/android/server/FMRadioServiceFeature;->CHIP_VENDOR:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    goto :goto_2

    :cond_2
    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    :goto_3
    sput-boolean v1, Lcom/android/server/FMRadioServiceFeature;->FEATURE_USE_CHIPSET_VOLUME:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
