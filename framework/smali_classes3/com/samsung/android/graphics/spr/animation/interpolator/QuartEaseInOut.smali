.class public Lcom/samsung/android/graphics/spr/animation/interpolator/QuartEaseInOut;
.super Ljava/lang/Object;
.source "QuartEaseInOut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# direct methods
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

.method private inout(F)F
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    return v0

    :cond_0
    const/high16 v1, -0x41000000    # -0.5f

    sub-float v2, p1, v0

    move p1, v2

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    return v1
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/animation/interpolator/QuartEaseInOut;->inout(F)F

    move-result v0

    return v0
.end method
