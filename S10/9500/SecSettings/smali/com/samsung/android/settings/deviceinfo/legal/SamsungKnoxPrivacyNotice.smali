.class public Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;
.super Landroid/app/Activity;
.source "SamsungKnoxPrivacyNotice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;
    }
.end annotation


# static fields
.field private static DEVICE_GDPR:I

.field private static DEVICE_GLOBAL:I

.field private static DEVICE_KOREA:I


# instance fields
.field private final GDPRUrl:Ljava/lang/String;

.field private final GlobalUrl:Ljava/lang/String;

.field private final KEY_DEVICE_TYPE:Ljava/lang/String;

.field private final KEY_DOWNLOAD_LANGUAGE:Ljava/lang/String;

.field private final KEY_LATEST_EULA:Ljava/lang/String;

.field private final KEY_LATEST_VERSION:Ljava/lang/String;

.field private final PPInfoUrl:Ljava/lang/String;

.field private final baseUrl:Ljava/lang/String;

.field private final baseUrl_china:Ljava/lang/String;

.field private final baseUrl_dev:Ljava/lang/String;

.field private final baseUrl_dev_china:Ljava/lang/String;

.field private chkException:Z

.field private contentView1:Landroid/widget/TextView;

.field private contentView2:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private defualtGDPR:Ljava/lang/String;

.field private deviceType:I

