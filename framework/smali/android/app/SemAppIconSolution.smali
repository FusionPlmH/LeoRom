.class public Landroid/app/SemAppIconSolution;
.super Ljava/lang/Object;
.source "SemAppIconSolution.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SemAppIconSolution$IconScale;
    }
.end annotation


# static fields
.field private static final CONFIG_SMART_APPICON_SCALER:I

.field private static final DEBUG_SPROTECT:Z = false

.field private static final DEFAULT_THEME_APPICON_SCALE:F = 0.72f

.field private static final DISABLE_APPICON_CROP:Z

.field private static final DISABLE_APPICON_SOLUTION:I = 0x0

.field private static final ICON_UNIFY_THEME_PKG_LIST:[Ljava/lang/String;

.field private static final SAMSUNG_THEME_APPICON_SCALE:F = 0.7f

.field private static final SUPPORT_FRAMING_ONLY:I = 0x1

.field private static final SUPPORT_ONEDOT_CONCEPT:I = 0x3

.field private static final SUPPORT_SQUIRCLE_CONCEPT:I = 0x2

.field private static final SUPPORT_THEME_APPICON_UNIFY:Z

.field private static final TAG:Ljava/lang/String; = "AppIconSolution"

.field private static final judgePoint:[[I

.field private static final judgePointForChina:[[I

.field private static final judgePointForOneDot:[[I

.field private static final judgePointForOneDot_P:[[I

.field private static final movePoint:[[I

.field private static final progress:[[I

.field private static sProtectHide:Ljava/lang/String;

.field private static uniqueInstance:Landroid/app/SemAppIconSolution;


# instance fields
.field private mAppIconPackageName:Ljava/lang/String;

.field private mApplicationPackageManager:Landroid/app/ApplicationPackageManager;

.field private mApplyIconUnifyFeature:I

.field private final mContext:Landroid/app/ContextImpl;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintForCrop:Landroid/graphics/Paint;

.field private mResources:Landroid/content/res/Resources;

.field private mSamsungThemeAppIconMask:Z

.field private mSamsungThemeAppIconRange:I

.field private mSamsungThemeAppIconScale:F

.field private mSettingStatusChecked:Z

.field private mSettingStatusForIconTray:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_ConfigAppIconStyle"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/app/SemAppIconSolution;->SUPPORT_THEME_APPICON_UNIFY:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_DisableAppIconCrop"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/app/SemAppIconSolution;->DISABLE_APPICON_CROP:Z

    const-string v0, "3"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Landroid/app/SemAppIconSolution;->CONFIG_SMART_APPICON_SCALER:I

    const/4 v0, 0x0

    sput-object v0, Landroid/app/SemAppIconSolution;->uniqueInstance:Landroid/app/SemAppIconSolution;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/SemAppIconSolution;->sProtectHide:Ljava/lang/String;

    const-string v0, "com.samsung.tungsten_silvery.appicon"

    const-string v1, "com.samsung.tungsten_gold.appicon"

    const-string v2, "com.samsung.tungsten_pink.appicon"

    const-string v3, "com.samsung.tungsten_black.appicon"

    const-string v4, "com.samsung.colorful_indie.appicon"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/SemAppIconSolution;->ICON_UNIFY_THEME_PKG_LIST:[Ljava/lang/String;

    const/4 v0, 0x4

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    sput-object v1, Landroid/app/SemAppIconSolution;->progress:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v6

    sput-object v1, Landroid/app/SemAppIconSolution;->movePoint:[[I

    const/16 v1, 0x8

    new-array v3, v1, [[I

    new-array v7, v2, [I

    fill-array-data v7, :array_8

    aput-object v7, v3, v4

    new-array v7, v2, [I

    fill-array-data v7, :array_9

    aput-object v7, v3, v5

    new-array v7, v2, [I

    fill-array-data v7, :array_a

    aput-object v7, v3, v2

    new-array v7, v2, [I

    fill-array-data v7, :array_b

    aput-object v7, v3, v6

    new-array v7, v2, [I

    fill-array-data v7, :array_c

    aput-object v7, v3, v0

    new-array v7, v2, [I

    fill-array-data v7, :array_d

    const/4 v8, 0x5

    aput-object v7, v3, v8

    new-array v7, v2, [I

    fill-array-data v7, :array_e

    const/4 v9, 0x6

    aput-object v7, v3, v9

    new-array v7, v2, [I

    fill-array-data v7, :array_f

    const/4 v10, 0x7

    aput-object v7, v3, v10

    sput-object v3, Landroid/app/SemAppIconSolution;->judgePoint:[[I

    new-array v3, v1, [[I

    new-array v7, v2, [I

    fill-array-data v7, :array_10

    aput-object v7, v3, v4

    new-array v7, v2, [I

    fill-array-data v7, :array_11

    aput-object v7, v3, v5

    new-array v7, v2, [I

    fill-array-data v7, :array_12

    aput-object v7, v3, v2

    new-array v7, v2, [I

    fill-array-data v7, :array_13

    aput-object v7, v3, v6

    new-array v7, v2, [I

    fill-array-data v7, :array_14

    aput-object v7, v3, v0

    new-array v7, v2, [I

    fill-array-data v7, :array_15

    aput-object v7, v3, v8

    new-array v7, v2, [I

    fill-array-data v7, :array_16

    aput-object v7, v3, v9

    new-array v7, v2, [I

    fill-array-data v7, :array_17

    aput-object v7, v3, v10

    sput-object v3, Landroid/app/SemAppIconSolution;->judgePointForOneDot:[[I

    new-array v3, v1, [[I

    new-array v7, v2, [I

    fill-array-data v7, :array_18

    aput-object v7, v3, v4

    new-array v7, v2, [I

    fill-array-data v7, :array_19

    aput-object v7, v3, v5

    new-array v7, v2, [I

    fill-array-data v7, :array_1a

    aput-object v7, v3, v2

    new-array v7, v2, [I

    fill-array-data v7, :array_1b

    aput-object v7, v3, v6

    new-array v7, v2, [I

    fill-array-data v7, :array_1c

    aput-object v7, v3, v0

    new-array v7, v2, [I

    fill-array-data v7, :array_1d

    aput-object v7, v3, v8

    new-array v7, v2, [I

    fill-array-data v7, :array_1e

    aput-object v7, v3, v9

    new-array v7, v2, [I

    fill-array-data v7, :array_1f

    aput-object v7, v3, v10

    sput-object v3, Landroid/app/SemAppIconSolution;->judgePointForOneDot_P:[[I

    new-array v1, v1, [[I

    new-array v3, v2, [I

    fill-array-data v3, :array_20

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_21

    aput-object v3, v1, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_22

    aput-object v3, v1, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_23

    aput-object v3, v1, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_24

    aput-object v3, v1, v0

    new-array v0, v2, [I

    fill-array-data v0, :array_25

    aput-object v0, v1, v8

    new-array v0, v2, [I

    fill-array-data v0, :array_26

    aput-object v0, v1, v9

    new-array v0, v2, [I

    fill-array-data v0, :array_27

    aput-object v0, v1, v10

    sput-object v1, Landroid/app/SemAppIconSolution;->judgePointForChina:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_5
    .array-data 4
        -0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        -0x1
    .end array-data

    :array_8
    .array-data 4
        0x1f
        0x11
    .end array-data

    :array_9
    .array-data 4
        0x60
        0x5
    .end array-data

    :array_a
    .array-data 4
        0xa0
        0x11
    .end array-data

    :array_b
    .array-data 4
        0xba
        0x60
    .end array-data

    :array_c
    .array-data 4
        0xa0
        0xae
    .end array-data

    :array_d
    .array-data 4
        0x60
        0xba
    .end array-data

    :array_e
    .array-data 4
        0x1f
        0xae
    .end array-data

    :array_f
    .array-data 4
        0x5
        0x60
    .end array-data

    :array_10
    .array-data 4
        0x15
        0x1c
    .end array-data

    :array_11
    .array-data 4
        0x60
        0x2
    .end array-data

    :array_12
    .array-data 4
        0xab
        0x1c
    .end array-data

    :array_13
    .array-data 4
        0xbc
        0x5e
    .end array-data

    :array_14
    .array-data 4
        0xab
        0xa4
    .end array-data

    :array_15
    .array-data 4
        0x60
        0xbb
    .end array-data

    :array_16
    .array-data 4
        0x15
        0xa4
    .end array-data

    :array_17
    .array-data 4
        0x4
        0x5e
    .end array-data

    :array_18
    .array-data 4
        0x16
        0x16
    .end array-data

    :array_19
    .array-data 4
        0x60
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0xa9
        0x16
    .end array-data

    :array_1b
    .array-data 4
        0xbd
        0x60
    .end array-data

    :array_1c
    .array-data 4
        0xa9
        0xa9
    .end array-data

    :array_1d
    .array-data 4
        0x60
        0xbd
    .end array-data

    :array_1e
    .array-data 4
        0x16
        0xa9
    .end array-data

    :array_1f
    .array-data 4
        0x2
        0x60
    .end array-data

    :array_20
    .array-data 4
        0x11
        0x11
    .end array-data

    :array_21
    .array-data 4
        0x60
        0x5
    .end array-data

    :array_22
    .array-data 4
        0xaf
        0x11
    .end array-data

    :array_23
    .array-data 4
        0xbb
        0x60
    .end array-data

    :array_24
    .array-data 4
        0xaf
        0xaf
    .end array-data

    :array_25
    .array-data 4
        0x60
        0xbb
    .end array-data

    :array_26
    .array-data 4
        0x11
        0xaf
    .end array-data

    :array_27
    .array-data 4
        0x5
        0x60
    .end array-data
.end method

.method private constructor <init>(Landroid/app/ContextImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    const/4 v0, 0x3

    iput v0, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/SemAppIconSolution;->mApplyIconUnifyFeature:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    iput-boolean v1, p0, Landroid/app/SemAppIconSolution;->mSettingStatusForIconTray:Z

    iput-boolean v1, p0, Landroid/app/SemAppIconSolution;->mSettingStatusChecked:Z

    iput-object v0, p0, Landroid/app/SemAppIconSolution;->mApplicationPackageManager:Landroid/app/ApplicationPackageManager;

    iput-object p1, p0, Landroid/app/SemAppIconSolution;->mContext:Landroid/app/ContextImpl;

    return-void
.end method

.method private getAppIconAlphaRelativeScale(Landroid/content/pm/PackageItemInfo;Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;
    .locals 1

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    return-object v0
.end method

.method private getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;
    .locals 2

    iget v0, p0, Landroid/app/SemAppIconSolution;->mApplyIconUnifyFeature:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScaleForIconUnification(Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    return-object v0
.end method

.method private getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;
    .locals 24

    move/from16 v8, p2

    move/from16 v9, p3

    const/4 v10, 0x0

    const/4 v11, -0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v12, 0x2

    div-int/lit8 v13, v0, 0x2

    const/4 v14, 0x4

    new-array v0, v14, [[I

    new-array v1, v12, [I

    fill-array-data v1, :array_0

    const/4 v7, 0x0

    aput-object v1, v0, v7

    new-array v1, v12, [I

    add-int/lit8 v2, v8, -0x1

    aput v2, v1, v7

    const/4 v15, 0x1

    aput v7, v1, v15

    aput-object v1, v0, v15

    new-array v1, v12, [I

    add-int/lit8 v2, v8, -0x1

    aput v2, v1, v7

    add-int/lit8 v2, v9, -0x1

    aput v2, v1, v15

    aput-object v1, v0, v12

    new-array v1, v12, [I

    aput v7, v1, v7

    add-int/lit8 v2, v9, -0x1

    aput v2, v1, v15

    const/4 v6, 0x3

    aput-object v1, v0, v6

    move-object/from16 v16, v0

    mul-int v0, v8, v9

    new-array v5, v0, [I

    filled-new-array {v9, v8}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, [[I

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v0, p4, v18

    if-lez v0, :cond_0

    const/16 v0, 0x66

    goto :goto_0

    :cond_0
    move v0, v7

    :goto_0
    move v4, v0

    const/16 v19, 0x0

    const/4 v2, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v3, v8

    move v12, v4

    move/from16 v4, v20

    move-object v14, v5

    move/from16 v5, v21

    move v6, v8

    move/from16 v22, v10

    move v10, v7

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v10

    :goto_1
    if-ge v0, v9, :cond_1

    mul-int v1, v8, v0

    aget-object v2, v17, v0

    invoke-static {v14, v1, v2, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v1, v0

    move/from16 v0, v22

    :goto_2
    const/4 v2, -0x1

    if-le v13, v0, :cond_a

    if-ne v11, v2, :cond_a

    const/4 v1, 0x0

    :goto_3
    const/4 v3, 0x4

    if-ge v1, v3, :cond_7

    aget-object v3, v16, v1

    aget v3, v3, v10

    aget-object v4, v16, v1

    aget v4, v4, v15

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eq v1, v6, :cond_2

    add-int/lit8 v5, v1, 0x1

    :cond_2
    move v7, v4

    move v4, v3

    move v3, v10

    :goto_4
    if-nez v3, :cond_5

    aget-object v20, v16, v5

    aget v6, v20, v10

    if-ne v4, v6, :cond_3

    aget-object v6, v16, v5

    aget v6, v6, v15

    if-ne v7, v6, :cond_3

    const/4 v3, 0x1

    :cond_3
    aget-object v6, v17, v7

    aget v6, v6, v4

    ushr-int/lit8 v6, v6, 0x18

    if-le v6, v12, :cond_4

    move v6, v0

    nop

    move v11, v6

    goto :goto_5

    :cond_4
    sget-object v6, Landroid/app/SemAppIconSolution;->progress:[[I

    aget-object v6, v6, v1

    aget v6, v6, v10

    add-int/2addr v4, v6

    sget-object v6, Landroid/app/SemAppIconSolution;->progress:[[I

    aget-object v6, v6, v1

    aget v6, v6, v15

    add-int/2addr v7, v6

    const/4 v6, 0x3

    goto :goto_4

    :cond_5
    :goto_5
    if-eq v11, v2, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    :goto_6
    if-ne v11, v2, :cond_8

    const/4 v1, 0x0

    :goto_7
    const/4 v3, 0x4

    if-ge v1, v3, :cond_9

    aget-object v2, v16, v1

    aget v4, v2, v10

    sget-object v5, Landroid/app/SemAppIconSolution;->movePoint:[[I

    aget-object v5, v5, v1

    aget v5, v5, v10

    add-int/2addr v4, v5

    aput v4, v2, v10

    aget-object v2, v16, v1

    aget v4, v2, v15

    sget-object v5, Landroid/app/SemAppIconSolution;->movePoint:[[I

    aget-object v5, v5, v1

    aget v5, v5, v15

    add-int/2addr v4, v5

    aput v4, v2, v15

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v3, 0x4

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    if-ne v11, v2, :cond_b

    const/4 v11, 0x0

    :cond_b
    cmpl-float v2, p4, v18

    if-lez v2, :cond_13

    sget-object v2, Landroid/app/SemAppIconSolution;->judgePoint:[[I

    sget v3, Landroid/app/SemAppIconSolution;->CONFIG_SMART_APPICON_SCALER:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c

    sget-object v2, Landroid/app/SemAppIconSolution;->judgePointForOneDot_P:[[I

    :cond_c
    aget-object v3, v16, v15

    aget v3, v3, v10

    aget-object v4, v16, v10

    aget v4, v4, v10

    sub-int/2addr v3, v4

    add-int/2addr v3, v15

    const/4 v4, 0x3

    aget-object v4, v16, v4

    aget v4, v4, v15

    aget-object v5, v16, v10

    aget v5, v5, v15

    sub-int/2addr v4, v5

    add-int/2addr v4, v15

    const/4 v5, 0x0

    const/4 v1, 0x0

    :goto_8
    const/16 v6, 0x8

    if-ge v1, v6, :cond_e

    aget-object v6, v2, v1

    aget v6, v6, v10

    mul-int/2addr v6, v3

    div-int/lit16 v6, v6, 0xc0

    aget-object v7, v16, v10

    aget v7, v7, v10

    add-int/2addr v6, v7

    aget-object v7, v2, v1

    aget v7, v7, v15

    mul-int/2addr v7, v4

    div-int/lit16 v7, v7, 0xc0

    aget-object v18, v16, v10

    aget v18, v18, v15

    add-int v7, v7, v18

    aget-object v18, v17, v7

    aget v18, v18, v6

    ushr-int/lit8 v10, v18, 0x18

    move/from16 v23, v0

    const/16 v0, 0x1a

    if-le v10, v0, :cond_d

    add-int/lit8 v5, v5, 0x1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v23

    const/4 v10, 0x0

    goto :goto_8

    :cond_e
    move/from16 v23, v0

    const v0, 0x3f8ccccd    # 1.1f

    if-ne v5, v6, :cond_11

    cmpl-float v0, p4, v0

    if-nez v0, :cond_f

    const v0, 0x3f6147ae    # 0.88f

    :goto_9
    goto :goto_b

    :cond_f
    sget-boolean v0, Landroid/app/SemAppIconSolution;->DISABLE_APPICON_CROP:Z

    if-nez v0, :cond_10

    sget v0, Landroid/app/SemAppIconSolution;->CONFIG_SMART_APPICON_SCALER:I

    const/4 v6, 0x2

    if-lt v0, v6, :cond_10

    if-ne v8, v9, :cond_10

    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v19, 0x1

    goto :goto_b

    :cond_10
    const v0, 0x3f2e147b    # 0.68f

    goto :goto_9

    :cond_11
    cmpl-float v0, p4, v0

    if-nez v0, :cond_12

    const v0, 0x3f70a3d7    # 0.94f

    goto :goto_a

    :cond_12
    const v0, 0x3f3851ec    # 0.72f

    :goto_a
    goto :goto_b

    :cond_13
    move/from16 v23, v0

    move/from16 v0, p4

    :goto_b
    if-eqz v19, :cond_14

    const/high16 v2, 0x43480000    # 200.0f

    add-float/2addr v0, v2

    :cond_14
    const-string v2, "AppIconSolution"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scaled rate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", alpha="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", hold="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/app/SemAppIconSolution$IconScale;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v11, v0}, Landroid/app/SemAppIconSolution$IconScale;-><init>(Landroid/app/SemAppIconSolution;IF)V

    return-object v2

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private getAppIconAlphaRelativeScaleForIconUnification(Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;
    .locals 26

    move-object/from16 v0, p0

    move/from16 v9, p2

    move/from16 v10, p3

    const/4 v12, 0x0

    const/4 v13, -0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x2

    div-int/lit8 v14, v1, 0x2

    const/4 v15, 0x4

    new-array v1, v15, [[I

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v8, 0x0

    aput-object v3, v1, v8

    new-array v3, v2, [I

    add-int/lit8 v4, v9, -0x1

    aput v4, v3, v8

    const/16 v16, 0x1

    aput v8, v3, v16

    aput-object v3, v1, v16

    new-array v3, v2, [I

    add-int/lit8 v4, v9, -0x1

    aput v4, v3, v8

    add-int/lit8 v4, v10, -0x1

    aput v4, v3, v16

    aput-object v3, v1, v2

    new-array v2, v2, [I

    aput v8, v2, v8

    add-int/lit8 v3, v10, -0x1

    aput v3, v2, v16

    const/4 v7, 0x3

    aput-object v2, v1, v7

    move-object/from16 v17, v1

    mul-int v1, v9, v10

    new-array v6, v1, [I

    filled-new-array {v10, v9}, [I

    move-result-object v1

    const-class v2, I

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, [[I

    const/16 v5, 0x1a

    const/16 v19, 0x0

    const/4 v3, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v1, p1

    move-object v2, v6

    move v4, v9

    move/from16 v22, v5

    move/from16 v5, v20

    move-object v15, v6

    move/from16 v6, v21

    move v7, v9

    move/from16 v23, v12

    move v12, v8

    move v8, v10

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v1, v12

    :goto_0
    if-ge v1, v10, :cond_0

    mul-int v2, v9, v1

    aget-object v3, v18, v1

    invoke-static {v15, v2, v3, v12, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    move/from16 v1, v23

    :goto_1
    const/4 v3, -0x1

    if-le v14, v1, :cond_8

    if-ne v13, v3, :cond_8

    const/4 v2, 0x0

    :goto_2
    const/4 v4, 0x4

    if-ge v2, v4, :cond_6

    aget-object v4, v17, v2

    aget v4, v4, v12

    aget-object v5, v17, v2

    aget v5, v5, v16

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-eq v2, v7, :cond_1

    add-int/lit8 v6, v2, 0x1

    :cond_1
    move v8, v5

    move v5, v4

    move v4, v12

    :goto_3
    if-nez v4, :cond_4

    aget-object v20, v17, v6

    aget v7, v20, v12

    if-ne v5, v7, :cond_2

    aget-object v7, v17, v6

    aget v7, v7, v16

    if-ne v8, v7, :cond_2

    const/4 v4, 0x1

    :cond_2
    aget-object v7, v18, v8

    aget v7, v7, v5

    ushr-int/lit8 v7, v7, 0x18

    move/from16 v3, v22

    if-le v7, v3, :cond_3

    move v7, v1

    nop

    move v13, v7

    goto :goto_4

    :cond_3
    sget-object v7, Landroid/app/SemAppIconSolution;->progress:[[I

    aget-object v7, v7, v2

    aget v7, v7, v12

    add-int/2addr v5, v7

    sget-object v7, Landroid/app/SemAppIconSolution;->progress:[[I

    aget-object v7, v7, v2

    aget v7, v7, v16

    add-int/2addr v8, v7

    move/from16 v22, v3

    const/4 v3, -0x1

    const/4 v7, 0x3

    goto :goto_3

    :cond_4
    move/from16 v3, v22

    :goto_4
    const/4 v7, -0x1

    if-eq v13, v7, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move/from16 v22, v3

    const/4 v3, -0x1

    goto :goto_2

    :cond_6
    move/from16 v3, v22

    :goto_5
    const/4 v2, 0x0

    :goto_6
    const/4 v4, 0x4

    if-ge v2, v4, :cond_7

    aget-object v5, v17, v2

    aget v6, v5, v12

    sget-object v7, Landroid/app/SemAppIconSolution;->movePoint:[[I

    aget-object v7, v7, v2

    aget v7, v7, v12

    add-int/2addr v6, v7

    aput v6, v5, v12

    aget-object v5, v17, v2

    aget v6, v5, v16

    sget-object v7, Landroid/app/SemAppIconSolution;->movePoint:[[I

    aget-object v7, v7, v2

    aget v7, v7, v16

    add-int/2addr v6, v7

    aput v6, v5, v16

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    move/from16 v22, v3

    goto :goto_1

    :cond_8
    move/from16 v3, v22

    const/4 v4, -0x1

    if-ne v13, v4, :cond_9

    const/4 v13, 0x0

    :cond_9
    sget-object v4, Landroid/app/SemAppIconSolution;->judgePointForChina:[[I

    iget-boolean v5, v0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    if-eqz v5, :cond_a

    sget-object v4, Landroid/app/SemAppIconSolution;->judgePointForOneDot:[[I

    :cond_a
    aget-object v5, v17, v16

    aget v5, v5, v12

    aget-object v6, v17, v12

    aget v6, v6, v12

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x3

    aget-object v6, v17, v6

    aget v6, v6, v16

    aget-object v7, v17, v12

    aget v7, v7, v16

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_7
    const/16 v8, 0x8

    if-ge v2, v8, :cond_c

    aget-object v8, v4, v2

    aget v8, v8, v12

    mul-int/2addr v8, v5

    div-int/lit16 v8, v8, 0xc0

    aget-object v20, v17, v12

    aget v20, v20, v12

    add-int v8, v8, v20

    aget-object v20, v4, v2

    aget v20, v20, v16

    move/from16 v24, v1

    mul-int v1, v6, v20

    div-int/lit16 v1, v1, 0xc0

    aget-object v20, v17, v12

    aget v20, v20, v16

    add-int v1, v1, v20

    aget-object v20, v18, v1

    aget v20, v20, v8

    ushr-int/lit8 v12, v20, 0x18

    if-le v12, v3, :cond_b

    add-int/lit8 v7, v7, 0x1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v24

    const/4 v12, 0x0

    goto :goto_7

    :cond_c
    move/from16 v24, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne v7, v8, :cond_d

    cmpg-float v8, p4, v1

    if-gtz v8, :cond_d

    if-ne v9, v10, :cond_d

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v19, 0x1

    goto :goto_8

    :cond_d
    cmpl-float v1, p4, v1

    if-lez v1, :cond_e

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_e
    move/from16 v1, p4

    :goto_8
    if-eqz v19, :cond_f

    const/high16 v8, 0x43480000    # 200.0f

    add-float/2addr v1, v8

    :cond_f
    const-string v8, "AppIconSolution"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IconUnify : scaled rate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", size="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", alpha="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", hold="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/app/SemAppIconSolution$IconScale;

    invoke-direct {v8, v0, v13, v1}, Landroid/app/SemAppIconSolution$IconScale;-><init>(Landroid/app/SemAppIconSolution;IF)V

    return-object v8

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static declared-synchronized getInstance(Landroid/app/ContextImpl;)Landroid/app/SemAppIconSolution;
    .locals 2

    const-class v0, Landroid/app/SemAppIconSolution;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/app/SemAppIconSolution;->uniqueInstance:Landroid/app/SemAppIconSolution;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/SemAppIconSolution;

    invoke-direct {v1, p0}, Landroid/app/SemAppIconSolution;-><init>(Landroid/app/ContextImpl;)V

    sput-object v1, Landroid/app/SemAppIconSolution;->uniqueInstance:Landroid/app/SemAppIconSolution;

    :cond_0
    sget-object v1, Landroid/app/SemAppIconSolution;->uniqueInstance:Landroid/app/SemAppIconSolution;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getLockedList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "applock_locked_apps_packages"

    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "app_lock_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Landroid/app/SemAppIconSolution;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    if-eqz v3, :cond_0

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v7, v5, v4

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getThemeAppIcon(Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/SemAppIconSolution;->getThemeAppIcon(Landroid/content/pm/PackageItemInfo;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getThemeAppIcon(Landroid/content/pm/PackageItemInfo;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 5

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mContext:Landroid/app/ContextImpl;

    iget-object v0, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getThemeAppIconMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v2, "3rd_party_icon"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const-string/jumbo v2, "mask_for_crop"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    instance-of v2, p1, Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/String;

    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    :try_start_0
    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "drawable"

    iget-object v4, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private isSettingsForIconTray()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isThemeActive()Z
    .locals 5

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const-string v3, "com.samsung.upsmtheme"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "com.sec.android.app.desktoplauncher"

    iget-object v4, p0, Landroid/app/SemAppIconSolution;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v4}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method private registerAppIconInfo()V
    .locals 8

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/SemAppIconSolution;->mApplyIconUnifyFeature:I

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "icon_bg_range"

    const-string v5, "integer"

    iget-object v6, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    goto :goto_0

    :cond_0
    iput v2, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    :goto_0
    const-string v5, "icon_scale_size"

    const-string v6, "integer"

    iget-object v7, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v4, v5

    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v6, v5

    const v7, 0x3c23d70a    # 0.01f

    mul-float/2addr v6, v7

    iput v6, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    goto :goto_1

    :cond_1
    iput v1, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    const-string/jumbo v5, "mask_from_theme"

    const-string v6, "bool"

    iget-object v7, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v4, v5

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    goto :goto_2

    :cond_2
    iput-boolean v3, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v5

    :try_start_2
    iput-boolean v3, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    iput v2, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    iput v1, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    iput-boolean v3, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    goto :goto_4

    :cond_3
    iput v2, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    iput v1, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    iput-boolean v3, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    :goto_4
    return-void
.end method


# virtual methods
.method public applyPrimaryColorToIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106017b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    return-object p1
.end method

.method public checkAndDrawLiveIconFromTheme(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v2, "liveicon_from_theme"

    const-string v3, "bool"

    iget-object v4, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "AppIconSolution"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "load= live icon for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", from overlay = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    iget v0, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public checkAppIconThemePackage()V
    .locals 5

    invoke-direct {p0}, Landroid/app/SemAppIconSolution;->isSettingsForIconTray()Z

    move-result v0

    iget-object v1, p0, Landroid/app/SemAppIconSolution;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_appicon_theme_package"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    if-eqz v1, :cond_2

    :try_start_0
    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v1, 0x0

    const-string v3, "AppIconSolution"

    const-string/jumbo v4, "set theme to null for dex mode"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    if-eqz v1, :cond_4

    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iget v2, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    :cond_5
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    iput-object v1, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-direct {p0}, Landroid/app/SemAppIconSolution;->registerAppIconInfo()V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-boolean v2, p0, Landroid/app/SemAppIconSolution;->mSettingStatusChecked:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Landroid/app/SemAppIconSolution;->mSettingStatusForIconTray:Z

    if-eq v2, v0, :cond_8

    :cond_7
    invoke-static {}, Landroid/app/ApplicationPackageManager;->configurationChanged()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/app/SemAppIconSolution;->mSettingStatusChecked:Z

    iput-boolean v0, p0, Landroid/app/SemAppIconSolution;->mSettingStatusForIconTray:Z

    :cond_8
    :goto_1
    return-void
.end method

.method public getAppIconAlphaRelativeScaleUsingBitmap(Landroid/graphics/Bitmap;II)F
    .locals 1

    const v0, 0x3f99999a    # 1.2f

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScaleForIconTray(Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->getScale()F

    move-result v0

    return v0
.end method

.method public getAppIconFromTheme(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/SemAppIconSolution;->getThemeAppIcon(Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_0

    iget v1, p0, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return-object p2
.end method

.method public getFeatureConfigSmartAppIconScaler()I
    .locals 1

    sget v0, Landroid/app/SemAppIconSolution;->CONFIG_SMART_APPICON_SCALER:I

    return v0
.end method

.method public getFeatureDisableAppIconCrop()Z
    .locals 1

    sget-boolean v0, Landroid/app/SemAppIconSolution;->DISABLE_APPICON_CROP:Z

    return v0
.end method

.method public getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getThemeIconWithBG(Landroid/content/pm/PackageItemInfo;Landroid/graphics/drawable/Drawable;Ljava/lang/Boolean;Ljava/lang/Boolean;I)Landroid/graphics/drawable/Drawable;
    .locals 61

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p5

    const-string v0, "NULL"

    if-eqz v7, :cond_1

    iget-object v1, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v8

    :cond_0
    iget-object v0, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    :cond_1
    move-object v10, v0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/app/SemAppIconSolution;->CONFIG_SMART_APPICON_SCALER:I

    if-gtz v0, :cond_2

    const-string v0, "AppIconSolution"

    const-string/jumbo v1, "return the original icon because there is no App-Icon Solution feature"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_2
    instance-of v0, v8, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_3

    const-string v0, "AppIconSolution"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "return adaptive icon for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_3
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const v12, 0x1080384

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-nez v4, :cond_7

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget v4, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-le v4, v14, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {v6, v7, v14}, Landroid/app/SemAppIconSolution;->getThemeAppIcon(Landroid/content/pm/PackageItemInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v4, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_5

    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    invoke-virtual {v0, v15, v15, v5, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-virtual {v3, v15}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    :cond_6
    :goto_1
    move-object v11, v3

    goto :goto_4

    :cond_7
    :goto_2
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v14, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v15, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    sget v5, Landroid/app/SemAppIconSolution;->CONFIG_SMART_APPICON_SCALER:I

    if-ne v5, v13, :cond_8

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v12, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_3

    :cond_8
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x1080382

    invoke-static {v5, v11, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_3
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_1

    :goto_4
    const/4 v3, 0x0

    const/4 v5, 0x2

    if-gez v1, :cond_a

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget v4, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-ge v4, v5, :cond_a

    const/4 v3, 0x1

    sget v4, Landroid/app/SemAppIconSolution;->CONFIG_SMART_APPICON_SCALER:I

    if-ne v4, v13, :cond_9

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_5

    :cond_9
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v12, 0x1080382

    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :cond_a
    move-object v12, v0

    move/from16 v17, v3

    if-lez v1, :cond_2f

    if-lez v2, :cond_2f

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez v0, :cond_2e

    if-gtz v3, :cond_b

    move-object/from16 v14, p3

    move/from16 v18, v0

    move-object/from16 v57, v10

    move-object/from16 v28, v11

    move-object/from16 v44, v12

    goto/16 :goto_1b

    :cond_b
    const-string v4, "AppIconSolution"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "load="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", bg="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", dr="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", forDefault="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v14, p3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", density="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    sget-boolean v13, Landroid/app/SemAppIconSolution;->SUPPORT_THEME_APPICON_UNIFY:Z

    if-eqz v13, :cond_e

    iget-object v13, v6, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v13, :cond_e

    iget v13, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    if-ge v13, v5, :cond_e

    iget v13, v6, Landroid/app/SemAppIconSolution;->mApplyIconUnifyFeature:I

    const/4 v15, -0x1

    if-ne v13, v15, :cond_e

    const/4 v13, 0x0

    iput v13, v6, Landroid/app/SemAppIconSolution;->mApplyIconUnifyFeature:I

    const/4 v13, 0x0

    :goto_6
    sget-object v15, Landroid/app/SemAppIconSolution;->ICON_UNIFY_THEME_PKG_LIST:[Ljava/lang/String;

    array-length v15, v15

    if-ge v13, v15, :cond_d

    sget-object v15, Landroid/app/SemAppIconSolution;->ICON_UNIFY_THEME_PKG_LIST:[Ljava/lang/String;

    aget-object v15, v15, v13

    iget-object v5, v6, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    iput v5, v6, Landroid/app/SemAppIconSolution;->mApplyIconUnifyFeature:I

    goto :goto_7

    :cond_c
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x2

    goto :goto_6

    :cond_d
    :goto_7
    const-string v5, "AppIconSolution"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "mApplyIconUnifyFeature = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v6, Landroid/app/SemAppIconSolution;->mApplyIconUnifyFeature:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "--mAppIconPackageName = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v6, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v5, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    instance-of v5, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_f

    move-object v5, v8

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    move/from16 v18, v0

    const/4 v0, 0x0

    goto :goto_8

    :cond_f
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getWidth()I

    move-result v13

    invoke-virtual {v5}, Landroid/graphics/Canvas;->getHeight()I

    move-result v15

    move/from16 v18, v0

    const/4 v0, 0x0

    invoke-virtual {v8, v0, v0, v13, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_8
    invoke-virtual {v4, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/16 v13, 0xd8

    const/16 v15, 0xd8

    if-ge v15, v5, :cond_11

    const/high16 v18, 0x43580000    # 216.0f

    int-to-float v15, v5

    div-float v18, v18, v15

    int-to-float v15, v0

    mul-float v15, v15, v18

    float-to-int v0, v15

    int-to-float v15, v3

    mul-float v15, v15, v18

    float-to-int v3, v15

    const/4 v15, 0x1

    invoke-static {v4, v0, v3, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_10

    const/16 v15, 0xd8

    move v2, v15

    move v1, v15

    :cond_10
    const-string v15, "AppIconSolution"

    move-object/from16 v20, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v5

    const-string/jumbo v5, "reset dr="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", bg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v0

    move v4, v3

    move-object/from16 v15, v20

    goto :goto_9

    :cond_11
    move-object v15, v4

    move/from16 v21, v5

    move v5, v0

    move v4, v3

    :goto_9
    move v3, v1

    iget-object v0, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_12

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    iget-object v0, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    :cond_12
    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/app/SemAppIconSolution;->isSettingsForIconTray()Z

    move-result v20

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v24, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    const/high16 v25, 0x40000000    # 2.0f

    if-eqz v0, :cond_1a

    const/16 v26, 0x0

    if-eqz v20, :cond_18

    const v27, 0x3f99999a    # 1.2f

    move-object v0, v6

    move-object/from16 v28, v11

    move v11, v1

    move-object v1, v7

    move/from16 v29, v2

    move-object v2, v15

    move/from16 v30, v3

    move v3, v5

    move/from16 v31, v4

    move/from16 v32, v5

    const/4 v11, 0x2

    move/from16 v5, v27

    invoke-direct/range {v0 .. v5}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScale(Landroid/content/pm/PackageItemInfo;Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->getScale()F

    move-result v1

    cmpl-float v1, v1, v24

    if-lez v1, :cond_15

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    sget v4, Landroid/app/SemAppIconSolution;->CONFIG_SMART_APPICON_SCALER:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_13

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080385

    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_a

    :cond_13
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1080383

    invoke-static {v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_a
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->getAlpha()I

    move-result v4

    mul-int/2addr v4, v11

    sub-int v4, v21, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-eq v4, v5, :cond_14

    nop

    const/4 v5, 0x1

    invoke-static {v2, v4, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_14
    move v5, v4

    move/from16 v33, v4

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v34, v1

    move/from16 v1, v33

    invoke-static {v1, v5, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v35, v3

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    move/from16 v36, v4

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v37, v11

    const/4 v11, 0x0

    invoke-virtual {v3, v2, v11, v11, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-string v4, "AppIconSolution"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v38, v2

    const-string/jumbo v2, "load="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-crop, bg="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", dr="

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v32

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move/from16 v39, v1

    const-string v1, "-"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v31

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move-object/from16 v40, v0

    move-object v11, v3

    move-object/from16 v44, v12

    move/from16 v23, v34

    move/from16 v4, v39

    goto/16 :goto_d

    :cond_15
    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->getAlpha()I

    move-result v3

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    sub-int v3, v21, v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->getScale()F

    move-result v4

    div-float/2addr v3, v4

    float-to-int v3, v3

    rem-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_16

    add-int/lit8 v3, v3, 0x1

    :cond_16
    move v5, v3

    move v4, v3

    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object/from16 v40, v0

    const/4 v0, 0x0

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    sget v0, Landroid/app/SemAppIconSolution;->CONFIG_SMART_APPICON_SCALER:I

    move/from16 v41, v3

    const/4 v3, 0x3

    if-ne v0, v3, :cond_17

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1080384

    invoke-static {v0, v3, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_b
    goto :goto_c

    :cond_17
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1080382

    invoke-static {v0, v3, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_b

    :goto_c
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setDensity(I)V

    const/4 v3, 0x1

    invoke-static {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v42, v11

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v11}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v43, v3

    iget-object v3, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v44, v12

    const/4 v12, 0x0

    invoke-virtual {v11, v0, v12, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-string v3, "AppIconSolution"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v45, v0

    const-string/jumbo v0, "load="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-contain, bg="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", dr="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v37, v43

    move-object/from16 v28, v45

    :goto_d
    int-to-float v0, v4

    div-float v0, v0, v25

    int-to-float v3, v5

    div-float v3, v3, v25

    invoke-virtual {v11, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v48, v11

    move-object/from16 v12, v44

    goto/16 :goto_10

    :cond_18
    move/from16 v29, v2

    move/from16 v30, v3

    move v1, v4

    move v2, v5

    move-object/from16 v28, v11

    move-object/from16 v44, v12

    sget v0, Landroid/app/SemAppIconSolution;->CONFIG_SMART_APPICON_SCALER:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_19

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1080384

    invoke-virtual {v0, v3, v9}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_e
    move-object v12, v0

    goto :goto_f

    :cond_19
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1080382

    invoke-virtual {v0, v3, v9}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_e

    :goto_f
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const v0, 0x3f8ccccd    # 1.1f

    invoke-direct {v6, v15, v2, v1, v0}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v0

    int-to-float v3, v4

    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->getScale()F

    move-result v11

    mul-float/2addr v3, v11

    invoke-virtual {v0}, Landroid/app/SemAppIconSolution$IconScale;->getAlpha()I

    move-result v11

    const/16 v16, 0x2

    mul-int/lit8 v11, v11, 0x2

    sub-int v11, v21, v11

    int-to-float v11, v11

    div-float/2addr v3, v11

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v46, v0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    int-to-float v9, v4

    div-float v9, v9, v25

    move-object/from16 v47, v11

    int-to-float v11, v5

    div-float v11, v11, v25

    invoke-virtual {v0, v9, v11}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    const-string v9, "AppIconSolution"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v48, v0

    const-string/jumbo v0, "load="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-scale, bg="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", dr="

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v37, v47

    :goto_10
    move v3, v4

    move-object/from16 v11, v28

    move-object/from16 v0, v37

    move-object/from16 v7, v48

    goto/16 :goto_18

    :cond_1a
    move/from16 v29, v2

    move/from16 v30, v3

    move v1, v4

    move v2, v5

    move-object/from16 v28, v11

    move-object/from16 v44, v12

    const/4 v0, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1b

    move/from16 v3, v30

    int-to-float v4, v3

    iget v5, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    mul-float/2addr v4, v5

    int-to-float v5, v2

    div-float/2addr v4, v5

    move/from16 v5, v29

    int-to-float v9, v5

    iget v11, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    mul-float/2addr v9, v11

    int-to-float v11, v1

    div-float/2addr v9, v11

    const-string v11, "AppIconSolution"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v49, v0

    const-string/jumbo v0, "load="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-theme1, bg="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", dr="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", relScale="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v11, v28

    goto/16 :goto_14

    :cond_1b
    move/from16 v49, v0

    move/from16 v5, v29

    move/from16 v3, v30

    iget v0, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconScale:F

    iget v4, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    const/4 v9, 0x2

    if-eq v4, v9, :cond_1c

    if-eqz v17, :cond_1d

    :cond_1c
    const v0, 0x3f8ccccd    # 1.1f

    :cond_1d
    invoke-direct {v6, v15, v2, v1, v0}, Landroid/app/SemAppIconSolution;->getAppIconAlphaRelativeScale(Landroid/graphics/Bitmap;IIF)Landroid/app/SemAppIconSolution$IconScale;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/SemAppIconSolution$IconScale;->getScale()F

    move-result v9

    cmpl-float v11, v9, v24

    if-lez v11, :cond_21

    const/4 v11, 0x1

    iget-boolean v12, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    if-eqz v12, :cond_20

    move/from16 v50, v3

    move/from16 v51, v5

    const/4 v3, 0x1

    const/4 v12, 0x0

    invoke-direct {v6, v7, v12, v3}, Landroid/app/SemAppIconSolution;->getThemeAppIcon(Landroid/content/pm/PackageItemInfo;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1f

    instance-of v3, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1e

    move-object v3, v5

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move/from16 v53, v11

    const/4 v11, 0x0

    goto :goto_11

    :cond_1e
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v12

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v12, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getWidth()I

    move-result v12

    move-object/from16 v52, v3

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    move/from16 v53, v11

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v11, v12, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v5, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v3, v52

    :goto_11
    invoke-virtual {v3, v11}, Landroid/graphics/Bitmap;->setDensity(I)V

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object/from16 v28, v3

    move/from16 v51, v5

    move/from16 v50, v7

    goto :goto_12

    :cond_1f
    move/from16 v53, v11

    goto :goto_12

    :cond_20
    move/from16 v50, v3

    move/from16 v51, v5

    move/from16 v53, v11

    :goto_12
    const/high16 v3, 0x43480000    # 200.0f

    sub-float/2addr v9, v3

    move-object/from16 v11, v28

    move/from16 v3, v50

    move/from16 v5, v51

    move/from16 v49, v53

    goto :goto_13

    :cond_21
    move/from16 v50, v3

    move/from16 v51, v5

    move-object/from16 v11, v28

    :goto_13
    int-to-float v7, v3

    mul-float/2addr v7, v9

    invoke-virtual {v4}, Landroid/app/SemAppIconSolution$IconScale;->getAlpha()I

    move-result v12

    const/16 v16, 0x2

    mul-int/lit8 v12, v12, 0x2

    sub-int v12, v21, v12

    int-to-float v12, v12

    div-float/2addr v7, v12

    move v9, v7

    const-string v12, "AppIconSolution"

    move-object/from16 v54, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v55, v9

    const-string/jumbo v9, "load="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-theme2, bg="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", dr="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", tarScale="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", relScale="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", mask="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    move/from16 v9, v55

    :goto_14
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    iget-object v12, v6, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v12, :cond_23

    iget v12, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    move-object/from16 v56, v0

    const/4 v0, 0x2

    if-ge v12, v0, :cond_24

    if-nez v17, :cond_24

    if-eqz v11, :cond_22

    iget-object v0, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12, v12, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_15

    :cond_22
    const-string v0, "AppIconSolution"

    const-string v12, "bgBitmap is null, so can\'t draw bg."

    invoke-static {v0, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_23
    move-object/from16 v56, v0

    :cond_24
    :goto_15
    iget v0, v6, Landroid/app/SemAppIconSolution;->mApplyIconUnifyFeature:I

    const/4 v12, 0x1

    if-eq v0, v12, :cond_26

    iget-boolean v0, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    if-eqz v0, :cond_25

    goto :goto_16

    :cond_25
    int-to-float v0, v3

    div-float v0, v0, v25

    int-to-float v12, v5

    div-float v12, v12, v25

    invoke-virtual {v7, v0, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v4, v9}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_17

    :cond_26
    :goto_16
    if-eqz v49, :cond_27

    int-to-float v0, v2

    mul-float/2addr v0, v4

    float-to-int v0, v0

    int-to-float v2, v1

    mul-float/2addr v2, v9

    float-to-int v1, v2

    const/16 v22, 0x1

    int-to-float v2, v3

    div-float v2, v2, v25

    int-to-float v12, v5

    div-float v12, v12, v25

    invoke-virtual {v7, v2, v12}, Landroid/graphics/Canvas;->translate(FF)V

    move v2, v0

    goto :goto_17

    :cond_27
    int-to-float v0, v3

    div-float v0, v0, v25

    int-to-float v12, v5

    div-float v12, v12, v25

    invoke-virtual {v7, v0, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v7, v4, v9}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_17
    move-object/from16 v12, v44

    move-object/from16 v0, v56

    :goto_18
    if-eqz v22, :cond_2a

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v4, :cond_2a

    iget v4, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconRange:I

    const/4 v9, 0x2

    if-ge v4, v9, :cond_2a

    const/4 v4, 0x1

    invoke-static {v15, v2, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v15

    iget-object v9, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    if-nez v9, :cond_28

    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    iget-object v9, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v9, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    move-object/from16 v57, v10

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_19

    :cond_28
    move-object/from16 v57, v10

    :goto_19
    neg-int v4, v2

    int-to-float v4, v4

    div-float v4, v4, v25

    neg-int v9, v1

    int-to-float v9, v9

    div-float v9, v9, v25

    iget-object v10, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v7, v15, v4, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-boolean v4, v6, Landroid/app/SemAppIconSolution;->mSamsungThemeAppIconMask:Z

    if-nez v4, :cond_29

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x1080387

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    const/4 v10, 0x1

    invoke-static {v9, v3, v5, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    neg-int v10, v3

    int-to-float v10, v10

    div-float v10, v10, v25

    move-object/from16 v58, v4

    neg-int v4, v5

    int-to-float v4, v4

    div-float v4, v4, v25

    move-object/from16 v59, v11

    iget-object v11, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v9, v10, v4, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1a

    :cond_29
    move-object/from16 v59, v11

    goto/16 :goto_1a

    :cond_2a
    move-object/from16 v57, v10

    move-object/from16 v59, v11

    if-eqz v23, :cond_2c

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    if-nez v4, :cond_2b

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v4, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/PorterDuffXfermode;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v9, v10}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :cond_2b
    neg-int v4, v2

    int-to-float v4, v4

    div-float v4, v4, v25

    neg-int v9, v1

    int-to-float v9, v9

    div-float v9, v9, v25

    iget-object v10, v6, Landroid/app/SemAppIconSolution;->mPaintForCrop:Landroid/graphics/Paint;

    invoke-virtual {v7, v15, v4, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget v4, Landroid/app/SemAppIconSolution;->CONFIG_SMART_APPICON_SCALER:I

    const/4 v9, 0x3

    if-ne v4, v9, :cond_2d

    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    invoke-virtual {v7}, Landroid/graphics/Canvas;->save()I

    const/4 v4, 0x0

    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v10, 0x1080386

    invoke-static {v11, v10, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Landroid/graphics/Bitmap;->setDensity(I)V

    const/4 v10, 0x1

    invoke-static {v4, v3, v5, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v10, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v7, v4, v11, v11, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1a

    :cond_2c
    neg-int v4, v2

    int-to-float v4, v4

    div-float v4, v4, v25

    neg-int v9, v1

    int-to-float v9, v9

    div-float v9, v9, v25

    iget-object v10, v6, Landroid/app/SemAppIconSolution;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v15, v4, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_2d
    :goto_1a
    invoke-virtual {v7}, Landroid/graphics/Canvas;->restore()V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    invoke-direct {v4, v9, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v4

    move-object v8, v0

    move v1, v3

    move v2, v5

    move-object/from16 v28, v59

    goto :goto_1c

    :cond_2e
    move-object/from16 v14, p3

    move/from16 v18, v0

    move-object/from16 v57, v10

    move-object/from16 v28, v11

    move-object/from16 v44, v12

    :goto_1b
    return-object v8

    :cond_2f
    move-object/from16 v14, p3

    move-object/from16 v57, v10

    move-object/from16 v28, v11

    move-object/from16 v44, v12

    move-object/from16 v12, v44

    :goto_1c
    return-object v8
.end method

.method public isAppIconSolutionSupported()Z
    .locals 1

    sget v0, Landroid/app/SemAppIconSolution;->CONFIG_SMART_APPICON_SCALER:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAppIconThemePackageSet()Z
    .locals 1

    iget-object v0, p0, Landroid/app/SemAppIconSolution;->mAppIconPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLock(Ljava/lang/String;)Z
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Landroid/app/SemAppIconSolution;->getLockedList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v1

    :cond_1
    return v1
.end method
