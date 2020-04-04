.class public Lcom/android/settings/datetime/timezone/RegionPreferenceController;
.super Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;
.source "RegionPreferenceController.java"


# static fields
.field private static final PREFERENCE_KEY:Ljava/lang/String; = "region"


# instance fields
.field private final mLocaleDisplayNames:Landroid/icu/text/LocaleDisplayNames;

.field private mRegionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "region"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mRegionId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mLocaleDisplayNames:Landroid/icu/text/LocaleDisplayNames;

    return-void
.end method


# virtual methods
.method public getRegionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mRegionId:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isDisableIsraelCountry()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->getRegionId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120bfc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_REGION_HONGKONG_TO_CHINA:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->getRegionId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_REGION_TAIWAN_TO_CHINA:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->getRegionId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_REGION_MACAU_TO_CHINA:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->getRegionId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mLocaleDisplayNames:Landroid/icu/text/LocaleDisplayNames;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->getRegionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/datetime/DateTimeUtils;->addChinaToRegionalName(Landroid/icu/text/LocaleDisplayNames;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mLocaleDisplayNames:Landroid/icu/text/LocaleDisplayNames;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mRegionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRegionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionPreferenceController;->mRegionId:Ljava/lang/String;

    return-void
.end method
