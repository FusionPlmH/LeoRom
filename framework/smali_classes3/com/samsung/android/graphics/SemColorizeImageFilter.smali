.class public Lcom/samsung/android/graphics/SemColorizeImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemColorizeImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;,
        Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x3

.field private static final BLEND_RATIO:I = 0x4

.field private static final BLUE:I = 0x2

.field private static final FRAGMENT_SHADER_CODE:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 colorizeColor = vec4(filterParams[0], filterParams[1], filterParams[2], filterParams[3]);\n    gl_FragColor = mix(texColor, colorizeColor, filterParams[4]);\n}\n\n"

.field private static final GREEN:I = 0x1

.field private static final RED:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    const-string v1, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 colorizeColor = vec4(filterParams[0], filterParams[1], filterParams[2], filterParams[3]);\n    gl_FragColor = mix(texColor, colorizeColor, filterParams[4]);\n}\n\n"

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorizeImageFilter;->useFilterParams()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemColorizeImageFilter;->setBlendRatio(F)V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clearAnimation()V

    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/SemColorizeImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemColorizeImageFilter;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorizeImageFilter;->clone()Lcom/samsung/android/graphics/SemColorizeImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorizeImageFilter;->clone()Lcom/samsung/android/graphics/SemColorizeImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorizeImageFilter;->clone()Lcom/samsung/android/graphics/SemColorizeImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getBlendRatio()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    const/4 v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getColor()[F
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    aput v1, v0, v2

    return-object v0
.end method

.method public setBlendRatio(F)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p1, v1, v2}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorizeImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorizeImageFilter;->notifyWorkerFilters()V

    return-void
.end method

.method public setBlendRatioAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 10

    new-instance v9, Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemColorizeImageFilter$BlendRatioAnimationParams;-><init>(Lcom/samsung/android/graphics/SemColorizeImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/graphics/SemColorizeImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setColor(I)V
    .locals 9

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-static {v0, v6, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v7

    const/4 v8, 0x0

    aput v7, v1, v8

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    invoke-static {v2, v6, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v7

    const/4 v8, 0x1

    aput v7, v1, v8

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    invoke-static {v3, v6, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v7

    const/4 v8, 0x2

    aput v7, v1, v8

    iget-object v1, p0, Lcom/samsung/android/graphics/SemColorizeImageFilter;->mParams:[F

    invoke-static {v4, v6, v5}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v5

    const/4 v6, 0x3

    aput v5, v1, v6

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorizeImageFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemColorizeImageFilter;->notifyWorkerFilters()V

    return-void
.end method

.method public setColorAnimation(IIJJLandroid/animation/TimeInterpolator;)V
    .locals 10

    new-instance v9, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemColorizeImageFilter$ColorAnimationParams;-><init>(Lcom/samsung/android/graphics/SemColorizeImageFilter;IIJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/graphics/SemColorizeImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method