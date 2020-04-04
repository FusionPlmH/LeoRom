.class public Lcom/android/internal/telephony/TelephonyFeatures;
.super Ljava/lang/Object;
.source "TelephonyFeatures.java"


# static fields
.field public static final IS_PHONE:Z

.field static final LOG_TAG:Ljava/lang/String; = "TelephonyFeatures"

.field public static final MULTI_SIM_CONFIG:Ljava/lang/String;

.field private static final NTCTYPE_COUNTRY:I = 0x3

.field private static final NTCTYPE_MAINOPERATOR:I = 0x0

.field private static final NTCTYPE_OPERATORTYPE:I = 0x2

.field private static final NTCTYPE_SUBOPERATOR:I = 0x1

.field public static final NTC_FEATURE_ALLOW_HANGUP_WHEN_DIALING:I = 0xd

.field public static final NTC_FEATURE_ALWAYS_LAST_CALL_FAIL_CAUSE:I = 0x11

.field public static final NTC_FEATURE_CSC_SPRINT_CHAMELEON:I = 0x4

.field public static final NTC_FEATURE_ENABLE_CMCC_VOLTE:I = 0xc

.field public static final NTC_FEATURE_ERI_ON_AP:I = 0x7

.field public static final NTC_FEATURE_ERI_ON_CP:I = 0x6

.field public static final NTC_FEATURE_FAKE_OPERATOR_NUMERIC:I = 0x5

.field public static final NTC_FEATURE_MAX:I = 0x13

.field public static final NTC_FEATURE_REMOVE_ECB_EXIT:I = 0x1

.field public static final NTC_FEATURE_SERVICESTATE_FOR_GOOGLEIMS:I = 0x8

.field public static final NTC_FEATURE_SPR_US_INTERNATIONAL_DIALING:I = 0x3

.field public static final NTC_FEATURE_SUPPORT_IMSCALL_ECBM:I = 0x12

.field public static final NTC_FEATURE_SUPPORT_IMSCALL_ONLY:I = 0x10

.field public static final NTC_FEATURE_SUPPORT_VOICELESS_OTA_PROVISIONING:I = 0xe

.field public static final NTC_FEATURE_UPDATE_NETWORK_LIST_WITH_EONS:I = 0xf

.field public static final NTC_FEATURE_USE_GOOGLEIMS:I = 0x9

.field public static final NTC_FEATURE_VZW_CDMALESS:I = 0xb

.field public static final NTC_FEATURE_VZW_GLOBAL_DIALING:I = 0x2

.field public static final NTC_FEATURE_VZW_HVOLTE:I = 0xa

.field private static final PRIMARY_PHONE_ID:I = 0x0

.field private static final PROJECT_SIM_NUM:I

.field public static final SALES_CODE:Ljava/lang/String;

.field private static final SECONDARY_PHONE_ID:I = 0x1

.field public static final SHIP_BUILD:Z

.field private static final SHOW_EPDGNAME_ONLY:I = 0x2

.field private static final SHOW_EPDGNAME_SPN:I = 0x0

.field private static final SHOW_SPN_ONLY:I = 0x1

.field private static mCountry:Ljava/lang/String;

.field private static mCountry2:Ljava/lang/String;

.field private static mMainOperator:Ljava/lang/String;

.field private static mMainOperator2:Ljava/lang/String;

.field private static mNetworkCode:Ljava/lang/String;

.field private static mNetworkCode2:Ljava/lang/String;

.field private static mOmcVersion:D

.field private static mOperatorType:Ljava/lang/String;

.field private static mOperatorType2:Ljava/lang/String;

.field private static mSalesCode:Ljava/lang/String;

.field private static mSimHotswapSupported:Z

