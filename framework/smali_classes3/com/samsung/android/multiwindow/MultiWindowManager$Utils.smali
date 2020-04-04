.class public Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# static fields
.field public static final sIsTablet:Z

.field public static final sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

.field public static final sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

.field public static final sSineOut90Interpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->isTablet()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sIsTablet:Z

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineOut90Interpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v4, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDensityBucket(I)I
    .locals 1

    const/16 v0, 0x78

    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0xa0

    if-gt p0, v0, :cond_1

    return v0

    :cond_1
    const/16 v0, 0xf0

    if-gt p0, v0, :cond_2

    return v0

    :cond_2
    const/16 v0, 0x140

    if-gt p0, v0, :cond_3

    return v0

    :cond_3
    const/16 v0, 0x1e0

    if-gt p0, v0, :cond_4

    return v0

    :cond_4
    const/16 v0, 0x280

    return v0
.end method

.method private static getMinimumDensityWithinBucket(I)I
    .locals 1

    const/16 v0, 0xa0

    if-eq p0, v0, :cond_4

    const/16 v0, 0xf0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x140

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1e0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x280

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x1e1

    return v0

    :cond_1
    const/16 v0, 0x141

    return v0

    :cond_2
    const/16 v0, 0xf1

    return v0

    :cond_3
    const/16 v0, 0xa1

    return v0

    :cond_4
    const/16 v0, 0x79

    return v0
.end method

.method public static getScaleDownDensity(II)I
    .locals 3

    const/4 v0, -0x1

    const/16 v1, 0x258

    if-ge p0, v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->sIsTablet:Z

    if-nez v1, :cond_0

    mul-int/lit8 v1, p1, 0x4b

    div-int/lit8 v0, v1, 0x64

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->getDensityBucket(I)I

    move-result v1

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->getDensityBucket(I)I

    move-result v2

    if-ge v2, v1, :cond_0

    move v2, v1

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->getMinimumDensityWithinBucket(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private static isTablet()Z
    .locals 2

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
