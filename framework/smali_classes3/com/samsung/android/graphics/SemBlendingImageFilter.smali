.class public Lcom/samsung/android/graphics/SemBlendingImageFilter;
.super Lcom/samsung/android/graphics/SemGenericImageFilter;
.source "SemBlendingImageFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;,
        Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_BURN_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = (vec4(1.0) - (vec4(1.0) - texColor) / maskColor) * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

.field private static final FRAGMENT_SHADER_DARKEN_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = min(maskColor, texColor) * filterParams[0] +  texColor * (1.0 - filterParams[0]);\n}\n\n"

.field private static final FRAGMENT_SHADER_DIFFERENCE_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= (1.0 - filterParams[0]);\n    gl_FragColor = mix(abs(texColor - maskColor), texColor, maskColor.a);\n}\n\n"

.field private static final FRAGMENT_SHADER_DODGE_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = mix(texColor / (vec4(1.0) - maskColor), texColor, (1.0 - maskColor.a));\n}\n\n"

.field private static final FRAGMENT_SHADER_EXCLUSION_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= (1.0 - filterParams[0]);\n    gl_FragColor = mix(texColor + maskColor - 2.0 * texColor * maskColor, texColor, maskColor.a);\n}\n\n"

.field private static FRAGMENT_SHADER_GLOW_BLEND:Ljava/lang/String; = null

.field private static final FRAGMENT_SHADER_HARD_LIGHT_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nfloat blendChannel(float base, float blend) {\n    if (blend < 0.5) {\n        return 2.0 * base * blend;\n    } else {\n        return 1.0 - 2.0 * (1.0 - base) * (1.0 - blend);\n    }\n}\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = vec4(blendChannel(texColor.r, maskColor.r), blendChannel(texColor.g, maskColor.g),           blendChannel(texColor.b, maskColor.b), blendChannel(texColor.a, maskColor.a));\n    gl_FragColor = mix(gl_FragColor, texColor, (1.0 - maskColor.a));\n}\n\n"

.field private static final FRAGMENT_SHADER_LIGHTEN_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = max(maskColor, texColor) * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

.field private static final FRAGMENT_SHADER_MULTIPLY_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = maskColor*texColor * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

.field private static FRAGMENT_SHADER_NEGATION_BLEND:Ljava/lang/String; = null

.field private static final FRAGMENT_SHADER_NORMAL_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = maskColor * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

.field private static final FRAGMENT_SHADER_OVERLAY_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nfloat blendChannel(float base, float blend) {\n    if (base < 0.5) {\n        return 2.0 * base * blend;\n    } else {\n        return 1.0 - 2.0 * (1.0 - base) * (1.0 - blend);\n    }\n}\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = vec4(blendChannel(texColor.r, maskColor.r), blendChannel(texColor.g, maskColor.g),           blendChannel(texColor.b, maskColor.b), blendChannel(texColor.a, maskColor.a));\ngl_FragColor = mix(gl_FragColor, texColor, (1.0 - maskColor.a));\n}\n\n"

.field private static final FRAGMENT_SHADER_SCREEN_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 unitColor = vec4(1.0);\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor *= filterParams[0];\n    gl_FragColor = unitColor - ((unitColor-texColor) * (unitColor-maskColor));\n}\n\n"

.field private static final FRAGMENT_SHADER_SOFT_LIGHT_BLEND:Ljava/lang/String; = "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nfloat blendChannel(float base, float blend) {\n    if (blend < 0.5) {\n        return 2.0 * base * blend + base * base *( 1.0 - 2.0 * blend);\n    } else {\n        return 2.0 * base * (1.0 - blend) + sqrt(base) * (2.0 * blend - 1.0) ;\n    }\n}\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = vec4(blendChannel(texColor.r, maskColor.r), blendChannel(texColor.g, maskColor.g),           blendChannel(texColor.b, maskColor.b), blendChannel(texColor.a, maskColor.a));\n    gl_FragColor = mix(gl_FragColor, texColor, (1.0 - maskColor.a));\n}\n\n"

