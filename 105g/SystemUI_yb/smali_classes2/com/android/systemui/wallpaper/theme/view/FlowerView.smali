.class public Lcom/android/systemui/wallpaper/theme/view/FlowerView;
.super Landroid/view/View;
.source "FlowerView.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# static fields
.field private static MAX_POOL_SIZE:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFlowerImageId:[I

.field private mFlowerPool:[Lcom/android/systemui/wallpaper/theme/particle/Flower;

.field private mFlowerSizeScale:[F

.field private mPaint:Landroid/graphics/Paint;

.field private matrix:Landroid/graphics/Matrix;

.field private refresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x23

    sput v0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->MAX_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->refresh:Z

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->mFlowerImageId:[I

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->mFlowerSizeScale:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->matrix:Landroid/graphics/Matrix;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->MAX_POOL_SIZE:I

    new-array v0, v0, [Lcom/android/systemui/wallpaper/theme/particle/Flower;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->mFlowerPool:[Lcom/android/systemui/wallpaper/theme/particle/Flower;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->mFlowerPool:[Lcom/android/systemui/wallpaper/theme/particle/Flower;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->mFlowerPool:[Lcom/android/systemui/wallpaper/theme/particle/Flower;

    new-instance v2, Lcom/android/systemui/wallpaper/theme/particle/Flower;

    invoke-direct {v2, p1}, Lcom/android/systemui/wallpaper/theme/particle/Flower;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x7f08014f
        0x7f080150
        0x7f080151
    .end array-data

    :array_1
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f333333    # 0.7f
        0x3f4ccccd    # 0.8f
        0x3f666666    # 0.9f
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->refresh:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->invalidate()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->mFlowerPool:[Lcom/android/systemui/wallpaper/theme/particle/Flower;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->matrix:Landroid/graphics/Matrix;

    iget v5, v3, Lcom/android/systemui/wallpaper/theme/particle/Flower;->rotate:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setRotate(F)V

    iget-object v4, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->mFlowerSizeScale:[F

    iget v6, v3, Lcom/android/systemui/wallpaper/theme/particle/Flower;->flowerSize:I

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->mFlowerSizeScale:[F

    iget v7, v3, Lcom/android/systemui/wallpaper/theme/particle/Flower;->flowerSize:I

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->mFlowerImageId:[I

    iget v6, v3, Lcom/android/systemui/wallpaper/theme/particle/Flower;->flowerKind:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->mContext:Landroid/content/Context;

    iget v7, v3, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cx:F

    invoke-static {v6, v7}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->mContext:Landroid/content/Context;

    iget v8, v3, Lcom/android/systemui/wallpaper/theme/particle/Flower;->cy:F

    invoke-static {v7, v8}, Lcom/android/systemui/wallpaper/theme/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v5, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->matrix:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/theme/particle/Flower;->next()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->refresh:Z

    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->refresh:Z

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/view/FlowerView;->invalidate()V

    return-void
.end method
