.class public Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;
.super Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;
.source "RegionZonePreferenceController.java"


# static fields
.field private static final PREFERENCE_KEY:Ljava/lang/String; = "region_zone"


# instance fields
.field private mIsClickable:Z

.field private mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "region_zone"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 7

    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_TIMEZONE_SHANGHAI_TO_BEIJING_BY_CHINA:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0x7f1220e2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getExemplarLocation()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f1204c9

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f1204c8

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    iget-object v2, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v5, v4, v3}, Lcom/android/settings/datetime/timezone/SpannableUtil;->getResourcesText(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v1

    return-object v1

    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/Rune;->SUPPORT_TEXT_REQUEST_TIMEZONE_JERUSALEM_TO_TELAVIV_BY_TURKEY:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v0}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getExemplarLocation()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f120c20

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mContext:Landroid/content/Context;

    const v5, 0x7f121a3f

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    iget-object v2, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v5, v4, v3}, Lcom/android/settings/datetime/timezone/SpannableUtil;->getResourcesText(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v5}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getExemplarLocation()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    iget-object v2, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    invoke-virtual {v2}, Lcom/android/settings/datetime/timezone/TimeZoneInfo;->getGmtOffset()Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v4, v3}, Lcom/android/settings/datetime/timezone/SpannableUtil;->getResourcesText(Landroid/content/res/Resources;I[Ljava/lang/Object;)Landroid/text/Spannable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTimeZoneInfo()Lcom/android/settings/datetime/timezone/TimeZoneInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    return-object v0
.end method

.method public isClickable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mIsClickable:Z

    return v0
.end method

.method public setClickable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mIsClickable:Z

    return-void
.end method

.method public setTimeZoneInfo(Lcom/android/settings/datetime/timezone/TimeZoneInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->mTimeZoneInfo:Lcom/android/settings/datetime/timezone/TimeZoneInfo;

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePreferenceController;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    return-void
.end method
