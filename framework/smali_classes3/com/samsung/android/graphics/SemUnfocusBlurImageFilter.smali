.class public Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemUnfocusBlurImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter$BokehFactorAnimationParams;,
        Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter$RadiusAnimationParams;
    }
.end annotation


# static fields
.field private static final BLUR_AMOUNT_MAX_VALUE:F = 100.0f

.field private static final BLUR_AMOUNT_MIN_VALUE:F = 0.0f

.field private static final BLUR_AMOUNT_PARAM_INDEX:I = 0x1

.field private static final BOKEH_FACTOR_MAX_VALUE:F = 100.0f

.field private static final BOKEH_FACTOR_MIN_VALUE:F = 0.0f

.field private static final BOKEH_FACTOR_PARAM_INDEX:I = 0x2

.field private static final FRAGMENT_SHADER_TEMPLATE:Ljava/lang/String; = "#ifdef GL_ES\nprecision highp float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\nvoid main(void) {\n    !!vec2 blurDirectionPlaceholder!!\n    vec2 texel = vec2(1.0/areaW, 1.0/areaH);\n    vec4 blurColor = vec4(0.0);\n    vec4 maxColor = vec4(0.0);\n    for(int i=0; i < int(filterParams[0]); i++) {\n        vec4 color1 = texture2D(baseSampler, outTexCoords + (float(i))/filterParams[0] * filterParams[1] * texel * blurDirection);\n        blurColor += color1;\n        maxColor = max(color1, maxColor);\n        vec4 color2 = texture2D(baseSampler, outTexCoords - (float(i))/filterParams[0] * filterParams[1] * texel * blurDirection);\n        blurColor += color2;\n        maxColor = max(color2, maxColor);\n    }\n    float normFactor = filterParams[0] * 2.0;\n    blurColor /= normFactor;\n    gl_FragColor = mix(blurColor, maxColor, filterParams[2]);\n}\n\n"

.field private static final STEP_COUNT_MAX_VALUE:F = 10.0f

.field private static final STEP_COUNT_MIN_VALUE:F = 1.0f

.field private static final STEP_COUNT_PARAM_INDEX:I


# instance fields
.field private mBokehFactor:F