.field private static mSimbasedChangeType:[Ljava/lang/String;

.field private static mSubOperator:Ljava/lang/String;

.field private static mSubOperator2:Ljava/lang/String;

.field private static mUsedLegacyIms:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string/jumbo v0, "ro.build.characteristics"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    const-string/jumbo v0, "ro.product_ship"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    const-string/jumbo v0, "ro.csc.omcnw_code"

    const-string/jumbo v3, "ro.csc.sales_code"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    const-string/jumbo v0, "persist.radio.multisim.config"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->MULTI_SIM_CONFIG:Ljava/lang/String;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/TelephonyFeatures;->PROJECT_SIM_NUM:I

    invoke-static {v2, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    const-string/jumbo v4, "ro.csc.omcnw_code"

    const-string/jumbo v5, "ro.csc.sales_code"

    const-string v6, "NONE"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator2:Ljava/lang/String;

    invoke-static {v1, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator2:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType2:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry2:Ljava/lang/String;

    const-string/jumbo v0, "ro.csc.omcnw_code2"

    const-string/jumbo v3, "ro.csc.sales_code"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "persist.radio.ims.legacy.enabled"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    nop

    :cond_0
    sput-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedLegacyIms:Z

    sput-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimHotswapSupported:Z

    const-string/jumbo v0, "ro.csc.sales_code"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    sput-wide v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOmcVersion:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static InitializeNetworkTypeCapability(II)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    const-string v2, "---"

    return-object v2

    :cond_0
    aget-object v2, v1, p1

    return-object v2
.end method

.method private static InitializeSimbasedType()V
    .locals 5

    const-string/jumbo v0, "ro.simbased.changetype"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    array-length v1, v1

    if-ge v1, v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v3, "CscFeature_Common_AutoConfigurationType"

    const-string v4, "NONE,DISABLED"

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    array-length v1, v1

    if-ge v1, v2, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    new-array v1, v2, [Ljava/lang/String;

    sput-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    const-string v2, "NONE"

    aput-object v2, v1, v4

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    const-string v2, "DISABLED"

    aput-object v2, v1, v3

    :goto_1
    return-void
.end method

.method public static configSpnRuleUnderEpdgRegi(IZ)I
    .locals 4

    const-string v0, "65502"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const-string v0, "52501"

    const-string v2, "52502"

    const-string v3, "51503"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "EUR"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    return v1
.end method

.method public static configSpnRuleUnderEpdgRegi(Z)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyFeatures;->configSpnRuleUnderEpdgRegi(IZ)I

    move-result v0

    return v0
.end method

.method public static displaySpnRulePlmnAtAbout(I)Z
    .locals 4

    const-string v0, "CHN"

    const-string v1, "HKG"

    const-string v2, "TPE"

    const-string v3, "JPN"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "VZW"

    const-string v1, "SPR"

    const-string v2, "USC"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "52501"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static dump()V
    .locals 5

    const-string v0, "----- TelephonyFeatures.dump -----"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMainOperatorName(PRIMARY / SECONDARY): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubOperatorName(PRIMARY / SECONDARY): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOperatorType(PRIMARY / SECONDARY): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCountryName(PRIMARY / SECONDARY): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkCode(PRIMARY / SECONDARY): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS_PHONE: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHIP_BUILD: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SALES_CODE: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MULTI_SIM_CONFIG: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->MULTI_SIM_CONFIG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUsedLegacyIms: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedLegacyIms:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSalesCode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    move v0, v2

    :goto_0
    const/16 v3, 0x13

    if-ge v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNtcFeature("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->featureToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static featureToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown NTC_FEATURE("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "NTC_FEATURE_SUPPORT_IMSCALL_ECBM"

    return-object v0

    :pswitch_1
    const-string v0, "NTC_FEATURE_ALWAYS_LAST_CALL_FAIL_CAUSE"

    return-object v0

    :pswitch_2
    const-string v0, "NTC_FEATURE_SUPPORT_IMSCALL_ONLY"

    return-object v0

    :pswitch_3
    const-string v0, "NTC_FEATURE_UPDATE_NETWORK_LIST_WITH_EONS"

    return-object v0

    :pswitch_4
    const-string v0, "NTC_FEATURE_SUPPORT_VOICELESS_OTA_PROVISIONING"

    return-object v0

    :pswitch_5
    const-string v0, "NTC_FEATURE_ALLOW_HANGUP_WHEN_DIALING"

    return-object v0

    :pswitch_6
    const-string v0, "NTC_FEATURE_ENABLE_CMCC_VOLTE"

    return-object v0

    :pswitch_7
    const-string v0, "NTC_FEATURE_VZW_CDMALESS"

    return-object v0

    :pswitch_8
    const-string v0, "NTC_FEATURE_VZW_HVOLTE"

    return-object v0

    :pswitch_9
    const-string v0, "NTC_FEATURE_USE_GOOGLEIMS"

    return-object v0

    :pswitch_a
    const-string v0, "NTC_FEATURE_SERVICESTATE_FOR_GOOGLEIMS"

    return-object v0

    :pswitch_b
    const-string v0, "NTC_FEATURE_ERI_ON_AP"

    return-object v0

    :pswitch_c
    const-string v0, "NTC_FEATURE_ERI_ON_CP"

    return-object v0

    :pswitch_d
    const-string v0, "NTC_FEATURE_FAKE_OPERATOR_NUMERIC"

    return-object v0

    :pswitch_e
    const-string v0, "NTC_FEATURE_CSC_SPRINT_CHAMELEON"

    return-object v0

    :pswitch_f
    const-string v0, "NTC_FEATURE_SPR_US_INTERNATIONAL_DIALING"

    return-object v0

    :pswitch_10
    const-string v0, "NTC_FEATURE_VZW_GLOBAL_DIALING"

    return-object v0

    :pswitch_11
    const-string v0, "NTC_FEATURE_REMOVE_ECB_EXIT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
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

.method public static getCountryName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCountryName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry2:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static getMainOperatorName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMainOperatorName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator2:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static getNetworkCode()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNetworkCode(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkCode(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static getNtcFeature(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(II)Z

    move-result v0

    return v0
.end method

.method public static getNtcFeature(II)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown NTC feature: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_0
    const-string v2, "VZW"

    const-string v3, "USC"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SPR"

    const-string v3, "XAS"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "ril.sim.mobility"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :pswitch_1
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedLegacyIms:Z

    if-eqz v2, :cond_1

    const-string v2, "VZW"

    const-string v3, "ATT"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :pswitch_2
    const-string v2, "Softphone"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_IMS_ConfigMdmnType"

    invoke-virtual {v3, p0, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :pswitch_3
    const-string v2, "JPN"

    const-string v3, "CHN"

    const-string v4, "KOR"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisableEons"

    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ReferEonsWithoutLac"

    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :pswitch_4
    const-string v2, "VZW"

    const-string v3, "SPR"

    const-string v4, "USC"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :pswitch_5
    const-string v2, "VZW"

    const-string v3, "SPR"

    const-string v4, "USC"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :pswitch_6
    goto/16 :goto_0

    :pswitch_7
    goto/16 :goto_0

    :pswitch_8
    const-string v2, "VZW"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->IS_PHONE:Z

    if-eqz v2, :cond_1

    return v1

    :pswitch_9
    sget-boolean v2, Lcom/android/internal/telephony/TelephonyFeatures;->mUsedLegacyIms:Z

    if-nez v2, :cond_1

    return v1

    :pswitch_a
    const-string v2, "VZW"

    const-string v3, "SPR"

    const-string v4, "USC"

    const-string v5, "GCF"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :pswitch_b
    const-string v2, "SPR"

    const-string v3, "USC"

    const-string v4, "XAA"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :pswitch_c
    const-string v2, "VZW"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :pswitch_d
    const-string v2, "SPR"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :pswitch_e
    const-string v2, "SPR"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :pswitch_f
    const-string v2, "SPR"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :pswitch_10
    const-string v2, "VZW"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :pswitch_11
    const-string v2, "SPR"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
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

.method public static getOmcVersion()D
    .locals 5

    sget-wide v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOmcVersion:D

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_COMMON_CONFIG_OMC_VERSION"

    const-string v4, "0.0"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    sput-wide v2, Lcom/android/internal/telephony/TelephonyFeatures;->mOmcVersion:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    sput-wide v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOmcVersion:D

    const-string v0, "NullPointerException"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v2

    sput-wide v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOmcVersion:D

    const-string v0, "NumberFormatException"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    :goto_0
    nop

    :cond_0
    :goto_1
    sget-wide v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOmcVersion:D

    return-wide v0
.end method

.method public static getOperatorType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOperatorType(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType2:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static getPropertyMultiSimBased(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    :goto_1
    const-string v0, "Property is wrong"

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getSimbasedChangeType()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeSimbasedType()V

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getSimbasedChangeTypeDefCode()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeSimbasedType()V

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimbasedChangeType:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getSubOperatorName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSubOperatorName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator2:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public static isChnGlobalModel()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v0

    return v0
.end method

.method public static isChnGlobalModel(I)Z
    .locals 3

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGlobalModel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CHN"

    const-string v1, "HKG"

    const-string v2, "TPE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs isCountrySpecific(I[Ljava/lang/String;)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const/4 v4, 0x1

    if-ne p0, v4, :cond_0

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry2:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    if-eq p0, v4, :cond_1

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static varargs isCountrySpecific([Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isCrossMappingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isGCFMode()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGCFMode(I)Z

    move-result v0

    return v0
.end method

.method public static isGCFMode(I)Z
    .locals 3

    const-string/jumbo v0, "persist.radio.gcfmode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GCF"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isGlobalModel()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGlobalModel(I)Z

    move-result v0

    return v0
.end method

.method public static isGlobalModel(I)Z
    .locals 2

    const-string v0, "GLB"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static varargs isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z
    .locals 6

    const-string v0, "gsm.sim.operator.numeric"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isKorSimInKorDevice()Z
    .locals 4

    const-string v0, "SKT"

    const-string v1, "KTT"

    const-string v2, "LGT"

    const-string v3, "KOO"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "ril.simtype"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method public static varargs isMainOperatorSpecific(I[Ljava/lang/String;)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const/4 v4, 0x1

    if-ne p0, v4, :cond_0

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator2:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    if-eq p0, v4, :cond_1

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static varargs isMainOperatorSpecific([Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs isNetworkCodeSpecific(I[Ljava/lang/String;)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const/4 v4, 0x1

    if-ne p0, v4, :cond_0

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    if-eq p0, v4, :cond_1

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static varargs isNetworkCodeSpecific([Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isNetworkCodeSpecific(I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs isSalesCodeSpecific([Ljava/lang/String;)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isSimHotswapSupported()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->mSimHotswapSupported:Z

    return v0
.end method

.method public static varargs isSubOperatorSpecific(I[Ljava/lang/String;)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    const/4 v4, 0x1

    if-ne p0, v4, :cond_0

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator2:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    if-eq p0, v4, :cond_1

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static varargs isSubOperatorSpecific([Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isSubOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isUsaGlobalModel()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel(I)Z

    move-result v0

    return v0
.end method

.method public static isUsaGlobalModel(I)Z
    .locals 2

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->isGlobalModel(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "USA"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TelephonyFeatures"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TelephonyFeatures"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static needApHandlingStkCmdForCp(ILjava/lang/String;)Z
    .locals 2

    const-string v0, "SetupCall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "BMC"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IUS"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ICE"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MNX"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static needApHandlingStkCmdForCp(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/TelephonyFeatures;->needApHandlingStkCmdForCp(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static needToCheckVolteSubscriber(I)Z
    .locals 3

    const-string v0, "50501"

    const-string v1, "23001"

    const-string v2, "26201"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isIccOperatorNumericSpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static needToRunLteRoaming(I)Z
    .locals 5

    const-string v0, "SKT"

    const-string v1, "KTT"

    const-string v2, "LGT"

    const-string v3, "KOO"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "ril.simtype"

    const-string v2, ""

    invoke-static {p0, v0, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v2, "KTT"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "LGT"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "SKT"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    return v3

    :cond_4
    const-string v2, "KOO"

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    return v3

    :cond_6
    return v1
.end method

.method public static reInitialize()V
    .locals 17

    sget-object v0, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator2:Ljava/lang/String;

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator2:Ljava/lang/String;

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType2:Ljava/lang/String;

    sget-object v8, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry2:Ljava/lang/String;

    sget-object v9, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v10, v10}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v12

    sput-object v12, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    const/4 v12, 0x2

    invoke-static {v10, v12}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    const/4 v13, 0x3

    invoke-static {v10, v13}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v14

    sput-object v14, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    const-string/jumbo v14, "ro.csc.omcnw_code"

    const-string/jumbo v15, "ro.csc.sales_code"

    const-string v13, "NONE"

    invoke-static {v15, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    invoke-static {v11, v10}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator2:Ljava/lang/String;

    invoke-static {v11, v11}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator2:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType2:Ljava/lang/String;

    const/4 v10, 0x3

    invoke-static {v11, v10}, Lcom/android/internal/telephony/TelephonyFeatures;->InitializeNetworkTypeCapability(II)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry2:Ljava/lang/String;

    const-string/jumbo v10, "ro.csc.omcnw_code2"

    const-string/jumbo v11, "ro.csc.sales_code"

    const-string v12, "NONE"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    const-string v10, "----- TelephonyFeatures.reInitialize -----"

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MainOperator(PRIMARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SubOperator(PRIMARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OperatorType(PRIMARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Country(PRIMARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NetworkCode(PRIMARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MainOperator(SECONDARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mMainOperator2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SubOperator(SECONDARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mSubOperator2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OperatorType(SECONDARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mOperatorType2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Country(SECONDARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mCountry2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NetworkCode(SECONDARY): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " -> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/android/internal/telephony/TelephonyFeatures;->mNetworkCode2:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/TelephonyFeatures;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static showVoiceAsDataNetworkType()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->showVoiceAsDataNetworkType(I)Z

    move-result v0

    return v0
.end method

.method public static showVoiceAsDataNetworkType(I)Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_UseRatInfoDuringPlmnSelection"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "HKG"

    const-string v1, "TPE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isCountrySpecific(I[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static supportDualLte()Z
    .locals 4

    sget v0, Lcom/android/internal/telephony/TelephonyFeatures;->PROJECT_SIM_NUM:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v2, "CscFeature_Common_SupportDualIMS"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, ""

    const-string v2, "DSDS_SI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "DSDS_DI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v3

    :cond_3
    :goto_1
    return v1
.end method
