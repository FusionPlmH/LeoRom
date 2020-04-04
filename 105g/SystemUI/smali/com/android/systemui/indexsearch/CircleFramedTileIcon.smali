.class public Lcom/android/systemui/indexsearch/CircleFramedTileIcon;
.super Landroid/graphics/drawable/Drawable;
.source "CircleFramedTileIcon.java"


# static fields
.field private static mContext:Landroid/content/Context;


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private mDstRect:Landroid/graphics/RectF;

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F

.field private final mSize:I

.field private mSrcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    move/from16 v1, p2

    iput v1, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    iget v2, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    iget v3, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget-object v3, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    move-object/from16 v4, p1

    invoke-static {v4, v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->getTileIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-instance v8, Landroid/graphics/Rect;

    sub-int v9, v5, v7

    div-int/lit8 v9, v9, 0x2

    sub-int v10, v6, v7

    div-int/lit8 v10, v10, 0x2

    invoke-direct {v8, v9, v10, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v9, Landroid/graphics/RectF;

    iget v10, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    int-to-float v10, v10

    iget v11, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    const/high16 v11, 0x43b40000    # 360.0f

    invoke-virtual {v10, v9, v12, v11}, Landroid/graphics/Path;->addArc(Landroid/graphics/RectF;FF)V

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v13, 0x0

    invoke-virtual {v2, v13, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    iput-object v11, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mPaint:Landroid/graphics/Paint;

    iget-object v11, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mPaint:Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v11, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mPaint:Landroid/graphics/Paint;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->getCircleBGColor()I

    move-result v14

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v11, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v11, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v10, v11}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v11, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mPaint:Landroid/graphics/Paint;

    new-instance v14, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->getIconColor()I

    move-result v15

    sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15, v12}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v11, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v11, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v8, v9, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mScale:F

    new-instance v11, Landroid/graphics/Rect;

    iget v12, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    iget v14, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    invoke-direct {v11, v13, v13, v12, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v11, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSrcRect:Landroid/graphics/Rect;

    new-instance v11, Landroid/graphics/RectF;

    iget v12, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    int-to-float v12, v12

    iget v13, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-direct {v11, v14, v14, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v11, v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mDstRect:Landroid/graphics/RectF;

    return-void
.end method

.method private getCircleBGColor()I
    .locals 3

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060269

    sget-object v2, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private getIconColor()I
    .locals 3

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06026d

    sget-object v2, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/indexsearch/CircleFramedTileIcon;
    .locals 4

    sput-object p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070622

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    new-instance v2, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;

    float-to-int v3, v1

    invoke-direct {v2, p1, v3}, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;-><init>(Landroid/graphics/drawable/Drawable;I)V

    return-object v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    iget v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mScale:F

    iget v1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mDstRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget v4, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSrcRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mDstRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/indexsearch/CircleFramedTileIcon;->mSize:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
