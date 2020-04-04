.class Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;
.super Ljava/lang/Object;
.source "LeoLunar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusionleo/LeoX/systemui/LeoLunar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SolarTermsUtil"
.end annotation


# static fields
.field private static baseChineseDate:I

.field private static baseChineseMonth:I

.field private static baseChineseYear:I

.field private static baseDate:I

.field private static baseIndex:I

.field private static baseMonth:I

.field private static baseYear:I

.field private static bigLeapMonthYears:[I

.field private static chineseMonths:[C

.field private static daysInGregorianMonth:[C

.field private static principleTermMap:[[C

.field private static principleTermYear:[[C

.field private static sectionalTermMap:[[C

.field private static sectionalTermYear:[[C


# instance fields
.field private chineseDate:I

.field private chineseMonth:I

.field private chineseYear:I

.field private gregorianDate:I

.field private gregorianMonth:I

.field private gregorianYear:I

.field private principleTerm:I

.field private principleTermNames:[Ljava/lang/String;

.field private sectionalTerm:I

.field private sectionalTermNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0x76d

    sput v0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseYear:I

    const/4 v0, 0x1

    sput v0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseMonth:I

    sput v0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseDate:I

    const/4 v1, 0x0

    sput v1, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseIndex:I

    const/16 v2, 0x11f5

    sput v2, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseChineseYear:I

    const/16 v2, 0xb

    sput v2, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseChineseMonth:I

    sput v2, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseChineseDate:I

    const/16 v3, 0xc

    new-array v4, v3, [C

    fill-array-data v4, :array_0

    sput-object v4, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->daysInGregorianMonth:[C

    new-array v4, v3, [[C

    const/16 v5, 0x1c

    new-array v6, v5, [C

    fill-array-data v6, :array_1

    aput-object v6, v4, v1

    new-array v6, v5, [C

    fill-array-data v6, :array_2

    aput-object v6, v4, v0

    const/16 v6, 0x1d

    new-array v7, v6, [C

    fill-array-data v7, :array_3

    const/4 v8, 0x2

    aput-object v7, v4, v8

    new-array v7, v6, [C

    fill-array-data v7, :array_4

    const/4 v9, 0x3

    aput-object v7, v4, v9

    new-array v7, v6, [C

    fill-array-data v7, :array_5

    const/4 v10, 0x4

    aput-object v7, v4, v10

    const/16 v7, 0x21

    new-array v7, v7, [C

    fill-array-data v7, :array_6

    const/4 v11, 0x5

    aput-object v7, v4, v11

    new-array v7, v6, [C

    fill-array-data v7, :array_7

    const/4 v12, 0x6

    aput-object v7, v4, v12

    const/16 v7, 0x21

    new-array v7, v7, [C

    fill-array-data v7, :array_8

    const/4 v13, 0x7

    aput-object v7, v4, v13

    new-array v7, v6, [C

    fill-array-data v7, :array_9

    const/16 v14, 0x8

    aput-object v7, v4, v14

    new-array v7, v6, [C

    fill-array-data v7, :array_a

    const/16 v15, 0x9

    aput-object v7, v4, v15

    new-array v7, v6, [C

    fill-array-data v7, :array_b

    const/16 v16, 0xa

    aput-object v7, v4, v16

    new-array v7, v6, [C

    fill-array-data v7, :array_c

    aput-object v7, v4, v2

    sput-object v4, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->sectionalTermMap:[[C

    new-array v4, v3, [[C

    new-array v7, v15, [C

    fill-array-data v7, :array_d

    aput-object v7, v4, v1

    new-array v7, v15, [C

    fill-array-data v7, :array_e

    aput-object v7, v4, v0

    new-array v7, v15, [C

    fill-array-data v7, :array_f

    aput-object v7, v4, v8

    new-array v7, v15, [C

    fill-array-data v7, :array_10

    aput-object v7, v4, v9

    new-array v7, v15, [C

    fill-array-data v7, :array_11

    aput-object v7, v4, v10

    new-array v7, v15, [C

    fill-array-data v7, :array_12

    aput-object v7, v4, v11

    new-array v7, v15, [C

    fill-array-data v7, :array_13

    aput-object v7, v4, v12

    new-array v7, v15, [C

    fill-array-data v7, :array_14

    aput-object v7, v4, v13

    new-array v7, v15, [C

    fill-array-data v7, :array_15

    aput-object v7, v4, v14

    new-array v7, v15, [C

    fill-array-data v7, :array_16

    aput-object v7, v4, v15

    new-array v7, v15, [C

    fill-array-data v7, :array_17

    aput-object v7, v4, v16

    new-array v7, v15, [C

    fill-array-data v7, :array_18

    aput-object v7, v4, v2

    sput-object v4, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->sectionalTermYear:[[C

    new-array v4, v3, [[C

    new-array v7, v5, [C

    fill-array-data v7, :array_19

    aput-object v7, v4, v1

    new-array v5, v5, [C

    fill-array-data v5, :array_1a

    aput-object v5, v4, v0

    new-array v5, v6, [C

    fill-array-data v5, :array_1b

    aput-object v5, v4, v8

    new-array v5, v6, [C

    fill-array-data v5, :array_1c

    aput-object v5, v4, v9

    new-array v5, v6, [C

    fill-array-data v5, :array_1d

    aput-object v5, v4, v10

    new-array v5, v6, [C

    fill-array-data v5, :array_1e

    aput-object v5, v4, v11

    new-array v5, v6, [C

    fill-array-data v5, :array_1f

    aput-object v5, v4, v12

    new-array v5, v6, [C

    fill-array-data v5, :array_20

    aput-object v5, v4, v13

    new-array v5, v6, [C

    fill-array-data v5, :array_21

    aput-object v5, v4, v14

    new-array v5, v6, [C

    fill-array-data v5, :array_22

    aput-object v5, v4, v15

    new-array v5, v6, [C

    fill-array-data v5, :array_23

    aput-object v5, v4, v16

    new-array v5, v6, [C

    fill-array-data v5, :array_24

    aput-object v5, v4, v2

    sput-object v4, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->principleTermMap:[[C

    new-array v3, v3, [[C

    new-array v4, v13, [C

    fill-array-data v4, :array_25

    aput-object v4, v3, v1

    new-array v1, v13, [C

    fill-array-data v1, :array_26

    aput-object v1, v3, v0

    new-array v0, v14, [C

    fill-array-data v0, :array_27

    aput-object v0, v3, v8

    new-array v0, v14, [C

    fill-array-data v0, :array_28

    aput-object v0, v3, v9

    new-array v0, v14, [C

    fill-array-data v0, :array_29

    aput-object v0, v3, v10

    new-array v0, v14, [C

    fill-array-data v0, :array_2a

    aput-object v0, v3, v11

    new-array v0, v14, [C

    fill-array-data v0, :array_2b

    aput-object v0, v3, v12

    new-array v0, v14, [C

    fill-array-data v0, :array_2c

    aput-object v0, v3, v13

    new-array v0, v14, [C

    fill-array-data v0, :array_2d

    aput-object v0, v3, v14

    new-array v0, v14, [C

    fill-array-data v0, :array_2e

    aput-object v0, v3, v15

    new-array v0, v14, [C

    fill-array-data v0, :array_2f

    aput-object v0, v3, v16

    new-array v0, v14, [C

    fill-array-data v0, :array_30

    aput-object v0, v3, v2

    sput-object v3, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->principleTermYear:[[C

    const/16 v0, 0x192

    new-array v0, v0, [C

    fill-array-data v0, :array_31

    sput-object v0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseMonths:[C

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_32

    sput-object v0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->bigLeapMonthYears:[I

    return-void

    :array_0
    .array-data 2
        0x1fs
        0x1cs
        0x1fs
        0x1es
        0x1fs
        0x1es
        0x1fs
        0x1fs
        0x1es
        0x1fs
        0x1es
        0x1fs
    .end array-data

    :array_1
    .array-data 2
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
    .end array-data

    :array_2
    .array-data 2
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x4s
        0x4s
        0x5s
        0x5s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x4s
        0x3s
        0x4s
        0x4s
        0x4s
        0x3s
        0x3s
        0x4s
        0x4s
        0x3s
        0x3s
        0x3s
    .end array-data

    :array_3
    .array-data 2
        0x6s
        0x6s
        0x6s
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x5s
    .end array-data

    nop

    :array_4
    .array-data 2
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x4s
        0x4s
        0x5s
        0x5s
        0x4s
        0x4s
        0x4s
        0x5s
        0x4s
        0x4s
        0x4s
        0x4s
        0x5s
    .end array-data

    nop

    :array_5
    .array-data 2
        0x6s
        0x6s
        0x6s
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x5s
    .end array-data

    nop

    :array_6
    .array-data 2
        0x6s
        0x6s
        0x7s
        0x7s
        0x6s
        0x6s
        0x6s
        0x7s
        0x6s
        0x6s
        0x6s
        0x6s
        0x5s
        0x6s
        0x6s
        0x6s
        0x5s
        0x5s
        0x6s
        0x6s
        0x5s
        0x5s
        0x5s
        0x6s
        0x5s
        0x5s
        0x5s
        0x5s
        0x4s
        0x5s
        0x5s
        0x5s
        0x5s
    .end array-data

    nop

    :array_7
    .array-data 2
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x7s
        0x7s
        0x6s
        0x6s
        0x6s
        0x7s
        0x7s
    .end array-data

    nop

    :array_8
    .array-data 2
        0x8s
        0x8s
        0x8s
        0x9s
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x7s
        0x7s
        0x7s
    .end array-data

    nop

    :array_9
    .array-data 2
        0x8s
        0x8s
        0x8s
        0x9s
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x7s
    .end array-data

    nop

    :array_a
    .array-data 2
        0x9s
        0x9s
        0x9s
        0x9s
        0x8s
        0x9s
        0x9s
        0x9s
        0x8s
        0x8s
        0x9s
        0x9s
        0x8s
        0x8s
        0x8s
        0x9s
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x8s
    .end array-data

    nop

    :array_b
    .array-data 2
        0x8s
        0x8s
        0x8s
        0x8s
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x7s
        0x7s
        0x7s
    .end array-data

    nop

    :array_c
    .array-data 2
        0x7s
        0x8s
        0x8s
        0x8s
        0x7s
        0x7s
        0x8s
        0x8s
        0x7s
        0x7s
        0x7s
        0x8s
        0x7s
        0x7s
        0x7s
        0x7s
        0x6s
        0x7s
        0x7s
        0x7s
        0x6s
        0x6s
        0x7s
        0x7s
        0x6s
        0x6s
        0x6s
        0x7s
        0x7s
    .end array-data

    nop

    :array_d
    .array-data 2
        0xds
        0x31s
        0x55s
        0x75s
        0x95s
        0xb9s
        0xc9s
        0xfas
        0xfas
    .end array-data

    nop

    :array_e
    .array-data 2
        0xds
        0x2ds
        0x51s
        0x75s
        0x95s
        0xb9s
        0xc9s
        0xfas
        0xfas
    .end array-data

    nop

    :array_f
    .array-data 2
        0xds
        0x30s
        0x54s
        0x70s
        0x94s
        0xb8s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_10
    .array-data 2
        0xds
        0x2ds
        0x4cs
        0x6cs
        0x8cs
        0xacs
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_11
    .array-data 2
        0xds
        0x2cs
        0x48s
        0x68s
        0x84s
        0xa8s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_12
    .array-data 2
        0x5s
        0x21s
        0x44s
        0x60s
        0x7cs
        0x98s
        0xbcs
        0xc8s
        0xc9s
    .end array-data

    nop

    :array_13
    .array-data 2
        0x1ds
        0x39s
        0x55s
        0x78s
        0x94s
        0xb0s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_14
    .array-data 2
        0xds
        0x30s
        0x4cs
        0x68s
        0x84s
        0xa8s
        0xc4s
        0xc8s
        0xc9s
    .end array-data

    nop

    :array_15
    .array-data 2
        0x19s
        0x3cs
        0x58s
        0x78s
        0x94s
        0xb8s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_16
    .array-data 2
        0x10s
        0x2cs
        0x4cs
        0x6cs
        0x90s
        0xacs
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_17
    .array-data 2
        0x1cs
        0x3cs
        0x5cs
        0x7cs
        0xa0s
        0xc0s
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_18
    .array-data 2
        0x11s
        0x35s
        0x55s
        0x7cs
        0x9cs
        0xbcs
        0xc8s
        0xc9s
        0xfas
    .end array-data

    nop

    :array_19
    .array-data 2
        0x15s
        0x15s
        0x15s
        0x15s
        0x15s
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x14s
        0x14s
        0x14s
        0x14s
        0x14s
        0x13s
        0x14s
        0x14s
        0x14s
        0x13s
        0x13s
        0x14s
    .end array-data

    :array_1a
    .array-data 2
        0x14s
        0x13s
        0x13s
        0x14s
        0x14s
        0x13s
        0x13s
        0x13s
        0x13s
        0x13s
        0x13s
        0x13s
        0x13s
        0x12s
        0x13s
        0x13s
        0x13s
        0x12s
        0x12s
        0x13s
        0x13s
        0x12s
        0x12s
        0x12s
        0x12s
        0x12s
        0x12s
        0x12s
    .end array-data

    :array_1b
    .array-data 2
        0x15s
        0x15s
        0x15s
        0x16s
        0x15s
        0x15s
        0x15s
        0x15s
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x15s
        0x14s
        0x14s
        0x14s
        0x14s
        0x13s
        0x14s
        0x14s
        0x14s
        0x14s
    .end array-data

    nop

    :array_1c
    .array-data 2
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x15s
        0x14s
        0x14s
        0x14s
        0x14s
        0x13s
        0x14s
        0x14s
        0x14s
        0x13s
        0x13s
        0x14s
        0x14s
        0x13s
        0x13s
        0x13s
        0x14s
        0x14s
    .end array-data

    nop

    :array_1d
    .array-data 2
        0x15s
        0x16s
        0x16s
        0x16s
        0x15s
        0x15s
        0x16s
        0x16s
        0x15s
        0x15s
        0x15s
        0x16s
        0x15s
        0x15s
        0x15s
        0x15s
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x14s
        0x14s
        0x14s
        0x15s
        0x15s
    .end array-data

    nop

    :array_1e
    .array-data 2
        0x16s
        0x16s
        0x16s
        0x16s
        0x15s
        0x16s
        0x16s
        0x16s
        0x15s
        0x15s
        0x16s
        0x16s
        0x15s
        0x15s
        0x15s
        0x16s
        0x15s
        0x15s
        0x15s
        0x15s
        0x14s
        0x15s
        0x15s
        0x15s
        0x14s
        0x14s
        0x15s
        0x15s
        0x15s
    .end array-data

    nop

    :array_1f
    .array-data 2
        0x17s
        0x17s
        0x18s
        0x18s
        0x17s
        0x17s
        0x17s
        0x18s
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x16s
        0x16s
        0x16s
        0x16s
        0x17s
    .end array-data

    nop

    :array_20
    .array-data 2
        0x17s
        0x18s
        0x18s
        0x18s
        0x17s
        0x17s
        0x18s
        0x18s
        0x17s
        0x17s
        0x17s
        0x18s
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x17s
    .end array-data

    nop

    :array_21
    .array-data 2
        0x17s
        0x18s
        0x18s
        0x18s
        0x17s
        0x17s
        0x18s
        0x18s
        0x17s
        0x17s
        0x17s
        0x18s
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x17s
    .end array-data

    nop

    :array_22
    .array-data 2
        0x18s
        0x18s
        0x18s
        0x18s
        0x17s
        0x18s
        0x18s
        0x18s
        0x17s
        0x17s
        0x18s
        0x18s
        0x17s
        0x17s
        0x17s
        0x18s
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x17s
    .end array-data

    nop

    :array_23
    .array-data 2
        0x17s
        0x17s
        0x17s
        0x17s
        0x16s
        0x17s
        0x17s
        0x17s
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x16s
        0x16s
        0x16s
        0x16s
        0x15s
        0x16s
        0x16s
        0x16s
        0x15s
        0x15s
        0x16s
        0x16s
        0x16s
    .end array-data

    nop

    :array_24
    .array-data 2
        0x16s
        0x16s
        0x17s
        0x17s
        0x16s
        0x16s
        0x16s
        0x17s
        0x16s
        0x16s
        0x16s
        0x16s
        0x15s
        0x16s
        0x16s
        0x16s
        0x15s
        0x15s
        0x16s
        0x16s
        0x15s
        0x15s
        0x15s
        0x16s
        0x15s
        0x15s
        0x15s
        0x15s
        0x16s
    .end array-data

    nop

    :array_25
    .array-data 2
        0xds
        0x2ds
        0x51s
        0x71s
        0x95s
        0xb9s
        0xc9s
    .end array-data

    nop

    :array_26
    .array-data 2
        0x15s
        0x39s
        0x5ds
        0x7ds
        0xa1s
        0xc1s
        0xc9s
    .end array-data

    nop

    :array_27
    .array-data 2
        0x15s
        0x38s
        0x58s
        0x78s
        0x98s
        0xbcs
        0xc8s
        0xc9s
    .end array-data

    :array_28
    .array-data 2
        0x15s
        0x31s
        0x51s
        0x74s
        0x90s
        0xb0s
        0xc8s
        0xc9s
    .end array-data

    :array_29
    .array-data 2
        0x11s
        0x31s
        0x4ds
        0x70s
        0x8cs
        0xa8s
        0xc8s
        0xc9s
    .end array-data

    :array_2a
    .array-data 2
        0x1cs
        0x3cs
        0x58s
        0x74s
        0x94s
        0xb4s
        0xc8s
        0xc9s
    .end array-data

    :array_2b
    .array-data 2
        0x19s
        0x35s
        0x54s
        0x70s
        0x90s
        0xacs
        0xc8s
        0xc9s
    .end array-data

    :array_2c
    .array-data 2
        0x1ds
        0x39s
        0x59s
        0x78s
        0x94s
        0xb4s
        0xc8s
        0xc9s
    .end array-data

    :array_2d
    .array-data 2
        0x11s
        0x2ds
        0x49s
        0x6cs
        0x8cs
        0xa8s
        0xc8s
        0xc9s
    .end array-data

    :array_2e
    .array-data 2
        0x1cs
        0x3cs
        0x5cs
        0x7cs
        0xa0s
        0xc0s
        0xc8s
        0xc9s
    .end array-data

    :array_2f
    .array-data 2
        0x10s
        0x2cs
        0x50s
        0x70s
        0x94s
        0xb4s
        0xc8s
        0xc9s
    .end array-data

    :array_30
    .array-data 2
        0x11s
        0x35s
        0x58s
        0x78s
        0x9cs
        0xbcs
        0xc8s
        0xc9s
    .end array-data

    :array_31
    .array-data 2
        0x0s
        0x4s
        0xads
        0x8s
        0x5as
        0x1s
        0xd5s
        0x54s
        0xb4s
        0x9s
        0x64s
        0x5s
        0x59s
        0x45s
        0x95s
        0xas
        0xa6s
        0x4s
        0x55s
        0x24s
        0xads
        0x8s
        0x5as
        0x62s
        0xdas
        0x4s
        0xb4s
        0x5s
        0xb4s
        0x55s
        0x52s
        0xds
        0x94s
        0xas
        0x4as
        0x2as
        0x56s
        0x2s
        0x6ds
        0x71s
        0x6ds
        0x1s
        0xdas
        0x2s
        0xd2s
        0x52s
        0xa9s
        0x5s
        0x49s
        0xds
        0x2as
        0x45s
        0x2bs
        0x9s
        0x56s
        0x1s
        0xb5s
        0x20s
        0x6ds
        0x1s
        0x59s
        0x69s
        0xd4s
        0xas
        0xa8s
        0x5s
        0xa9s
        0x56s
        0xa5s
        0x4s
        0x2bs
        0x9s
        0x9es
        0x38s
        0xb6s
        0x8s
        0xecs
        0x74s
        0x6cs
        0x5s
        0xd4s
        0xas
        0xe4s
        0x6as
        0x52s
        0x5s
        0x95s
        0xas
        0x5as
        0x42s
        0x5bs
        0x4s
        0xb6s
        0x4s
        0xb4s
        0x22s
        0x6as
        0x5s
        0x52s
        0x75s
        0xc9s
        0xas
        0x52s
        0x5s
        0x35s
        0x55s
        0x4ds
        0xas
        0x5as
        0x2s
        0x5ds
        0x31s
        0xb5s
        0x2s
        0x6as
        0x8as
        0x68s
        0x5s
        0xa9s
        0xas
        0x8as
        0x6as
        0x2as
        0x5s
        0x2ds
        0x9s
        0xaas
        0x48s
        0x5as
        0x1s
        0xb5s
        0x9s
        0xb0s
        0x39s
        0x64s
        0x5s
        0x25s
        0x75s
        0x95s
        0xas
        0x96s
        0x4s
        0x4ds
        0x54s
        0xads
        0x4s
        0xdas
        0x4s
        0xd4s
        0x44s
        0xb4s
        0x5s
        0x54s
        0x85s
        0x52s
        0xds
        0x92s
        0xas
        0x56s
        0x6as
        0x56s
        0x2s
        0x6ds
        0x2s
        0x6as
        0x41s
        0xdas
        0x2s
        0xb2s
        0xa1s
        0xa9s
        0x5s
        0x49s
        0xds
        0xas
        0x6ds
        0x2as
        0x9s
        0x56s
        0x1s
        0xads
        0x50s
        0x6ds
        0x1s
        0xd9s
        0x2s
        0xd1s
        0x3as
        0xa8s
        0x5s
        0x29s
        0x85s
        0xa5s
        0xcs
        0x2as
        0x9s
        0x96s
        0x54s
        0xb6s
        0x8s
        0x6cs
        0x9s
        0x64s
        0x45s
        0xd4s
        0xas
        0xa4s
        0x5s
        0x51s
        0x25s
        0x95s
        0xas
        0x2as
        0x72s
        0x5bs
        0x4s
        0xb6s
        0x4s
        0xacs
        0x52s
        0x6as
        0x5s
        0xd2s
        0xas
        0xa2s
        0x4as
        0x4as
        0x5s
        0x55s
        0x94s
        0x2ds
        0xas
        0x5as
        0x2s
        0x75s
        0x61s
        0xb5s
        0x2s
        0x6as
        0x3s
        0x61s
        0x45s
        0xa9s
        0xas
        0x4as
        0x5s
        0x25s
        0x25s
        0x2ds
        0x9s
        0x9as
        0x68s
        0xdas
        0x8s
        0xb4s
        0x9s
        0xa8s
        0x59s
        0x54s
        0x3s
        0xa5s
        0xas
        0x91s
        0x3as
        0x96s
        0x4s
        0xads
        0xb0s
        0xads
        0x4s
        0xdas
        0x4s
        0xf4s
        0x62s
        0xb4s
        0x5s
        0x54s
        0xbs
        0x44s
        0x5ds
        0x52s
        0xas
        0x95s
        0x4s
        0x55s
        0x22s
        0x6ds
        0x2s
        0x5as
        0x71s
        0xdas
        0x2s
        0xaas
        0x5s
        0xb2s
        0x55s
        0x49s
        0xbs
        0x4as
        0xas
        0x2ds
        0x39s
        0x36s
        0x1s
        0x6ds
        0x80s
        0x6ds
        0x1s
        0xd9s
        0x2s
        0xe9s
        0x6as
        0xa8s
        0x5s
        0x29s
        0xbs
        0x9as
        0x4cs
        0xaas
        0x8s
        0xb6s
        0x8s
        0xb4s
        0x38s
        0x6cs
        0x9s
        0x54s
        0x75s
        0xd4s
        0xas
        0xa4s
        0x5s
        0x45s
        0x55s
        0x95s
        0xas
        0x9as
        0x4s
        0x55s
        0x44s
        0xb5s
        0x4s
        0x6as
        0x82s
        0x6as
        0x5s
        0xd2s
        0xas
        0x92s
        0x6as
        0x4as
        0x5s
        0x55s
        0xas
        0x2as
        0x4as
        0x5as
        0x2s
        0xb5s
        0x2s
        0xb2s
        0x31s
        0x69s
        0x3s
        0x31s
        0x73s
        0xa9s
        0xas
        0x4as
        0x5s
        0x2ds
        0x55s
        0x2ds
        0x9s
        0x5as
        0x1s
        0xd5s
        0x48s
        0xb4s
        0x9s
        0x68s
        0x89s
        0x54s
        0xbs
        0xa4s
        0xas
        0xa5s
        0x6as
        0x95s
        0x4s
        0xads
        0x8s
        0x6as
        0x44s
        0xdas
        0x4s
        0x74s
        0x5s
        0xb0s
        0x25s
        0x54s
        0x3s
    .end array-data

    :array_32
    .array-data 4
        0x6
        0xe
        0x13
        0x19
        0x21
        0x24
        0x26
        0x29
        0x2c
        0x34
        0x37
        0x4f
        0x75
        0x88
        0x93
        0x96
        0x9b
        0x9e
        0xb9
        0xc1
    .end array-data
.end method

.method public constructor <init>(Landroid/icu/util/Calendar;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/fusionleo/LeoX/systemui/LeoLunar$Constant;->get12solar(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->principleTermNames:[Ljava/lang/String;

    invoke-static {p2}, Lcom/fusionleo/LeoX/systemui/LeoLunar$Constant;->get24solar(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->sectionalTermNames:[Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianYear:I

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianMonth:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianDate:I

    invoke-virtual {p0}, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->computeChineseFields()I

    invoke-virtual {p0}, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->computeSolarTerms()I

    return-void
.end method

.method public static daysInChineseMonth(II)I
    .locals 7

    sget v0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseChineseYear:I

    sub-int v0, p0, v0

    sget v1, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseIndex:I

    add-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x1e

    const/4 v4, 0x1

    if-gt v4, p1, :cond_0

    const/16 v5, 0x8

    if-gt p1, v5, :cond_0

    sget-object v5, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseMonths:[C

    mul-int/lit8 v6, v0, 0x2

    aget-char v1, v5, v6

    add-int/lit8 v2, p1, -0x1

    shr-int v5, v1, v2

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_4

    const/16 v3, 0x1d

    goto :goto_1

    :cond_0
    const/16 v5, 0x9

    if-gt v5, p1, :cond_1

    const/16 v5, 0xc

    if-gt p1, v5, :cond_1

    sget-object v5, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseMonths:[C

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v4

    aget-char v1, v5, v6

    add-int/lit8 v2, p1, -0x9

    shr-int v5, v1, v2

    and-int/2addr v5, v4

    if-ne v5, v4, :cond_4

    const/16 v3, 0x1d

    goto :goto_1

    :cond_1
    sget-object v5, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseMonths:[C

    mul-int/lit8 v6, v0, 0x2

    add-int/2addr v6, v4

    aget-char v1, v5, v6

    shr-int/lit8 v4, v1, 0x4

    and-int/lit8 v1, v4, 0xf

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-eq v1, v4, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/16 v3, 0x1d

    const/4 v4, 0x0

    :goto_0
    sget-object v5, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->bigLeapMonthYears:[I

    array-length v6, v5

    if-ge v4, v6, :cond_4

    aget v5, v5, v4

    if-ne v5, v0, :cond_3

    const/16 v3, 0x1e

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v3
.end method

.method public static daysInGregorianMonth(II)I
    .locals 2

    sget-object v0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->daysInGregorianMonth:[C

    add-int/lit8 v1, p1, -0x1

    aget-char v0, v0, v1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    invoke-static {p0}, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->isGregorianLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public static isGregorianLeapYear(I)Z
    .locals 2

    const/4 v0, 0x0

    rem-int/lit8 v1, p0, 0x4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    rem-int/lit8 v1, p0, 0x64

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    rem-int/lit16 v1, p0, 0x190

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static nextChineseMonth(II)I
    .locals 4

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lez p1, :cond_0

    sget v1, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseChineseYear:I

    sub-int v1, p0, v1

    sget v2, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseIndex:I

    add-int/2addr v1, v2

    sget-object v2, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseMonths:[C

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v2, v2, v3

    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v2, v3, 0xf

    if-ne v2, p1, :cond_0

    neg-int v0, p1

    :cond_0
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static principleTerm(II)I
    .locals 5

    const/16 v0, 0x76d

    if-lt p0, v0, :cond_4

    const/16 v0, 0x834

    if-le p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    sget v1, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseYear:I

    sub-int v1, p0, v1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    sget-object v2, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->principleTermYear:[[C

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    aget-char v2, v2, v0

    if-lt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->principleTermMap:[[C

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    mul-int/lit8 v3, v0, 0x4

    rem-int/lit8 v4, v1, 0x4

    add-int/2addr v3, v4

    aget-char v2, v2, v3

    const/16 v3, 0xab

    if-ne v1, v3, :cond_2

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    const/16 v2, 0x15

    :cond_2
    const/16 v3, 0xb5

    if-ne v1, v3, :cond_3

    const/4 v3, 0x5

    if-ne p1, v3, :cond_3

    const/16 v2, 0x15

    :cond_3
    return v2

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static sectionalTerm(II)I
    .locals 5

    const/16 v0, 0x76d

    if-lt p0, v0, :cond_5

    const/16 v0, 0x834

    if-le p0, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    sget v1, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseYear:I

    sub-int v1, p0, v1

    add-int/lit8 v1, v1, 0x1

    :goto_0
    sget-object v2, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->sectionalTermYear:[[C

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    aget-char v2, v2, v0

    if-lt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->sectionalTermMap:[[C

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    mul-int/lit8 v3, v0, 0x4

    rem-int/lit8 v4, v1, 0x4

    add-int/2addr v3, v4

    aget-char v2, v2, v3

    const/16 v3, 0x79

    const/4 v4, 0x4

    if-ne v1, v3, :cond_2

    if-ne p1, v4, :cond_2

    const/4 v2, 0x5

    :cond_2
    const/16 v3, 0x84

    if-ne v1, v3, :cond_3

    if-ne p1, v4, :cond_3

    const/4 v2, 0x5

    :cond_3
    const/16 v3, 0xc2

    if-ne v1, v3, :cond_4

    const/4 v3, 0x6

    if-ne p1, v3, :cond_4

    const/4 v2, 0x6

    :cond_4
    return v2

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public computeChineseFields()I
    .locals 9

    iget v0, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianYear:I

    const/4 v1, 0x1

    const/16 v2, 0x76d

    if-lt v0, v2, :cond_7

    const/16 v2, 0x834

    if-le v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    sget v2, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseYear:I

    sget v3, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseMonth:I

    sget v4, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseDate:I

    sget v5, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseChineseYear:I

    iput v5, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseYear:I

    sget v6, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseChineseMonth:I

    iput v6, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseMonth:I

    sget v6, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseChineseDate:I

    iput v6, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseDate:I

    const/16 v6, 0x7d0

    if-lt v0, v6, :cond_1

    sget v0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->baseYear:I

    add-int/lit8 v2, v0, 0x63

    const/4 v3, 0x1

    const/4 v4, 0x1

    add-int/lit8 v5, v5, 0x63

    iput v5, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseYear:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseMonth:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseDate:I

    :cond_1
    const/4 v0, 0x0

    move v5, v2

    :goto_0
    iget v6, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianYear:I

    if-ge v5, v6, :cond_3

    add-int/lit16 v0, v0, 0x16d

    invoke-static {v5}, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->isGregorianLeapYear(I)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move v5, v3

    :goto_1
    iget v6, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianMonth:I

    if-ge v5, v6, :cond_4

    iget v6, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianYear:I

    invoke-static {v6, v5}, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->daysInGregorianMonth(II)I

    move-result v6

    add-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget v5, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianDate:I

    sub-int/2addr v5, v4

    add-int/2addr v0, v5

    iget v5, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseDate:I

    add-int/2addr v5, v0

    iput v5, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseDate:I

    iget v5, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseYear:I

    iget v6, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseMonth:I

    invoke-static {v5, v6}, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->daysInChineseMonth(II)I

    move-result v5

    iget v6, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseYear:I

    iget v7, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseMonth:I

    invoke-static {v6, v7}, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->nextChineseMonth(II)I

    move-result v6

    :goto_2
    iget v7, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseDate:I

    if-le v7, v5, :cond_6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseMonth:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v7, v8, :cond_5

    iget v7, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseYear:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseYear:I

    :cond_5
    iput v6, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseMonth:I

    iget v7, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseDate:I

    sub-int/2addr v7, v5

    iput v7, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseDate:I

    iget v7, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseYear:I

    iget v8, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseMonth:I

    invoke-static {v7, v8}, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->daysInChineseMonth(II)I

    move-result v5

    iget v7, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseYear:I

    iget v8, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseMonth:I

    invoke-static {v7, v8}, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->nextChineseMonth(II)I

    move-result v6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    return v1

    :cond_7
    :goto_3
    return v1
.end method

.method public computeSolarTerms()I
    .locals 2

    iget v0, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianYear:I

    const/16 v1, 0x76d

    if-lt v0, v1, :cond_1

    const/16 v1, 0x834

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianMonth:I

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->sectionalTerm(II)I

    move-result v0

    iput v0, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->sectionalTerm:I

    iget v0, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianYear:I

    iget v1, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianMonth:I

    invoke-static {v0, v1}, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->principleTerm(II)I

    move-result v0

    iput v0, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->principleTerm:I

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getSolartermsMsg()Ljava/lang/String;
    .locals 9

    const-string v0, ""

    iget v1, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianMonth:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget v2, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseMonth:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v4, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    iget v5, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianDate:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v4, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    iget v6, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->chineseDate:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v4, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_3
    iget v3, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianDate:I

    iget v7, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->sectionalTerm:I

    const-string v8, " "

    if-ne v3, v7, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->sectionalTermNames:[Ljava/lang/String;

    iget v8, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianMonth:I

    sub-int/2addr v8, v4

    aget-object v4, v7, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v7, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->principleTerm:I

    if-ne v3, v7, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->principleTermNames:[Ljava/lang/String;

    iget v8, p0, Lcom/fusionleo/LeoX/systemui/LeoLunar$SolarTermsUtil;->gregorianMonth:I

    sub-int/2addr v8, v4

    aget-object v4, v7, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    :goto_0
    return-object v0
.end method
