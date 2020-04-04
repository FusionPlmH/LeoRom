.class public Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;
.source "SemBitmapColorMaskFilter.java"


# static fields
.field private static final ALPHA:I = 0x4

.field private static final BLUE:I = 0x3

.field private static final ENABLE_GRADIENT:I = 0x0

.field private static final GRADIENT_ALPHA:I = 0x8

.field private static final GRADIENT_BLUE:I = 0x7

.field private static final GRADIENT_ENDX:I = 0xb

.field private static final GRADIENT_ENDY:I = 0xc

.field private static final GRADIENT_GREEN:I = 0x6

.field private static final GRADIENT_RED:I = 0x5

.field private static final GRADIENT_STARTX:I = 0x9

.field private static final GRADIENT_STARTY:I = 0xa

.field private static final GREEN:I = 0x2

.field private static final RED:I = 0x1

.field private static mFragmentShaderCodeGradient:Ljava/lang/String;

.field private static mFragmentShaderCodeMask:Ljava/lang/String;


# instance fields
.field private mGradientEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform float filterParams[16];\n\nvoid main(void) {\n    vec4 startColor = vec4(filterParams[1], filterParams[2], filterParams[3], filterParams[4]);\n    vec4 endColor = vec4(filterParams[5], filterParams[6], filterParams[7], filterParams[8]);\n    vec2 startPoint = vec2(filterParams[9], filterParams[10]);\n    vec2 endPoint = vec2(filterParams[11], filterParams[12]);\n    vec2 send = endPoint - startPoint;\n    vec2 scur = outTexCoords - startPoint;\n    float proj = dot(send, scur) / dot(send, send);\n    vec4 mask = mix(startColor, endColor, smoothstep(0.0, 1.0, proj));\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    mask.rgb *= mask.a;\n    gl_FragColor = mask + texColor * (1.0 - mask.a);\n}\n\n"

    sput-object v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeGradient:Ljava/lang/String;

    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\n\nvoid main(void) {\n   vec4 texColor = texture2D(baseSampler, outTexCoords);\n  vec4 maskColor = texture2D(maskSampler, outTexCoords);\n   vec4 domColor = vec4(filterParams[1], filterParams[2], filterParams[3], filterParams[4]) * texColor;\n float alpha = domColor.a * maskColor.a;\n  domColor.rgb = domColor.rgb * alpha;\n domColor.a = alpha;\n  gl_FragColor = domColor + texColor * (1.0 - domColor.a);\n}\n\n"

    sput-object v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeMask:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    sget-object v1, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeGradient:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->useFilterParams()V

    sget-boolean v1, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->sLogingEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "HWUI_IMAGE_FILTER"

    const-string/jumbo v2, "{0x%x}->SemBitmapColorMaskFilter()"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;->clone()Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    iget-boolean v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    iput-boolean v1, v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->clone()Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->clone()Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->clone()Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->clone()Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;

    move-result-object v0

    return-object v0
.end method

.method public enableGradient()V
    .locals 5

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    iget-boolean v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    const-string v2, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    iget-boolean v4, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeGradient:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeMask:Ljava/lang/String;

    :goto_0
    aput-object v4, v3, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->syncImageFilter()V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->notifyWorkerFilters()V

    return-void
.end method

.method public getColor()[F
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [F

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v4

    aput v4, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v4

    aput v4, v1, v3

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v0

    aput v0, v1, v2

    return-object v1
.end method

.method public getGradient()[F
    .locals 9

    const/16 v0, 0xc

    new-array v1, v0, [F

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v3

    const/4 v4, 0x0

    aput v3, v1, v4

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    const/4 v6, 0x1

    aput v4, v1, v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v4

    const/4 v6, 0x2

    aput v4, v1, v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v4

    const/4 v6, 0x3

    aput v4, v1, v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v4

    const/4 v6, 0x4

    aput v4, v1, v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v4

    const/4 v6, 0x5

    aput v4, v1, v6

    const/16 v4, 0xb

    invoke-virtual {p0, v4}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v7

    const/4 v8, 0x6

    aput v7, v1, v8

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v0

    sub-float/2addr v5, v0

    const/4 v0, 0x7

    aput v5, v1, v0

    invoke-virtual {p0, v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v5

    const/16 v6, 0x8

    aput v5, v1, v6

    invoke-virtual {p0, v8}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v5

    aput v5, v1, v2

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v0

    aput v0, v1, v3

    invoke-virtual {p0, v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->getParam(I)F

    move-result v0

    aput v0, v1, v4

    return-object v1
.end method

.method public getGradientEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    return v0
.end method

.method public resetGradient()V
    .locals 6

    sget-boolean v0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->sLogingEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const-string v0, "HWUI_IMAGE_FILTER"

    const-string/jumbo v3, "{0x%x}->SemBitmapColorMaskFilter.resetGradient()"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    iget-boolean v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    if-ne v2, v0, :cond_2

    iput-boolean v1, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    const-string v0, "attribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/String;

    iget-boolean v4, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mGradientEnabled:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeGradient:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v4, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mFragmentShaderCodeMask:Ljava/lang/String;

    :goto_0
    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v0, v3}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setup(I[Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->syncImageFilter()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->notifyWorkerFilters()V

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    const-string/jumbo v0, "maskSampler"

    invoke-super {p0, v0, p1}, Lcom/samsung/android/graphics/SemGenericImageFilterLegacy;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setColor(FFFF)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-static {p3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setFilterParamsChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->resetGradient()V

    return-void
.end method

.method public setColor(I)V
    .locals 5

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

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setColor(FFFF)V

    return-void
.end method

.method public setGradient(FFIFFI)V
    .locals 16

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->sLogingEnabled:Z

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x7

    if-eqz v1, :cond_0

    const-string v1, "HWUI_IMAGE_FILTER"

    const-string/jumbo v9, "{0x%x}->SemBitmapColorMaskFilter.setGradient(%f,%f,0x%x,  %f, %f, 0x%x)"

    new-array v10, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static/range {p1 .. p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v5

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v10, v3

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v9, 0x437f0000    # 255.0f

    div-float/2addr v1, v9

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->green(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v9

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v9

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v9

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v14

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(FF)F

    move-result v14

    invoke-virtual {v0, v7, v14}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-static {v10, v13}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v15, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v0, v6, v7}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-static {v11, v13}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v15, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v15, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-static/range {p6 .. p6}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    invoke-static/range {p6 .. p6}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v9

    invoke-static/range {p6 .. p6}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v9

    invoke-static/range {p6 .. p6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    invoke-static {v4, v13}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v15, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-virtual {v0, v3, v7}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-static {v1, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-static {v5, v13}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, v8, v2}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    const/16 v2, 0x8

    invoke-static {v6, v13}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v15, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    const/16 v2, 0x9

    move/from16 v3, p1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    const/16 v2, 0xa

    sub-float v8, v13, p2

    invoke-virtual {v0, v2, v8}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    const/16 v2, 0xb

    move/from16 v8, p4

    invoke-virtual {v0, v2, v8}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    const/16 v2, 0xc

    sub-float v13, v13, p5

    invoke-virtual {v0, v2, v13}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->setParam(IF)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/SemBitmapColorMaskFilter;->enableGradient()V

    return-void
.end method
