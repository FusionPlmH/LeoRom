.class Landroid/support/v7/widget/SeslOpacitySeekBar;
.super Landroid/widget/SeekBar;
.source "SeslOpacitySeekBar.java"


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

    iput-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mColors:[I

    iput-object p1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mResources:Landroid/content/res/Resources;

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

    iget-object v2, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mColors:[I

    const/4 v3, 0x0

    invoke-static {v3, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v4

    aput v4, v2, v3

    iget-object v2, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mColors:[I

    const/16 v3, 0xff

    invoke-static {v3, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setProgress(I)V

    return-void
.end method

.method private initProgressDrawable()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mContext:Landroid/content/Context;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_color_picker_opacity_seekbar:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initThumb()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mResources:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/appcompat/R$drawable;->sesl_color_picker_seekbar_cursor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setThumbOffset(I)V

    return-void
.end method


# virtual methods
.method changeColorBase(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mColors:[I

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mColors:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method init(I)V
    .locals 1

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setMax(I)V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->initColor(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->initProgressDrawable()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->initThumb()V

    return-void
.end method

.method restoreColor(I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->initColor(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mColors:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->mProgressDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
