.class public Lcom/fusionleo/LeoX/systemui/LeoLunar;
.super Ljava/lang/Object;
.source "LeoLunar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusionleo/LeoX/systemui/LeoLunar$Festival;,
        Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;,
        Lcom/fusionleo/LeoX/systemui/LeoLunar$Constant;
    }
.end annotation


# static fields
.field private static final lunarInfo:[J


# instance fields
.field private EarthlyMonthName:[Ljava/lang/String;

.field private MailBorgMonthName:[Ljava/lang/String;

.field private MailEdecylMonthName:[Ljava/lang/String;

.field private MailyearsMonthName:[Ljava/lang/String;

.field private ancientlunarMonthName:[Ljava/lang/String;

.field private chineseDateFormat:Ljava/text/SimpleDateFormat;

.field private chineseNumber:[Ljava/lang/String;

.field private day:I

.field private leap:Z

.field private lunarMonthName:[Ljava/lang/String;

.field private mCalendar:Landroid/icu/util/Calendar;

.field public mContext:Landroid/content/Context;

.field private month:I

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->lunarInfo:[J

    return-void

    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data
.end method

.method public constructor <init>(Landroid/icu/util/Calendar;Landroid/content/Context;)V
    .locals 16

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p2

    iput-object v2, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v4, p1

    iput-object v4, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->mCalendar:Landroid/icu/util/Calendar;

    sget-object v0, Lcom/fusionleo/LeoX/systemui/LeoLunar$Constant;->CHINESE_NUMBER_CN:[Ljava/lang/String;

    iput-object v0, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->chineseNumber:[Ljava/lang/String;

    sget-object v0, Lcom/fusionleo/LeoX/systemui/LeoLunar$Constant;->LUNAR_MONTH_NAME_CN:[Ljava/lang/String;

    iput-object v0, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->lunarMonthName:[Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/fusionleo/LeoX/systemui/LeoLunar$Constant;->getCncient(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->ancientlunarMonthName:[Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/fusionleo/LeoX/systemui/LeoLunar$Constant;->getTerrestrialbranch(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->EarthlyMonthName:[Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/fusionleo/LeoX/systemui/LeoLunar$Constant;->getMailyears(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->MailyearsMonthName:[Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/fusionleo/LeoX/systemui/LeoLunar$Constant;->getBorg(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->MailBorgMonthName:[Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lcom/fusionleo/LeoX/systemui/LeoLunar$Constant;->getEdecyl(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->MailEdecylMonthName:[Ljava/lang/String;

    const-string v5, "yyyy\u5e74MM\u6708dd\u65e5"

    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v6, 0x0

    :try_start_0
    const-string v0, "1900\u5e741\u670831\u65e5"

    iget-object v7, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x5265c00

    div-long/2addr v7, v9

    long-to-int v0, v7

    add-int/lit8 v7, v0, 0x28

    const/16 v8, 0xe

    const/4 v9, 0x0

    const/16 v10, 0x76c

    :goto_1
    const/16 v11, 0x802

    if-ge v10, v11, :cond_0

    if-lez v0, :cond_0

    invoke-direct {v1, v10}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->yearDays(I)I

    move-result v9

    sub-int/2addr v0, v9

    add-int/lit8 v8, v8, 0xc

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_0
    if-gez v0, :cond_1

    add-int/2addr v0, v9

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v8, v8, -0xc

    :cond_1
    iput v10, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->year:I

    add-int/lit16 v11, v10, -0x748

    invoke-direct {v1, v10}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leapMonth(I)I

    move-result v3

    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leap:Z

    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_2
    const/16 v15, 0xd

    const/4 v12, 0x1

    if-ge v14, v15, :cond_5

    if-lez v0, :cond_5

    if-lez v3, :cond_2

    add-int/lit8 v15, v3, 0x1

    if-ne v14, v15, :cond_2

    iget-boolean v15, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leap:Z

    if-nez v15, :cond_2

    add-int/lit8 v14, v14, -0x1

    iput-boolean v12, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leap:Z

    iget v12, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->year:I

    invoke-direct {v1, v12}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leapDays(I)I

    move-result v12

    move v13, v12

    goto :goto_3

    :cond_2
    iget v12, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->year:I

    invoke-direct {v1, v12, v14}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->monthDays(II)I

    move-result v12

    move v13, v12

    :goto_3
    sub-int/2addr v0, v13

    iget-boolean v12, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leap:Z

    if-eqz v12, :cond_3

    add-int/lit8 v12, v3, 0x1

    if-ne v14, v12, :cond_3

    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leap:Z

    :cond_3
    iget-boolean v12, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leap:Z

    if-nez v12, :cond_4

    add-int/lit8 v8, v8, 0x1

    :cond_4
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x0

    goto :goto_2

    :cond_5
    if-nez v0, :cond_7

    if-lez v3, :cond_7

    add-int/lit8 v15, v3, 0x1

    if-ne v14, v15, :cond_7

    iget-boolean v15, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leap:Z

    if-eqz v15, :cond_6

    const/4 v12, 0x0

    iput-boolean v12, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leap:Z

    goto :goto_4

    :cond_6
    iput-boolean v12, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leap:Z

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v8, v8, -0x1

    :cond_7
    :goto_4
    if-gez v0, :cond_8

    add-int/2addr v0, v13

    add-int/lit8 v14, v14, -0x1

    add-int/lit8 v8, v8, -0x1

    :cond_8
    iput v14, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->month:I

    add-int/lit8 v12, v0, 0x1

    iput v12, v1, Lcom/fusionleo/LeoX/systemui/LeoLunar;->day:I

    return-void
.end method

.method private cyclicalm(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/fusionleo/LeoX/systemui/LeoLunar$Constant;->GAN_CN:[Ljava/lang/String;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/LeoLunar$Constant;->ZHI_CN:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v3, p1, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v3, p1, 0xc

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getChinaCalendarMsg(III[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    if-ne p3, v1, :cond_0

    aget-object v0, p4, v1

    goto :goto_0

    :cond_0
    const/16 v2, 0xf

    if-ne p2, v1, :cond_1

    if-ne p3, v2, :cond_1

    const/4 v1, 0x2

    aget-object v0, p4, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    if-ne p3, v1, :cond_2

    const/4 v1, 0x3

    aget-object v0, p4, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x7

    if-ne p2, v3, :cond_3

    if-ne p3, v3, :cond_3

    const/4 v1, 0x4

    aget-object v0, p4, v1

    goto :goto_0

    :cond_3
    if-ne p2, v3, :cond_4

    if-ne p3, v2, :cond_4

    aget-object v0, p4, v1

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    if-ne p2, v1, :cond_5

    if-ne p3, v2, :cond_5

    const/4 v1, 0x6

    aget-object v0, p4, v1

    goto :goto_0

    :cond_5
    const/16 v2, 0x9

    if-ne p2, v2, :cond_6

    if-ne p3, v2, :cond_6

    aget-object v0, p4, v3

    goto :goto_0

    :cond_6
    const/16 v2, 0xc

    if-ne p2, v2, :cond_7

    if-ne p3, v1, :cond_7

    aget-object v0, p4, v1

    goto :goto_0

    :cond_7
    if-ne p2, v2, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->monthDays(II)I

    move-result v1

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_8

    if-eq p3, v2, :cond_9

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->monthDays(II)I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_a

    if-ne p3, v2, :cond_a

    :cond_9
    const/4 v1, 0x0

    aget-object v0, p4, v1

    :cond_a
    :goto_0
    return-object v0
.end method

.method private leapDays(I)I
    .locals 5

    invoke-direct {p0, p1}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->lunarInfo:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v1, v0, v1

    const-wide/32 v3, 0x10000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    return v0

    :cond_0
    const/16 v0, 0x1d

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private leapMonth(I)I
    .locals 5

    sget-object v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->lunarInfo:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v1, v0, v1

    const-wide/16 v3, 0xf

    and-long/2addr v1, v3

    long-to-int v0, v1

    return v0
.end method

.method private monthDays(II)I
    .locals 5

    sget-object v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->lunarInfo:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v1, v0, v1

    const/high16 v0, 0x10000

    shr-int/2addr v0, p2

    int-to-long v3, v0

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    return v0

    :cond_0
    const/16 v0, 0x1e

    return v0
.end method

.method private yearDays(I)I
    .locals 7

    const/16 v0, 0x15c

    const v1, 0x8000

    :goto_0
    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    sget-object v2, Lcom/fusionleo/LeoX/systemui/LeoLunar;->lunarInfo:[J

    add-int/lit16 v3, p1, -0x76c

    aget-wide v3, v2, v3

    int-to-long v5, v1

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leapDays(I)I

    move-result v2

    add-int/2addr v2, v0

    return v2
.end method


# virtual methods
.method public animalsYear(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/fusionleo/LeoX/systemui/LeoLunar$Constant;->getAnimals(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->year:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v1, v0, v1

    return-object v1
.end method

.method public cyclical()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->year:I

    add-int/lit16 v0, v0, -0x76c

    add-int/lit8 v0, v0, 0x24

    invoke-direct {p0, v0}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->cyclicalm(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getChinaDayString(I)Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/fusionleo/LeoX/systemui/LeoLunar$Constant;->CHINESE_TEN_CN:[Ljava/lang/String;

    rem-int/lit8 v1, p1, 0xa

    if-nez v1, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :cond_0
    rem-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/16 v2, 0x1e

    if-le p1, v2, :cond_1

    const-string v2, ""

    return-object v2

    :cond_1
    const/16 v3, 0xa

    if-ne p1, v3, :cond_2

    const-string v2, "\u521d\u5341"

    return-object v2

    :cond_2
    const/16 v3, 0x14

    if-ne p1, v3, :cond_3

    const-string v2, "\u4e8c\u5341"

    return-object v2

    :cond_3
    if-ne p1, v2, :cond_4

    const-string v2, "\u4e09\u5341"

    return-object v2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, p1, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->chineseNumber:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getLeoMonthChinese(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->lunarMonthName:[Ljava/lang/String;

    iget v2, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->month:I

    sub-int/2addr v2, v0

    aget-object v0, v1, v2

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->MailEdecylMonthName:[Ljava/lang/String;

    iget v2, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->month:I

    sub-int/2addr v2, v0

    aget-object v0, v1, v2

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->MailBorgMonthName:[Ljava/lang/String;

    iget v2, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->month:I

    sub-int/2addr v2, v0

    aget-object v0, v1, v2

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->MailyearsMonthName:[Ljava/lang/String;

    iget v2, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->month:I

    sub-int/2addr v2, v0

    aget-object v0, v1, v2

    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->EarthlyMonthName:[Ljava/lang/String;

    iget v2, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->month:I

    sub-int/2addr v2, v0

    aget-object v0, v1, v2

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->ancientlunarMonthName:[Ljava/lang/String;

    iget v2, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->month:I

    sub-int/2addr v2, v0

    aget-object v0, v1, v2

    return-object v0
.end method

.method public toLeoLunarChineseLunar(ZZII)Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-static {}, Lcom/fusionleo/LeoX/systemui/LeoLunar$Constant;->getLeap()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leap:Z

    const-string v5, ""

    if-eqz v4, :cond_0

    move-object v4, v3

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    const/4 v6, 0x1

    if-ne v1, v6, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->getLeoMonthChinese(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->getLeoMonthChinese(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\u6708"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    iget-object v8, v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->mContext:Landroid/content/Context;

    const-string v9, ""

    const-string v10, "\u5e74"

    iget v11, v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->year:I

    iget v12, v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->month:I

    iget v13, v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->day:I

    new-instance v14, Ljava/lang/String;

    const-string v15, "Q2hpbmVzZV9sdW5hcl9mZXN0aXZhbA=="

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    const/4 v6, 0x0

    invoke-static {v15, v6}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v6

    invoke-direct {v14, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v8, v14}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->getStringLeoArray(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v11, v12, v13, v6}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->getChinaCalendarMsg(III[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v11, Lcom/fusionleo/LeoX/systemui/LeoLunar$Festival;

    iget-object v12, v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->mCalendar:Landroid/icu/util/Calendar;

    invoke-direct {v11, v12}, Lcom/fusionleo/LeoX/systemui/LeoLunar$Festival;-><init>(Landroid/icu/util/Calendar;)V

    invoke-virtual {v11}, Lcom/fusionleo/LeoX/systemui/LeoLunar$Festival;->getFestival()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;

    iget-object v13, v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->mCalendar:Landroid/icu/util/Calendar;

    invoke-direct {v12, v13, v8}, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;-><init>(Landroid/icu/util/Calendar;Landroid/content/Context;)V

    invoke-virtual {v12}, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->getSolartermsMsg()Ljava/lang/String;

    move-result-object v12

    const-string v13, "\uff3d"

    const-string v14, "\uff3b"

    if-eqz p2, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->animalsYear(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->animalsYear(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-nez v2, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->day:I

    invoke-virtual {v0, v13}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v3

    goto/16 :goto_c

    :cond_3
    const/4 v15, 0x1

    if-ne v2, v15, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->day:I

    invoke-virtual {v0, v13}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v3

    goto/16 :goto_c

    :cond_4
    const/4 v15, 0x2

    if-ne v2, v15, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->cyclical()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->day:I

    invoke-virtual {v0, v13}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v3

    goto/16 :goto_c

    :cond_5
    const/4 v15, 0x3

    move-object/from16 v16, v3

    const-string v3, " "

    if-ne v2, v15, :cond_a

    if-eqz p1, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_6

    goto :goto_3

    :cond_6
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_7
    :goto_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_4
    move-object v3, v13

    goto :goto_5

    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->cyclical()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leap:Z

    if-eqz v13, :cond_9

    move-object/from16 v5, v16

    :cond_9
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->day:I

    invoke-virtual {v0, v5}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_c

    :cond_a
    const/4 v15, 0x4

    if-ne v2, v15, :cond_f

    if-eqz p1, :cond_d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_b

    goto :goto_6

    :cond_b
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :cond_c
    :goto_6
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_7
    move-object v3, v13

    goto :goto_8

    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->cyclical()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leap:Z

    if-eqz v13, :cond_e

    move-object/from16 v5, v16

    :cond_e
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->day:I

    invoke-virtual {v0, v5}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_c

    :cond_f
    const/4 v15, 0x5

    if-ne v2, v15, :cond_14

    if-eqz p1, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_10

    goto :goto_9

    :cond_10
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_a

    :cond_11
    :goto_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_a
    move-object v3, v13

    goto :goto_b

    :cond_12
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_b
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->cyclical()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->leap:Z

    if-eqz v13, :cond_13

    move-object/from16 v5, v16

    :cond_13
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/fusionleo/LeoX/systemui/LeoLunar;->day:I

    invoke-virtual {v0, v5}, Lcom/fusionleo/LeoX/systemui/LeoLunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_14
    :goto_c
    return-object v9
.end method
