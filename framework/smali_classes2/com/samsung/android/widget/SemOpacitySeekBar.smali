.class Lcom/samsung/android/widget/SemOpacitySeekBar;
.super Landroid/widget/SeekBar;
.source "SemOpacitySeekBar.java"


# static fields
.field private static final SEEKBAR_MAX_VALUE:I = 0xff

.field private static final TAG:Ljava/lang/String; = "SemOpacitySeekBar"


# instance fields
.field private mColors:[I

.field private final mContext:Landroid/content/Context;

.field private mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mColors:[I

    iput-object p1, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mResources:Landroid/content/res/Resources;

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1000000
    .end array-data
.end method

.method private initColor(I)V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mColors:[I

    const/4 v3, 0x0

    invoke-static {v3, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mColors:[I

    const/16 v3, 0xff

    invoke-static {v3, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setProgress(I)V

    return-void
.end method

.method private initProgressDrawable()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mContext:Landroid/content/Context;

    const v1, 0x10808ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initThumb()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mResources:Landroid/content/res/Resources;

    const v1, 0x10808ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setThumbOffset(I)V

    return-void
.end method

.method private static resizeDrawable(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;II)Landroid/graphics/drawable/Drawable;
    .locals 11

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object v8, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-lez p2, :cond_1

    int-to-float v3, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    :cond_1
    move v9, v1

    if-lez p3, :cond_2

    int-to-float v1, p3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v2, v1, v3

    :cond_2
    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    move-object v1, v0

    move-object v6, v8

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v2
.end method


# virtual methods
.method changeColorBase(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mColors:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mColors:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method init(I)V
    .locals 1

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setMax(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOpacitySeekBar;->initColor(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->initProgressDrawable()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->initThumb()V

    return-void
.end method

.method restoreColor(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOpacitySeekBar;->initColor(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mColors:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
