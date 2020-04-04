.class public Lcom/android/settingslib/utils/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public static formatRelativeTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;
    .locals 8

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    if-eqz p3, :cond_0

    const/16 v1, 0x78

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settingslib/R$string;->time_unit_just_now:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v1, 0x1c20

    if-ge v0, v1, :cond_1

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->MINUTES:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    add-int/lit8 v2, v0, 0x1e

    div-int/lit8 v2, v2, 0x3c

    :goto_0
    goto :goto_1

    :cond_1
    const v1, 0x2a300

    if-ge v0, v1, :cond_2

    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->HOURS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    add-int/lit16 v2, v0, 0x708

    div-int/lit16 v2, v2, 0xe10

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;->DAYS:Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    const v2, 0xa8c0

    add-int/2addr v2, v0

    const v3, 0x15180

    div-int/2addr v2, v3

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    nop

    invoke-static {v3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    sget-object v7, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_MIDDLE_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    invoke-static {v4, v5, v6, v7}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    move-result-object v4

    int-to-double v5, v2

    sget-object v7, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    invoke-virtual {v4, v5, v6, v7, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->format(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