.field private final eulaUrl:Ljava/lang/String;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private saveVersion:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_GLOBAL:I

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_KOREA:I

    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_GDPR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "https://eula.secb2b.com"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->baseUrl:Ljava/lang/String;

    const-string v0, "https://eula.secb2b.com.cn"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->baseUrl_china:Ljava/lang/String;

    const-string v0, "https://eula-dev.secb2b.com"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->baseUrl_dev:Ljava/lang/String;

    const-string v0, "https://eula-dev.secb2b.com.cn"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->baseUrl_dev_china:Ljava/lang/String;

    const-string v0, "/EULA"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->eulaUrl:Ljava/lang/String;

    const-string v0, "/PPInfo"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->PPInfoUrl:Ljava/lang/String;

    const-string v0, "/GDPR"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->GDPRUrl:Ljava/lang/String;

    const-string v0, "/KLMS"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->GlobalUrl:Ljava/lang/String;

    const-string v0, "LATEST_EULA"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->KEY_LATEST_EULA:Ljava/lang/String;

    const-string v0, "DOWNLOAD_LANGUAGE"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->KEY_DOWNLOAD_LANGUAGE:Ljava/lang/String;

    const-string v0, "DEVICE_TYPE"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->KEY_DEVICE_TYPE:Ljava/lang/String;

    const-string v0, "LATEST_VERSION"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->KEY_LATEST_VERSION:Ljava/lang/String;

    const-string v0, "AT, BE, BG, HR, CY, CZ, DK, EE, FI, FR, DE, GR, HU, IE, IT, LV, LT, LU, MT, NL, PL, PT, RO, SK, SI, ES, SE, GB, IS, LI, NO, CH"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->defualtGDPR:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mSharedPref:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->saveVersion:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView2:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mProgress:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->chkException:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->isProductShipBinary()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Lorg/json/JSONObject;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->isNeedUpdate(Lorg/json/JSONObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    return p1
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_GDPR:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_GLOBAL:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_KOREA:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->saveVersion:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->saveVersion:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic access$702(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->chkException:Z

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->setLatestEULA(Ljava/lang/String;)V

    return-void
.end method

.method private checkVersion(Lorg/json/JSONObject;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v5, "LATEST_VERSION"

    const-string/jumbo v6, "{\"KO\" : \"1\",\"GDPR\" : \"1\",\"GLOBAL\" : \"1\"}"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    sget v5, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_GLOBAL:I

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    const-string v4, "GLOBAL"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    const-string v4, "GLOBAL"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    if-ge v0, v2, :cond_2

    return v6

    :cond_0
    iget v4, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    sget v5, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_KOREA:I

    if-ne v4, v5, :cond_1

    const-string v4, "KO"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    const-string v4, "KO"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    if-ge v0, v2, :cond_2

    return v6

    :cond_1
    iget v4, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    sget v5, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_GDPR:I

    if-ne v4, v5, :cond_2

    const-string v4, "GDPR"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    const-string v4, "GDPR"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    if-ge v0, v2, :cond_2

    return v6

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "KnoxNotice"

    const-string v5, "KnoxNotice Receiver check Update fail"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v1
.end method

.method private convertTitleStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Samsung "

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KnoxNotice"

    const-string v2, "convert Title fail."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object p1
.end method

.method private defaultEula()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView2:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "KOREA"

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    const v1, 0x7f120c82

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->defualtGDPR:Ljava/lang/String;

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120c83

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, ""

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120c78

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DD"

    const-string v4, "25"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MM"

    const-string v4, "05"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "YYYY"

    const-string v4, "2018"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c7a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c7b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c7c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c7d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c7e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c7f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c80

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c81

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120c79

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView2:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    const v3, 0x7f120c76

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView2:Landroid/widget/TextView;

    const v3, 0x7f120c77

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView2:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private isNeedUpdate(Lorg/json/JSONObject;)Z
    .locals 7

    :try_start_0
    const-string v0, "GDPR"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v2, "DEVICE_TYPE"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    iget v4, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    sget v5, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->DEVICE_GDPR:I

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget v4, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    const/4 v5, 0x1

    if-eq v4, v3, :cond_5

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->deviceType:I

    if-ne v4, v3, :cond_2

    return v5

    :cond_2
    const-string/jumbo v3, "version"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->checkVersion(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v5

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v4, "DOWNLOAD_LANGUAGE"

    const-string v6, ""

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_4

    return v5

    :cond_4
    goto :goto_1

    :cond_5
    :goto_0
    return v5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method private isPossibleNetwork()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isProductShipBinary()Z
    .locals 9

    const/4 v0, 0x1

    move v1, v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "android.os.SystemProperties"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "get"

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    const-string v7, "ro.product_ship"

    aput-object v7, v0, v6

    invoke-virtual {v5, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    move v1, v0

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "KnoxNotice"

    const-string v3, "Unknown exception"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "KnoxNotice"

    const-string v3, "IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :goto_1
    return v1
.end method

.method private setLatestEULA(Ljava/lang/String;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView2:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    const-string v0, "<body>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, "<body>"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "</body>"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "</Br>"

    const-string v2, "<br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    const/16 v2, 0x3f

    invoke-static {v0, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KnoxNotice"

    const-string v2, "initEula_GDPR - error parsing html or hrmlString is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->defaultEula()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView2:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public final getEulaFromHtml(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v4

    const/16 v4, 0x2710

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    const/16 v4, 0x4e20

    invoke-virtual {v1, v4}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v0, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x1fa0

    new-array v6, v5, [C

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    invoke-virtual {v0, v6, v7, v5}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v9

    move v8, v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_0

    invoke-virtual {v4, v6, v7, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v5

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_1
    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_2
    const-string v4, "KnoxNotice"

    const-string v5, "getEulaFromHtml() has Exception."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_2
    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_4
    const-string v4, "KnoxNotice"

    const-string v5, "getEulaFromHtml() has SocketTimeoutException."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/net/SocketTimeoutException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_3
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :cond_4
    :goto_2
    return-object v2

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_5
    if-eqz v0, :cond_6

    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_4
    throw v3
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0249

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->setContentView(I)V

    iput-object p0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->chkException:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120c83

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->convertTitleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->setTitle(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a042b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView1:Landroid/widget/TextView;

    const v2, 0x7f0a042c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->contentView2:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    const-string v3, "KnoxNotice"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mSharedPref:Landroid/content/SharedPreferences;

    const v2, 0x7f0a05d8

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mProgress:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.android.knox.intent.action.UPDATE_NOTICE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.SettingsReceiver"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.DELETE_NOTIFICATION"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->setLatestEULA(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->isPossibleNetwork()Z

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v6, "LATEST_EULA"

    invoke-interface {v5, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v5, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;-><init>(Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;)V

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v5, v4}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice$EulaDownloader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->setLatestEULA(Ljava/lang/String;)V

    :cond_0
    :goto_0
    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->setLatestEULA(Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/legal/SamsungKnoxPrivacyNotice;->mProgress:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_1
    return-void
.end method
