.class public Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseInOut;
.super Ljava/lang/Object;
.source "BackEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private overshot:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseInOut;->overshot:F

    return-void
.end method

.method private inout(FF)F
    .locals 8

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    const p2, 0x3fd9cd60

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    const-wide v3, 0x3ff8666666666666L    # 1.525

    const/high16 v5, 0x3f000000    # 0.5f

    if-gez v2, :cond_1

    mul-float v0, p1, p1

    float-to-double v6, p2

    mul-double/2addr v6, v3

    double-to-float v2, v6

    move p2, v2

    add-float/2addr v2, v1

    mul-float/2addr v2, p1

    sub-float/2addr v2, p2

    mul-float/2addr v0, v2

    mul-float/2addr v5, v0

    return v5

    :cond_1
    sub-float v2, p1, v0

    move p1, v2

    mul-float/2addr v2, p1

    float-to-double v6, p2

    mul-double/2addr v6, v3

    double-to-float v3, v6

    move p2, v3

    add-float/2addr v3, v1

    mul-float/2addr v3, p1

    add-float/2addr v3, p2

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    mul-float/2addr v5, v2

    return v5
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseInOut;->overshot:F

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/BackEaseInOut;->inout(FF)F

    move-result v0

    return v0
.end method