.field private static final OPACITY_PARAM_INDEX:I

.field private static mBitmapMask:Landroid/graphics/Bitmap;

.field private static mBlendMode:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

.field private static mLayerOpacity:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= (1.0 - filterParams[0]);\n    gl_FragColor = mix(vec4(1.0) - abs(vec4(1.0) - texColor - maskColor), texColor, maskColor.a);\n}\n\n"

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->FRAGMENT_SHADER_NEGATION_BLEND:Ljava/lang/String;

    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = min(maskColor * maskColor / (1.0 - texColor), 1.0) * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->FRAGMENT_SHADER_GLOW_BLEND:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->NORMAL:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    sput-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBlendMode:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mLayerOpacity:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    invoke-static {}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->getFragmentShader()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/graphics/SemGenericImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->useFilterParams()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setOverlayLayerOpacity(F)V

    return-void
.end method

.method static synthetic access$000()F
    .locals 1

    sget v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mLayerOpacity:F

    return v0
.end method

.method static synthetic access$002(F)F
    .locals 0

    sput p0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mLayerOpacity:F

    return p0
.end method

.method private static getFragmentShader()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter$1;->$SwitchMap$com$samsung$android$graphics$SemBlendingImageFilter$BlendingMode:[I

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBlendMode:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = maskColor * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->FRAGMENT_SHADER_GLOW_BLEND:Ljava/lang/String;

    return-object v0

    :pswitch_1
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nfloat blendChannel(float base, float blend) {\n    if (blend < 0.5) {\n        return 2.0 * base * blend + base * base *( 1.0 - 2.0 * blend);\n    } else {\n        return 2.0 * base * (1.0 - blend) + sqrt(base) * (2.0 * blend - 1.0) ;\n    }\n}\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = vec4(blendChannel(texColor.r, maskColor.r), blendChannel(texColor.g, maskColor.g),           blendChannel(texColor.b, maskColor.b), blendChannel(texColor.a, maskColor.a));\n    gl_FragColor = mix(gl_FragColor, texColor, (1.0 - maskColor.a));\n}\n\n"

    return-object v0

    :pswitch_2
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nfloat blendChannel(float base, float blend) {\n    if (blend < 0.5) {\n        return 2.0 * base * blend;\n    } else {\n        return 1.0 - 2.0 * (1.0 - base) * (1.0 - blend);\n    }\n}\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = vec4(blendChannel(texColor.r, maskColor.r), blendChannel(texColor.g, maskColor.g),           blendChannel(texColor.b, maskColor.b), blendChannel(texColor.a, maskColor.a));\n    gl_FragColor = mix(gl_FragColor, texColor, (1.0 - maskColor.a));\n}\n\n"

    return-object v0

    :pswitch_3
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nfloat blendChannel(float base, float blend) {\n    if (base < 0.5) {\n        return 2.0 * base * blend;\n    } else {\n        return 1.0 - 2.0 * (1.0 - base) * (1.0 - blend);\n    }\n}\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = vec4(blendChannel(texColor.r, maskColor.r), blendChannel(texColor.g, maskColor.g),           blendChannel(texColor.b, maskColor.b), blendChannel(texColor.a, maskColor.a));\ngl_FragColor = mix(gl_FragColor, texColor, (1.0 - maskColor.a));\n}\n\n"

    return-object v0

    :pswitch_4
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= (1.0 - filterParams[0]);\n    gl_FragColor = mix(texColor + maskColor - 2.0 * texColor * maskColor, texColor, maskColor.a);\n}\n\n"

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->FRAGMENT_SHADER_NEGATION_BLEND:Ljava/lang/String;

    return-object v0

    :pswitch_6
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= (1.0 - filterParams[0]);\n    gl_FragColor = mix(abs(texColor - maskColor), texColor, maskColor.a);\n}\n\n"

    return-object v0

    :pswitch_7
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = (vec4(1.0) - (vec4(1.0) - texColor) / maskColor) * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

    return-object v0

    :pswitch_8
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor.a *= filterParams[0];\n    gl_FragColor = mix(texColor / (vec4(1.0) - maskColor), texColor, (1.0 - maskColor.a));\n}\n\n"

    return-object v0

    :pswitch_9
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = max(maskColor, texColor) * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

    return-object v0

    :pswitch_a
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = min(maskColor, texColor) * filterParams[0] +  texColor * (1.0 - filterParams[0]);\n}\n\n"

    return-object v0

    :pswitch_b
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 unitColor = vec4(1.0);\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    maskColor *= filterParams[0];\n    gl_FragColor = unitColor - ((unitColor-texColor) * (unitColor-maskColor));\n}\n\n"

    return-object v0

    :pswitch_c
    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nvarying vec2 outTexCoords;\nuniform sampler2D baseSampler;\nuniform sampler2D maskSampler;\nuniform float filterParams[16];\nvoid main(void) {\n    vec4 texColor = texture2D(baseSampler, outTexCoords);\n    vec4 maskColor = texture2D(maskSampler, outTexCoords);\n    gl_FragColor = maskColor*texColor * filterParams[0] + texColor * (1.0 - filterParams[0]);\n}\n\n"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupBlendingShader()V
    .locals 4

    const-string v0, "#ifdef GL_ES\nprecision mediump float;\n#endif\nattribute vec2 texCoords;\nattribute vec4 position;\nvarying vec2 outTexCoords;\nuniform mat4 projection;\nvoid main() {\n   outTexCoords = texCoords;\n   gl_Position = projection * position;\n}\n"

    invoke-static {}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->getFragmentShader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setup(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->useFilterParams()V

    sget v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mLayerOpacity:F

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setParam(IF)V

    const-string/jumbo v0, "maskSampler"

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->notifyWorkerFilters()V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clearAnimation()V

    return-void
.end method

.method public clone()Lcom/samsung/android/graphics/SemBlendingImageFilter;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/SemGenericImageFilter;->clone()Lcom/samsung/android/graphics/SemGenericImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBlendMode:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    sput-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBlendMode:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemGenericImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->clone()Lcom/samsung/android/graphics/SemBlendingImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->clone()Lcom/samsung/android/graphics/SemBlendingImageFilter;

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->clone()Lcom/samsung/android/graphics/SemBlendingImageFilter;

    move-result-object v0

    return-object v0
.end method

.method public getBlendingMode()Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;
    .locals 1

    sget-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBlendMode:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    return-object v0
.end method

.method public getOverlayLayerOpacity()F
    .locals 1

    sget v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mLayerOpacity:F

    return v0
.end method

.method public setBlendingMode(Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBlendMode:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    if-eq v0, p1, :cond_0

    sput-object p1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBlendMode:Lcom/samsung/android/graphics/SemBlendingImageFilter$BlendingMode;

    sget-object v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setupBlendingShader()V

    :cond_0
    return-void
.end method

.method public setOpacityAnimation(FFJJLandroid/animation/TimeInterpolator;)V
    .locals 10

    new-instance v9, Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/graphics/SemBlendingImageFilter$OpacityAnimationParams;-><init>(Lcom/samsung/android/graphics/SemBlendingImageFilter;FFJJLandroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setAnimationParams(Lcom/samsung/android/graphics/SemImageFilter$AnimationParamsBase;)V

    return-void
.end method

.method public setOverlayLayerBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    sput-object p1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    const-string/jumbo v0, "maskSampler"

    sget-object v1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mBitmapMask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setupBlendingShader()V

    return-void
.end method

.method public setOverlayLayerOpacity(F)V
    .locals 2

    sget v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mLayerOpacity:F

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/SemMathUtils;->compare(FF)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/samsung/android/graphics/SemMathUtils;->clamp(FFF)F

    move-result v0

    sput v0, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mLayerOpacity:F

    const/4 v0, 0x0

    sget v1, Lcom/samsung/android/graphics/SemBlendingImageFilter;->mLayerOpacity:F

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->setParam(IF)V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemBlendingImageFilter;->notifyWorkerFilters()V

    :cond_0
    return-void
.end method
