.class public Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;
.super Ljava/lang/Object;
.source "LeoConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusionleo/LeoX/systemui/LeoConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LeoGlobalBlur"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur$BlurPolicy;
    }
.end annotation


# static fields
.field private static volatile singleton:Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;


# instance fields
.field private final SCALE:F

.field private final TAG:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mPolicy:Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur$BlurPolicy;

.field private mRadius:I

.field private mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->singleton:Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LeoBlur"

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->TAG:Ljava/lang/String;

    const/high16 v0, 0x3e000000    # 0.125f

    iput v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->SCALE:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mRadius:I

    iput v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mScale:F

    sget-object v0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur$BlurPolicy;->RS_BLUR:Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur$BlurPolicy;

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mPolicy:Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur$BlurPolicy;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mContext:Landroid/content/Context;

    return-void
.end method

.method private fastBlur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    .locals 46

    move/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v4, p1

    invoke-static {v4, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    if-ge v0, v6, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    mul-int v7, v15, v14

    new-array v13, v7, [I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v13

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "pix"

    invoke-static {v11, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v7, v5

    move-object v8, v13

    move v10, v15

    move-object/from16 v18, v11

    move/from16 v11, v16

    move-object/from16 v19, v12

    move/from16 v12, v17

    move-object/from16 v20, v13

    move v13, v15

    move/from16 p1, v14

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v14, v15, -0x1

    move/from16 v13, p1

    add-int/lit8 v12, v13, -0x1

    mul-int v11, v15, v13

    add-int v7, v0, v0

    add-int/lit8 v10, v7, 0x1

    new-array v9, v11, [I

    new-array v8, v11, [I

    new-array v7, v11, [I

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v3, v3, [I

    add-int/lit8 v17, v10, 0x1

    shr-int/lit8 v17, v17, 0x1

    move/from16 p1, v11

    mul-int v11, v17, v17

    mul-int/lit16 v6, v11, 0x100

    new-array v6, v6, [I

    const/16 v21, 0x0

    move/from16 v22, v1

    move/from16 v1, v21

    :goto_0
    move/from16 v21, v2

    mul-int/lit16 v2, v11, 0x100

    if-ge v1, v2, :cond_1

    div-int v2, v1, v11

    aput v2, v6, v1

    add-int/lit8 v1, v1, 0x1

    move/from16 v2, v21

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move/from16 v23, v2

    move/from16 v24, v2

    const/4 v2, 0x3

    filled-new-array {v10, v2}, [I

    move-result-object v2

    move/from16 v25, v1

    const-class v1, I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    add-int/lit8 v2, v0, 0x1

    const/16 v26, 0x0

    move-object/from16 v27, v4

    move/from16 v4, v26

    :goto_1
    const/16 v26, 0x2

    if-ge v4, v13, :cond_6

    const/16 v28, 0x0

    move/from16 v16, v28

    move/from16 v29, v28

    move/from16 v30, v28

    move/from16 v31, v28

    move/from16 v32, v28

    move/from16 v33, v28

    move/from16 v34, v28

    move/from16 v35, v28

    move/from16 v36, v28

    move/from16 v37, v11

    neg-int v11, v0

    move/from16 v25, v16

    :goto_2
    const v38, 0xff00

    const/high16 v39, 0xff0000

    if-gt v11, v0, :cond_3

    move-object/from16 v40, v5

    move/from16 v28, v13

    const/4 v5, 0x0

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    add-int v13, v23, v13

    move-object/from16 v5, v20

    aget v13, v5, v13

    add-int v20, v11, v0

    aget-object v20, v1, v20

    and-int v39, v13, v39

    shr-int/lit8 v39, v39, 0x10

    const/16 v16, 0x0

    aput v39, v20, v16

    and-int v38, v13, v38

    shr-int/lit8 v38, v38, 0x8

    const/16 v17, 0x1

    aput v38, v20, v17

    move/from16 v41, v12

    and-int/lit16 v12, v13, 0xff

    aput v12, v20, v26

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v12

    sub-int v12, v2, v12

    const/16 v16, 0x0

    aget v38, v20, v16

    mul-int v38, v38, v12

    add-int v30, v30, v38

    const/16 v17, 0x1

    aget v38, v20, v17

    mul-int v38, v38, v12

    add-int v29, v29, v38

    aget v38, v20, v26

    mul-int v38, v38, v12

    add-int v25, v25, v38

    if-lez v11, :cond_2

    const/16 v16, 0x0

    aget v38, v20, v16

    add-int v36, v36, v38

    const/16 v17, 0x1

    aget v38, v20, v17

    add-int v35, v35, v38

    aget v38, v20, v26

    add-int v34, v34, v38

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    const/16 v17, 0x1

    aget v38, v20, v16

    add-int v33, v33, v38

    aget v38, v20, v17

    add-int v32, v32, v38

    aget v38, v20, v26

    add-int v31, v31, v38

    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v20, v5

    move/from16 v13, v28

    move-object/from16 v5, v40

    move/from16 v12, v41

    const/16 v28, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v40, v5

    move/from16 v41, v12

    move/from16 v28, v13

    move-object/from16 v5, v20

    move/from16 v12, p3

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v15, :cond_5

    aget v20, v6, v30

    aput v20, v9, v23

    aget v20, v6, v29

    aput v20, v8, v23

    aget v20, v6, v25

    aput v20, v7, v23

    sub-int v30, v30, v33

    sub-int v29, v29, v32

    sub-int v25, v25, v31

    sub-int v20, v12, v0

    add-int v20, v20, v10

    rem-int v42, v20, v10

    aget-object v42, v1, v42

    const/16 v16, 0x0

    aget v43, v42, v16

    sub-int v33, v33, v43

    const/16 v17, 0x1

    aget v43, v42, v17

    sub-int v32, v32, v43

    aget v43, v42, v26

    sub-int v31, v31, v43

    if-nez v4, :cond_4

    add-int v43, v13, v0

    move/from16 v44, v11

    add-int/lit8 v11, v43, 0x1

    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v11

    aput v11, v3, v13

    goto :goto_5

    :cond_4
    move/from16 v44, v11

    :goto_5
    aget v11, v3, v13

    add-int v11, v24, v11

    aget v11, v5, v11

    and-int v43, v11, v39

    shr-int/lit8 v43, v43, 0x10

    const/16 v16, 0x0

    aput v43, v42, v16

    and-int v43, v11, v38

    shr-int/lit8 v43, v43, 0x8

    const/16 v17, 0x1

    aput v43, v42, v17

    move/from16 v43, v14

    and-int/lit16 v14, v11, 0xff

    aput v14, v42, v26

    aget v14, v42, v16

    add-int v36, v36, v14

    aget v14, v42, v17

    add-int v35, v35, v14

    aget v14, v42, v26

    add-int v34, v34, v14

    add-int v30, v30, v36

    add-int v29, v29, v35

    add-int v25, v25, v34

    add-int/lit8 v14, v12, 0x1

    rem-int v12, v14, v10

    rem-int v14, v12, v10

    aget-object v14, v1, v14

    const/16 v16, 0x0

    aget v42, v14, v16

    add-int v33, v33, v42

    const/16 v17, 0x1

    aget v42, v14, v17

    add-int v32, v32, v42

    aget v42, v14, v26

    add-int v31, v31, v42

    aget v42, v14, v16

    sub-int v36, v36, v42

    aget v42, v14, v17

    sub-int v35, v35, v42

    aget v42, v14, v26

    sub-int v34, v34, v42

    add-int/lit8 v23, v23, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v14, v43

    move/from16 v11, v44

    goto/16 :goto_4

    :cond_5
    move/from16 v44, v11

    move/from16 v43, v14

    add-int v24, v24, v15

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v20, v5

    move/from16 v13, v28

    move/from16 v11, v37

    move-object/from16 v5, v40

    move/from16 v12, v41

    move/from16 v25, v44

    goto/16 :goto_1

    :cond_6
    move-object/from16 v40, v5

    move/from16 v37, v11

    move/from16 v41, v12

    move/from16 v28, v13

    move/from16 v43, v14

    move-object/from16 v5, v20

    const/4 v11, 0x0

    move/from16 v20, v4

    move v4, v11

    :goto_6
    if-ge v4, v15, :cond_c

    const/4 v11, 0x0

    move v12, v11

    move v13, v11

    move v14, v11

    move/from16 v16, v11

    move/from16 v29, v11

    move/from16 v30, v11

    move/from16 v31, v11

    move/from16 v32, v11

    move/from16 v33, v11

    neg-int v11, v0

    mul-int v11, v11, v15

    move/from16 v35, v11

    neg-int v11, v0

    move/from16 v25, v12

    move/from16 v12, v35

    move/from16 v35, v31

    move/from16 v31, v16

    :goto_7
    if-gt v11, v0, :cond_9

    move-object/from16 v36, v3

    const/4 v3, 0x0

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int v23, v16, v4

    add-int v16, v11, v0

    aget-object v34, v1, v16

    aget v16, v9, v23

    aput v16, v34, v3

    aget v3, v8, v23

    const/16 v17, 0x1

    aput v3, v34, v17

    aget v3, v7, v23

    aput v3, v34, v26

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v3, v2, v3

    aget v38, v9, v23

    mul-int v38, v38, v3

    add-int v14, v14, v38

    aget v38, v8, v23

    mul-int v38, v38, v3

    add-int v13, v13, v38

    aget v38, v7, v23

    mul-int v38, v38, v3

    add-int v25, v25, v38

    if-lez v11, :cond_7

    const/16 v16, 0x0

    aget v38, v34, v16

    add-int v33, v33, v38

    const/16 v17, 0x1

    aget v38, v34, v17

    add-int v32, v32, v38

    aget v38, v34, v26

    add-int v35, v35, v38

    goto :goto_8

    :cond_7
    const/16 v16, 0x0

    const/16 v17, 0x1

    aget v38, v34, v16

    add-int v30, v30, v38

    aget v38, v34, v17

    add-int v29, v29, v38

    aget v38, v34, v26

    add-int v31, v31, v38

    :goto_8
    move/from16 v38, v3

    move/from16 v3, v41

    if-ge v11, v3, :cond_8

    add-int/2addr v12, v15

    :cond_8
    add-int/lit8 v11, v11, 0x1

    move/from16 v41, v3

    move-object/from16 v3, v36

    goto :goto_7

    :cond_9
    move-object/from16 v36, v3

    move/from16 v3, v41

    move/from16 v23, v4

    move/from16 v34, p3

    const/16 v20, 0x0

    move/from16 v45, v20

    move/from16 v20, v13

    move/from16 v13, v45

    :goto_9
    move/from16 v38, v12

    move/from16 v12, v28

    if-ge v13, v12, :cond_b

    const/high16 v28, -0x1000000

    aget v39, v5, v23

    and-int v28, v39, v28

    aget v39, v6, v14

    shl-int/lit8 v39, v39, 0x10

    or-int v28, v28, v39

    aget v39, v6, v20

    shl-int/lit8 v39, v39, 0x8

    or-int v28, v28, v39

    aget v39, v6, v25

    or-int v28, v28, v39

    aput v28, v5, v23

    sub-int v14, v14, v30

    sub-int v20, v20, v29

    sub-int v25, v25, v31

    sub-int v28, v34, v0

    add-int v28, v28, v10

    rem-int v39, v28, v10

    aget-object v39, v1, v39

    const/16 v16, 0x0

    aget v41, v39, v16

    sub-int v30, v30, v41

    const/16 v17, 0x1

    aget v41, v39, v17

    sub-int v29, v29, v41

    aget v41, v39, v26

    sub-int v31, v31, v41

    if-nez v4, :cond_a

    add-int v0, v13, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int v0, v0, v15

    aput v0, v36, v13

    :cond_a
    aget v0, v36, v13

    add-int/2addr v0, v4

    aget v41, v9, v0

    const/16 v16, 0x0

    aput v41, v39, v16

    aget v41, v8, v0

    const/16 v17, 0x1

    aput v41, v39, v17

    aget v41, v7, v0

    aput v41, v39, v26

    aget v41, v39, v16

    add-int v33, v33, v41

    aget v41, v39, v17

    add-int v32, v32, v41

    aget v41, v39, v26

    add-int v35, v35, v41

    add-int v14, v14, v33

    add-int v20, v20, v32

    add-int v25, v25, v35

    add-int/lit8 v41, v34, 0x1

    rem-int v34, v41, v10

    aget-object v39, v1, v34

    const/16 v16, 0x0

    aget v41, v39, v16

    add-int v30, v30, v41

    const/16 v17, 0x1

    aget v41, v39, v17

    add-int v29, v29, v41

    aget v41, v39, v26

    add-int v31, v31, v41

    aget v41, v39, v16

    sub-int v33, v33, v41

    aget v41, v39, v17

    sub-int v32, v32, v41

    aget v41, v39, v26

    sub-int v35, v35, v41

    add-int v23, v23, v15

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, p3

    move/from16 v28, v12

    move/from16 v12, v38

    goto/16 :goto_9

    :cond_b
    const/16 v16, 0x0

    const/16 v17, 0x1

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, p3

    move/from16 v41, v3

    move/from16 v25, v11

    move/from16 v28, v12

    move/from16 v20, v13

    move-object/from16 v3, v36

    goto/16 :goto_6

    :cond_c
    move-object/from16 v36, v3

    move/from16 v12, v28

    move/from16 v3, v41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v11, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v11, v5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, v18

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v16, v7

    move-object/from16 v7, v40

    move-object/from16 v17, v8

    move-object v8, v5

    move-object/from16 v18, v9

    move v9, v0

    move v0, v10

    move v10, v15

    move/from16 v19, p1

    move/from16 v26, v37

    move/from16 v28, v3

    move v3, v12

    move v12, v13

    move v13, v15

    move/from16 v29, v43

    move v14, v3

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v40
.end method

.method private rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "origin size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LeoBlur"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, p4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {p2, v0, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scale size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5, v4}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-static {v5}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    int-to-float v7, p3

    invoke-virtual {v6, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v6, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v4}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v5}, Landroid/renderscript/RenderScript;->destroy()V

    return-object v4
.end method

.method public static with(Landroid/content/Context;)Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;
    .locals 2

    sget-object v0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->singleton:Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;

    if-nez v0, :cond_1

    const-class v0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->singleton:Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;

    if-nez v1, :cond_0

    new-instance v1, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;

    invoke-direct {v1, p0}, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->singleton:Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->singleton:Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;

    return-object v0
.end method


# virtual methods
.method public bitmap(Landroid/graphics/Bitmap;)Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;
    .locals 0

    iput-object p1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public blur()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mRadius:I

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    const-string v2, "blur fast algorithm"

    const-string v3, "LeoBlur"

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mPolicy:Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur$BlurPolicy;

    sget-object v1, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur$BlurPolicy;->FAST_BLUR:Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur$BlurPolicy;

    if-ne v0, v1, :cond_0

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mScale:F

    iget v2, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mRadius:I

    invoke-direct {p0, v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->fastBlur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "blur render script  algorithm"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mRadius:I

    iget v3, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mScale:F

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->rsBlur(Landroid/content/Context;Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mScale:F

    iget v2, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mRadius:I

    invoke-direct {p0, v0, v1, v2}, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->fastBlur(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "radius must > 0"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Bitmap can not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public policy(Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur$BlurPolicy;)Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;
    .locals 0

    iput-object p1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mPolicy:Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur$BlurPolicy;

    return-object p0
.end method

.method public radius(I)Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;
    .locals 0

    iput p1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mRadius:I

    return-object p0
.end method

.method public scale(I)Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;
    .locals 2

    int-to-float v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    iput v1, p0, Lcom/fusionleo/LeoX/systemui/LeoConfig$LeoGlobalBlur;->mScale:F

    return-object p0
.end method