.field private mRadius:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->makeFragmentShadersCode()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v2, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(I[Ljava/lang/String;[Ljava/lang/String;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mRadius:F

    iput v0, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mBokehFactor:F

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->useFilterParams()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->calculateBlurAmountParams(F)V

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->calculateBokehFactorParams(F)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->notifyWorkerFilters()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->calculateBlurAmountParams(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;)F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->getOptimalDownsampleRate()F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mRadius:F

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->calculateBokehFactorParams(F)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mBokehFactor:F

    return v0
.end method

.method private calculateBlurAmountParams(F)V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mRadius:F

    iget v0, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mRadius:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v0, v1, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mParams:[F

    iget v2, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mRadius:F

    const/4 v3, 0x1

    aput v2, v1, v3

    iget-object v1, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mParams:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    return-void
.end method

.method private calculateBokehFactorParams(F)V
    .locals 3

    const/high16 v0, 0x42c80000    # 100.0f

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    iput v1, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mBokehFactor:F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mParams:[F

    iget v2, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mBokehFactor:F

    div-float/2addr v2, v0

    const v0, 0x3f333333    # 0.7f

    mul-float/2addr v2, v0

    const/4 v0, 0x2

    aput v2, v1, v0

    return-void
.end method

.method private getOptimalDownsampleRate()F
    .locals 4

    iget v0, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mRadius:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static makeFragmentShadersCode()[Ljava/lang/String;
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "!!vec2 blurDirectionPlaceholder!!"

    const-string v2, "#ifdef GL_ES\nprecision highp float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\nvoid main(void) {\n    !!vec2 blurDirectionPlaceholder!!\n    vec2 texel = vec2(1.0/areaW, 1.0/areaH);\n    vec4 blurColor = vec4(0.0);\n    vec4 maxColor = vec4(0.0);\n    for(int i=0; i < int(filterParams[0]); i++) {\n        vec4 color1 = texture2D(baseSampler, outTexCoords + (float(i))/filterParams[0] * filterParams[1] * texel * blurDirection);\n        blurColor += color1;\n        maxColor = max(color1, maxColor);\n        vec4 color2 = texture2D(baseSampler, outTexCoords - (float(i))/filterParams[0] * filterParams[1] * texel * blurDirection);\n        blurColor += color2;\n        maxColor = max(color2, maxColor);\n    }\n    float normFactor = filterParams[0] * 2.0;\n    blurColor /= normFactor;\n    gl_FragColor = mix(blurColor, maxColor, filterParams[2]);\n}\n\n"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    aget-object v2, v0, v3

    const-string v4, "!!vec2 blurDirectionPlaceholder!!"

    const-string/jumbo v5, "vec2 blurDirection = vec2(0.0, 1.0);"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "#ifdef GL_ES\nprecision highp float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\nvoid main(void) {\n    !!vec2 blurDirectionPlaceholder!!\n    vec2 texel = vec2(1.0/areaW, 1.0/areaH);\n    vec4 blurColor = vec4(0.0);\n    vec4 maxColor = vec4(0.0);\n    for(int i=0; i < int(filterParams[0]); i++) {\n        vec4 color1 = texture2D(baseSampler, outTexCoords + (float(i))/filterParams[0] * filterParams[1] * texel * blurDirection);\n        blurColor += color1;\n        maxColor = max(color1, maxColor);\n        vec4 color2 = texture2D(baseSampler, outTexCoords - (float(i))/filterParams[0] * filterParams[1] * texel * blurDirection);\n        blurColor += color2;\n        maxColor = max(color2, maxColor);\n    }\n    float normFactor = filterParams[0] * 2.0;\n    blurColor /= normFactor;\n    gl_FragColor = mix(blurColor, maxColor, filterParams[2]);\n}\n\n"

    const/4 v3, 0x1

    aput-object v2, v0, v3

    aget-object v2, v0, v3

    const-string v4, "!!vec2 blurDirectionPlaceholder!!"

    const-string/jumbo v5, "vec2 blurDirection = vec2(0.886, 0.5);"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const-string v2, "#ifdef GL_ES\nprecision highp float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nuniform float areaW;\nuniform float areaH;\nvoid main(void) {\n    !!vec2 blurDirectionPlaceholder!!\n    vec2 texel = vec2(1.0/areaW, 1.0/areaH);\n    vec4 blurColor = vec4(0.0);\n    vec4 maxColor = vec4(0.0);\n    for(int i=0; i < int(filterParams[0]); i++) {\n        vec4 color1 = texture2D(baseSampler, outTexCoords + (float(i))/filterParams[0] * filterParams[1] * texel * blurDirection);\n        blurColor += color1;\n        maxColor = max(color1, maxColor);\n        vec4 color2 = texture2D(baseSampler, outTexCoords - (float(i))/filterParams[0] * filterParams[1] * texel * blurDirection);\n        blurColor += color2;\n        maxColor = max(color2, maxColor);\n    }\n    float normFactor = filterParams[0] * 2.0;\n    blurColor /= normFactor;\n    gl_FragColor = mix(blurColor, maxColor, filterParams[2]);\n}\n\n"

    const/4 v3, 0x2

    aput-object v2, v0, v3

    aget-object v2, v0, v3

    const-string v4, "!!vec2 blurDirectionPlaceholder!!"

    const-string/jumbo v5, "vec2 blurDirection = vec2(0.886, -0.5);"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    return-object v0
.end method


# virtual methods
.method public clearAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clearAnimation()V

    return-void
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;

    iget v1, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mRadius:F

    iput v1, v0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mRadius:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->clone()Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getBokehFactor()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mBokehFactor:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mRadius:F

    return v0
.end method

.method public setBokehFactor(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mBokehFactor:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->calculateBokehFactorParams(F)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method public setBokehFactorAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 10

    new-instance v9, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter$BokehFactorAnimationParams;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter$BokehFactorAnimationParams;-><init>(Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->mRadius:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->calculateBlurAmountParams(F)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->setFilterParamsChanged()V

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->getOptimalDownsampleRate()F

    move-result v0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->setSamplingRate(FF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method

.method public setRadiusAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 10

    new-instance v9, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter$RadiusAnimationParams;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter$RadiusAnimationParams;-><init>(Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/graphics/SemUnfocusBlurImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method
