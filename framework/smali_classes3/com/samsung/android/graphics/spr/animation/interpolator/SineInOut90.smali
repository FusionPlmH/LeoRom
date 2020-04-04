.class public Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;
.super Ljava/lang/Object;
.source "SineInOut90.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [[F

    const/4 v1, 0x3

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v1, [F

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;->segments:[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3e7ced91    # 0.247f
    .end array-data

    :array_1
    .array-data 4
        0x3e7ced91    # 0.247f
        0x3ef5c28f    # 0.48f
        0x3f333333    # 0.7f
    .end array-data

    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x3f55c28f    # 0.835f
        0x3f67ae14    # 0.905f
    .end array-data

    :array_3
    .array-data 4
        0x3f67ae14    # 0.905f
        0x3f747ae1    # 0.955f
        0x3f7a5e35    # 0.978f
    .end array-data

    :array_4
    .array-data 4
        0x3f7a5e35    # 0.978f
        0x3f7ff972    # 0.9999f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 12

    const/high16 v0, 0x3f800000    # 1.0f

    div-float v1, p1, v0

    sget-object v2, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;->segments:[[F

    array-length v2, v2

    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;->segments:[[F

    array-length v4, v4

    const/4 v5, 0x1

    if-lt v3, v4, :cond_0

    sget-object v4, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;->segments:[[F

    array-length v4, v4

    add-int/lit8 v3, v4, -0x1

    :cond_0
    int-to-float v4, v3

    int-to-float v6, v2

    div-float v6, v0, v6

    mul-float/2addr v4, v6

    sub-float v4, v1, v4

    int-to-float v6, v2

    mul-float/2addr v4, v6

    sget-object v6, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;->segments:[[F

    aget-object v6, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v9, v6, v8

    const/high16 v10, 0x40000000    # 2.0f

    sub-float v11, v0, v4

    mul-float/2addr v10, v11

    aget v5, v6, v5

    aget v11, v6, v8

    sub-float/2addr v5, v11

    mul-float/2addr v10, v5

    const/4 v5, 0x2

    aget v5, v6, v5

    aget v8, v6, v8

    sub-float/2addr v5, v8

    mul-float/2addr v5, v4

    add-float/2addr v10, v5

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    mul-float/2addr v0, v9

    add-float/2addr v7, v0

    return v7
.end method
