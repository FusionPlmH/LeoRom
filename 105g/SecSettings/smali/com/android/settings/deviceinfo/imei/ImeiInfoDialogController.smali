.class public Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;
.super Ljava/lang/Object;
.source "ImeiInfoDialogController.java"


# static fields
.field static final ID_CDMA_SETTINGS:I = 0x7f0a0162

.field static final ID_GSM_SETTINGS:I = 0x7f0a0359

.field static final ID_IMEI_SV_VALUE:I = 0x7f0a03f0

.field static final ID_IMEI_VALUE:I = 0x7f0a03f2

.field static final ID_MEID_NUMBER_VALUE:I = 0x7f0a04be

.field static final ID_MIN_NUMBER_VALUE:I = 0x7f0a04d9

.field static final ID_PRL_VERSION_VALUE:I = 0x7f0a0606


# instance fields
.field private final mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

.field private final mSlotId:I

.field private final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    iput p2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0, v0, p2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getSubscriptionInfo(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-void
.end method

.method private getSubscriptionInfo(Landroid/content/Context;I)Landroid/telephony/SubscriptionInfo;
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    return-object v1
.end method

.method private static getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/TtsSpan$DigitsBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/style/TtsSpan$DigitsBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$DigitsBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method private updateDialogForCdmaPhone()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getMeid()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0a04be

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const v3, 0x7f0a04d9

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    const v1, 0x7f05000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v2, 0x7f0a04d8

    const v3, 0x7f121942

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v2, 0x7f0a0606

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->isCdmaLteEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v2, 0x7f0a03f2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v2, 0x7f0a03f0

    iget-object v3, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v4, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v2, 0x7f0a0359

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->removeViewFromScreen(I)V

    :goto_1
    return-void
.end method

.method private updateDialogForGsmPhone()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0a03f2

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getTextAsDigits(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x7f0a03f0

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    const v1, 0x7f0a0162

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->removeViewFromScreen(I)V

    return-void
.end method


# virtual methods
.method getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMeid()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isCdmaLteEnabled()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public populateImeiInfo()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->updateDialogForCdmaPhone()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->updateDialogForGsmPhone()V

    :goto_0
    return-void
.end method
