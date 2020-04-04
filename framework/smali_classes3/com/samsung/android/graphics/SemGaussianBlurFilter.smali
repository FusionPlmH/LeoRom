.class public Lcom/samsung/android/graphics/SemGaussianBlurFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;
.source "SemGaussianBlurFilter.java"


# static fields
.field private static final MAX_RADIUS:F = 250.0f

.field private static final RADIUS:I = 0x0

.field private static final STEP:I = 0x1

.field private static final STEP_COUNT:I = 0x2

.field private static mFragmentShaderCode:[Ljava/lang/String;


# instance fields
.field private mQuality:F

.field private mRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nvarying vec2 rescoefs;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaW;\n\nvoid main(void) {\n   vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n   float step = 1.0 / areaW ;\n   float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[2]); i++){\n      scaledStep = step * filterData02[i];\n         texPos.s = outTexCoords.s + scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n       texPos.s = outTexCoords.s - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n   gl_FragColor = fragColorBlur;\n}\n\n"

    const-string v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nvarying vec2 rescoefs;\nuniform float filterParams[16];\nuniform float filterData01[64];\nuniform float filterData02[64];\nuniform float areaH;\n\nvoid main(void) {\n  vec4 fragColorBlur = vec4(0.0, 0.0, 0.0, 0.0);\n    vec2 texPos = vec2(outTexCoords);\n   float step = 1.0 / areaH;\n    float scaledStep = 0.0;\n    fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[0]);\n    for(int i = 1; i < int(filterParams[2]); i++){\n      scaledStep = step * filterData02[i];\n         texPos.t = outTexCoords.t + scaledStep; \n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n      texPos.t = outTexCoords.t - scaledStep;\n        fragColorBlur += (texture2D(baseSampler, texPos) * filterData01[i]);\n    }\n   gl_FragColor = fragColorBlur;\n}\n\n"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mFragmentShaderCode:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mFragmentShaderCode:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mQuality:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->useFilterParams()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->useFilterData01()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->useFilterData02()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/graphics/SemGaussianBlurFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;->clone()Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    iput v1, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->clone()Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->clone()Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemImageFilterSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->clone()Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->clone()Lcom/samsung/android/graphics/SemGaussianBlurFilter;

    move-result-object v0

    return-object v0
.end method

.method protected computeGaussCoefs()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x40

    if-le v1, v5, :cond_0

    iget v5, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    int-to-float v6, v1

    div-float/2addr v5, v6

    const/16 v1, 0x40

    goto :goto_0

    :cond_0
    if-ge v1, v4, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const v5, 0x3fd6c12b

    :goto_0
    iget v3, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    const/4 v6, 0x0

    cmpg-float v3, v3, v6

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-gtz v3, :cond_2

    iget-object v2, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mData1:[F

    aput v7, v2, v8

    iget-object v2, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mData2:[F

    aput v6, v2, v8

    return-void

    :cond_2
    const v3, 0x402df854    # (float)Math.E

    const v6, 0x40490fdb    # (float)Math.PI

    const v9, 0x3e99999a    # 0.3f

    iget v10, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v12, v2, v6

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    float-to-double v14, v9

    mul-double/2addr v12, v14

    div-double/2addr v10, v12

    double-to-float v10, v10

    const/high16 v11, -0x40800000    # -1.0f

    mul-float v12, v2, v9

    mul-float/2addr v12, v9

    div-float/2addr v11, v12

    const/4 v12, 0x0

    const/16 v13, 0x80

    new-array v13, v13, [F

    iget v14, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    int-to-float v15, v1

    div-float/2addr v14, v15

    const/4 v15, 0x0

    move/from16 v16, v12

    move v12, v4

    :goto_1
    if-ge v12, v1, :cond_3

    float-to-double v7, v10

    move/from16 v17, v5

    float-to-double v4, v3

    mul-float v18, v15, v15

    mul-float v2, v18, v11

    move/from16 v19, v3

    float-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v7, v2

    move/from16 v5, v17

    float-to-double v2, v5

    mul-double/2addr v7, v2

    double-to-float v2, v7

    aput v2, v13, v12

    aget v2, v13, v12

    add-float v16, v16, v2

    add-float/2addr v15, v14

    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v19

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    move/from16 v19, v3

    mul-float v2, v10, v5

    const/4 v3, 0x0

    aput v2, v13, v3

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v16, v16, v2

    aget v2, v13, v3

    add-float v16, v16, v2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    aget v3, v13, v2

    div-float v3, v3, v16

    aput v3, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    move v3, v2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_5

    iget-object v4, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mData1:[F

    aget v7, v13, v2

    aput v7, v4, v2

    iget-object v4, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mData2:[F

    aput v3, v4, v2

    add-float/2addr v3, v14

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    iget v2, v0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setParam(IF)V

    const/4 v2, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setParam(IF)V

    const/4 v2, 0x2

    int-to-float v4, v1

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setParam(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setFilterData01Changed()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setFilterData02Changed()V

    return-void
.end method

.method public setRadius(F)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x437a0000    # 250.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setupDownSampling()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->computeGaussCoefs()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method protected setupDownSampling()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->mRadius:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setSamplingRate(IFF)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0, v0}, Lcom/samsung/android/graphics/SemGaussianBlurFilter;->setSamplingRate(IFF)V

    return-void
.end method
