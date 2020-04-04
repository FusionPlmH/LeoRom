.class public Lcom/fusionleo/LeoX/systemui/widget/Until;
.super Ljava/lang/Object;
.source "Until.java"


# static fields
.field public static BOTTOM_LINE:I = 0x0

.field public static EXPEND_LINE:I = 0x0

.field public static EXPEND_LINE_RIGHT:I = 0x0

.field public static EXPEND_OFFSET:I = 0x0

.field private static final EXPEND_OFFSET_FACTOR:I = 0xa

.field private static final IMAGE_HEIGHT_FACTOR:I = 0x6

.field public static IMAGE_WIDTH:I = 0x0

.field public static MID_LINE:I = 0x0

.field private static final MID_LINE_FACTOR:I = 0x2

.field private static final MOVE_MAX_FACTOR:I = 0x5

.field public static MOVE_MAX_SIZE:I = 0x0

.field private static PARKING_FACTOR:F = 0.0f

.field public static PARKING_LINE:I = 0x0

.field public static PARKING_LINE_RIGHT:I = 0x0

.field public static SCREEM_HEIGHT:I = 0x0

.field public static SCREEM_WIDTH:I = 0x0

.field private static final SHRINK_FACTOR:I = 0x2

.field public static SHRINK_LINE:I

.field public static STATUS_HEIGHT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3f34fdf4    # 0.707f

    sput v0, Lcom/fusionleo/LeoX/systemui/widget/Until;->PARKING_FACTOR:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2
.end method

.method public static initialPop(Landroid/content/Context;)V
    .locals 7

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_HEIGHT:I

    invoke-static {p0}, Lcom/fusionleo/LeoX/systemui/widget/Until;->getStatusBarHeight(Landroid/content/Context;)I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_HEIGHT:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    sput v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    sget v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->IMAGE_WIDTH:I

    sub-int v3, v1, v2

    div-int/lit8 v3, v3, 0x2

    sput v3, Lcom/fusionleo/LeoX/systemui/widget/Until;->MID_LINE:I

    div-int/lit8 v3, v2, 0x5

    sput v3, Lcom/fusionleo/LeoX/systemui/widget/Until;->MOVE_MAX_SIZE:I

    div-int/lit8 v3, v2, 0xa

    sput v3, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_OFFSET:I

    int-to-double v3, v2

    const-wide v5, 0x3ff69fbe76c8b439L    # 1.414

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v5

    double-to-int v3, v3

    sget v4, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_OFFSET:I

    add-int/2addr v3, v4

    sput v3, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v3, v2, 0x2

    sput v3, Lcom/fusionleo/LeoX/systemui/widget/Until;->SHRINK_LINE:I

    sget v3, Lcom/fusionleo/LeoX/systemui/widget/Until;->PARKING_FACTOR:F

    int-to-float v4, v2

    mul-float v3, v3, v4

    float-to-int v3, v3

    sput v3, Lcom/fusionleo/LeoX/systemui/widget/Until;->PARKING_LINE:I

    sget v3, Lcom/fusionleo/LeoX/systemui/widget/Until;->SCREEM_HEIGHT:I

    sget v4, Lcom/fusionleo/LeoX/systemui/widget/Until;->STATUS_HEIGHT:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    sget v4, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v3, v5

    sput v3, Lcom/fusionleo/LeoX/systemui/widget/Until;->BOTTOM_LINE:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v4

    sput v3, Lcom/fusionleo/LeoX/systemui/widget/Until;->EXPEND_LINE_RIGHT:I

    sub-int/2addr v1, v2

    sget v2, Lcom/fusionleo/LeoX/systemui/widget/Until;->PARKING_LINE:I

    sub-int/2addr v1, v2

    sput v1, Lcom/fusionleo/LeoX/systemui/widget/Until;->PARKING_LINE_RIGHT:I

    return-void
.end method
