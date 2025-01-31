.class public Lcom/android/settingslib/display/DisplayDensityUtils;
.super Ljava/lang/Object;
.source "DisplayDensityUtils.java"


# static fields
.field private static final SUMMARIES_LARGER:[I

.field private static final SUMMARIES_SMALLER:[I

.field private static final SUMMARY_CUSTOM:I

.field public static final SUMMARY_DEFAULT:I


# instance fields
.field private final mCurrentIndex:I

.field private final mDefaultDensity:I

.field private final mEntries:[Ljava/lang/String;

.field private final mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_default:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_custom:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_small:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    const/4 v1, 0x3

    new-array v1, v1, [I

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_large:I

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_very_large:I

    aput v2, v1, v0

    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_extremely_large:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sput-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 23

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDisplayDensity(I)I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    iput-object v3, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    iput v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v5, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v6, -0x1

    iget v7, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/16 v8, 0xa0

    mul-int/2addr v8, v7

    div-int/lit16 v8, v8, 0x140

    const/high16 v9, 0x3fc00000    # 1.5f

    int-to-float v10, v8

    int-to-float v11, v2

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const v10, 0x3f59999a    # 0.85f

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v12, v9, v11

    const v13, 0x3db851ec    # 0.09f

    div-float/2addr v12, v13

    sget-object v13, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    array-length v13, v13

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-static {v12, v14, v13}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v12

    float-to-int v12, v12

    const v13, 0x3fd55553

    sget-object v15, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    array-length v15, v15

    int-to-float v15, v15

    invoke-static {v13, v14, v15}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v13

    float-to-int v13, v13

    const/4 v14, 0x1

    add-int v15, v14, v13

    add-int/2addr v15, v12

    new-array v15, v15, [Ljava/lang/String;

    array-length v1, v15

    new-array v1, v1, [I

    const/16 v17, 0x0

    if-lez v13, :cond_2

    const v18, 0x3e199998    # 0.14999998f

    int-to-float v14, v13

    div-float v18, v18, v14

    add-int/lit8 v14, v13, -0x1

    :goto_0
    if-ltz v14, :cond_2

    int-to-float v11, v2

    move-object/from16 v20, v4

    add-int/lit8 v4, v14, 0x1

    int-to-float v4, v4

    mul-float v4, v4, v18

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v4, v19, v4

    mul-float/2addr v11, v4

    float-to-int v4, v11

    and-int/lit8 v4, v4, -0x2

    if-ne v5, v4, :cond_1

    move/from16 v6, v17

    :cond_1
    sget-object v11, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    aget v11, v11, v14

    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v15, v17

    aput v4, v1, v17

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v4, v20

    const/high16 v11, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    move-object/from16 v20, v4

    if-ne v5, v2, :cond_3

    move/from16 v6, v17

    :cond_3
    aput v2, v1, v17

    sget v4, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v15, v17

    const/4 v4, 0x1

    add-int/lit8 v17, v17, 0x1

    if-lez v12, :cond_6

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v11, v9, v4

    int-to-float v4, v12

    div-float/2addr v11, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v12, :cond_5

    int-to-float v14, v2

    move/from16 v21, v6

    add-int/lit8 v6, v4, 0x1

    int-to-float v6, v6

    mul-float/2addr v6, v11

    const/high16 v18, 0x3f800000    # 1.0f

    add-float v6, v18, v6

    mul-float/2addr v14, v6

    float-to-int v6, v14

    and-int/lit8 v6, v6, -0x2

    if-ne v5, v6, :cond_4

    move/from16 v14, v17

    goto :goto_2

    :cond_4
    move/from16 v14, v21

    :goto_2
    aput v6, v1, v17

    sget-object v19, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    move/from16 v22, v6

    aget v6, v19, v4

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v15, v17

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v4, v4, 0x1

    move v6, v14

    goto :goto_1

    :cond_5
    move/from16 v21, v6

    :cond_6
    if-ltz v6, :cond_7

    move v4, v6

    goto :goto_3

    :cond_7
    array-length v4, v1

    const/4 v11, 0x1

    add-int/2addr v4, v11

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    aput v5, v1, v17

    invoke-static {v15, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v14

    move-object v15, v14

    check-cast v15, [Ljava/lang/String;

    sget v14, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v16, 0x0

    aput-object v18, v11, v16

    invoke-virtual {v3, v14, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v15, v17

    nop

    move/from16 v4, v17

    :goto_3
    iput v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    iput v4, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    iput-object v15, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    return-void
.end method

.method public static clearForcedDisplayDensity(I)V
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v1, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;-><init>(II)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getDefaultDisplayDensity(I)I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    return v1
.end method

.method static synthetic lambda$clearForcedDisplayDensity$0(II)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DisplayDensityUtils"

    const-string v2, "Unable to clear forced display density setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$setForcedDisplayDensity$1(III)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DisplayDensityUtils"

    const-string v2, "Unable to save forced display density setting"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setForcedDisplayDensity(II)V
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    new-instance v1, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$jbnNZEy3zYf8rJTNV5wQSa3Z5eQ;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$jbnNZEy3zYf8rJTNV5wQSa3Z5eQ;-><init>(III)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return v0
.end method

.method public getDefaultDensity()I
    .locals 1

    iget v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    return v0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method public getValues()[I
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    return-object v0
.end method
