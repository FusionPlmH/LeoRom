.class final Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SemPathRenderingDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SprState"
.end annotation


# instance fields
.field private mAutoMirrored:Z

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private mCacheManager:Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

.field private mChangingConfigurations:I

.field private mDensityDpi:I

.field private mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

.field private mGravity:I

.field private mMultiNinePatch:Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

.field private mNinePatch:Z

.field private mNinePatchBitmap:Landroid/graphics/Bitmap;

.field private mNinePatchRenderer:Landroid/graphics/NinePatch;

.field private mRebuildShader:Z

.field private mThemeAttrs:[I

.field private mTileModeX:Landroid/graphics/Shader$TileMode;

.field private mTileModeY:Landroid/graphics/Shader$TileMode;

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mThemeAttrs:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatch:Z

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mMultiNinePatch:Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

    iput v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDensityDpi:I

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mCacheManager:Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mAutoMirrored:Z

    const/16 v2, 0x77

    iput v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mGravity:I

    iput-boolean v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mRebuildShader:Z

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iget-object v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget-object v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mThemeAttrs:[I

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mThemeAttrs:[I

    iget-boolean v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatch:Z

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatch:Z

    new-instance v0, Landroid/graphics/Paint;

    iget-object v1, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;

    iget-boolean v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    if-nez v0, :cond_0

    invoke-direct {p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->createNinePatchRenderer()V

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mCacheManager:Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mCacheManager:Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

    iget-object v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    iget-object v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mMultiNinePatch:Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mMultiNinePatch:Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

    iget-object v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-boolean v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mAutoMirrored:Z

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mAutoMirrored:Z

    iget v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mGravity:I

    iput v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mGravity:I

    iget v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mChangingConfigurations:I

    iput v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mChangingConfigurations:I

    iget-boolean v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mRebuildShader:Z

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mRebuildShader:Z

    iget-object v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iget-object v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    iget v0, p1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDensityDpi:I

    iput v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDensityDpi:I

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/graphics/spr/document/SprDocument;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mThemeAttrs:[I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatch:Z

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mMultiNinePatch:Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

    iput v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDensityDpi:I

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mCacheManager:Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mAutoMirrored:Z

    const/16 v2, 0x77

    iput v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mGravity:I

    iput-boolean v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mRebuildShader:Z

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->setDocument(Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Lcom/samsung/android/graphics/spr/document/SprDocument;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDensityDpi:I

    return v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDensityDpi:I

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mRebuildShader:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mRebuildShader:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mGravity:I

    return v0
.end method

.method static synthetic access$1202(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mGravity:I

    return p1
.end method

.method static synthetic access$1376(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;I)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mChangingConfigurations:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mChangingConfigurations:I

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mThemeAttrs:[I

    return-object v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mThemeAttrs:[I

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mAutoMirrored:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mAutoMirrored:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Lcom/samsung/android/graphics/spr/cache/SprCacheManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mCacheManager:Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Shader$TileMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTileModeX:Landroid/graphics/Shader$TileMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Shader$TileMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-object v0
.end method

.method static synthetic access$502(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTileModeY:Landroid/graphics/Shader$TileMode;

    return-object p1
.end method

.method static synthetic access$600(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mBitmapPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatch:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/NinePatch;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/graphics/NinePatch;)Landroid/graphics/NinePatch;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->createNinePatchRenderer()V

    return-void
.end method

.method private createNinePatchRenderer()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->getIntrinsicHeight()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    monitor-enter v8

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->preDraw(I)V

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v7, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    const/4 v5, 0x0

    iget v6, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDensityDpi:I

    move v3, v0

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/graphics/spr/document/SprDocument;->draw(Landroid/graphics/Canvas;IIII)V

    :cond_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatch:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mMultiNinePatch:Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->getDensityScale()F

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v4, v0, v4

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v5, v5, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    mul-float/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int v5, v7, v5

    if-le v4, v2, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v2, 0x1

    :goto_0
    move v4, v6

    if-le v5, v3, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v3, 0x1

    :goto_1
    move v5, v6

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->getNinePatchChunk(IIII)Ljava/nio/ByteBuffer;

    move-result-object v6

    new-instance v8, Landroid/graphics/NinePatch;

    iget-object v9, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    iput-object v8, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mMultiNinePatch:Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

    invoke-direct {p0, v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->getNinePatchChunk(Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-instance v2, Landroid/graphics/NinePatch;

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    iput-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatchRenderer:Landroid/graphics/NinePatch;

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_5
    :goto_2
    return-void
.end method

.method private getNinePatchChunk(IIII)Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x54

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private getNinePatchChunk(Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;)Ljava/nio/ByteBuffer;
    .locals 13

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->getDensityScale()F

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p1, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    new-array v3, v3, [I

    iget v4, p1, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    new-array v4, v4, [I

    iget v5, p1, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    new-array v5, v5, [I

    iget v6, p1, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    new-array v6, v6, [I

    const/4 v7, -0x1

    const/4 v8, 0x0

    move v9, v1

    move v1, v8

    :goto_0
    iget v10, p1, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    if-ge v1, v10, :cond_2

    iget-object v10, p1, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xStart:[F

    aget v10, v10, v1

    mul-float/2addr v10, v0

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget-object v11, p1, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xEnd:[F

    aget v11, v11, v1

    mul-float/2addr v11, v0

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    if-gt v11, v10, :cond_0

    add-int/lit8 v11, v10, 0x1

    :cond_0
    if-gt v10, v7, :cond_1

    add-int/lit8 v12, v9, -0x1

    aput v11, v4, v12

    goto :goto_1

    :cond_1
    aput v10, v3, v9

    aput v11, v4, v9

    add-int/lit8 v9, v9, 0x1

    :goto_1
    move v7, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    move v7, v1

    move v1, v8

    :goto_2
    iget v10, p1, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    if-ge v1, v10, :cond_5

    iget-object v10, p1, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yStart:[F

    aget v10, v10, v1

    mul-float/2addr v10, v0

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    iget-object v11, p1, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->yEnd:[F

    aget v11, v11, v1

    mul-float/2addr v11, v0

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    if-gt v11, v10, :cond_3

    add-int/lit8 v11, v10, 0x1

    :cond_3
    if-gt v10, v7, :cond_4

    add-int/lit8 v12, v2, -0x1

    aput v11, v6, v12

    goto :goto_3

    :cond_4
    aput v10, v5, v2

    aput v11, v6, v2

    add-int/lit8 v2, v2, 0x1

    :goto_3
    move v7, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    mul-int/lit8 v1, v9, 0x2

    const/4 v10, 0x1

    add-int/2addr v1, v10

    mul-int/lit8 v11, v2, 0x2

    add-int/2addr v11, v10

    mul-int/2addr v1, v11

    const/16 v11, 0x2a

    mul-int/lit8 v12, v9, 0x8

    add-int/2addr v11, v12

    mul-int/lit8 v12, v2, 0x8

    add-int/2addr v11, v12

    mul-int/lit8 v12, v1, 0x4

    add-int/2addr v11, v12

    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v10, p1, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->xSize:I

    mul-int/lit8 v10, v10, 0x2

    int-to-byte v10, v10

    invoke-virtual {v11, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    iget v10, p1, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->ySize:I

    mul-int/lit8 v10, v10, 0x2

    int-to-byte v10, v10

    invoke-virtual {v11, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v10, v1

    invoke-virtual {v11, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v11, v8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move v10, v8

    :goto_4
    if-ge v10, v9, :cond_6

    aget v12, v3, v10

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    aget v12, v4, v10

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_6
    move v10, v8

    :goto_5
    if-ge v10, v2, :cond_7

    aget v12, v5, v10

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    aget v12, v6, v10

    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x1

    nop

    :goto_6
    if-ge v8, v1, :cond_8

    invoke-virtual {v11, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    return-object v11
.end method


# virtual methods
.method public canApplyTheme()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->access$1800()Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    nop

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mThemeAttrs:[I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mChangingConfigurations:I

    return v0

    :cond_0
    iget v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mChangingConfigurations:I

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method

.method public getDensityScale()F
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    const/high16 v1, 0x43200000    # 160.0f

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDensityDpi:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDensityDpi:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mDensity:F

    div-float/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->getDensityScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getIntrinsicWidth()I
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->getDensityScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    new-instance v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;-><init>(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;-><init>(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public setDocument(Lcom/samsung/android/graphics/spr/document/SprDocument;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget-object v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchLeft:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchTop:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchRight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v0, v0, Lcom/samsung/android/graphics/spr/document/SprDocument;->mNinePatchBottom:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatch:Z

    nop

    :goto_2
    move v0, v2

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getFileAttributeSize()I

    move-result v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v1, v0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getFileAttribute(I)Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeBase;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

    if-eqz v1, :cond_4

    iget-byte v2, v1, Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;->mType:B

    if-ne v2, v3, :cond_4

    iput-boolean v3, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mNinePatch:Z

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mMultiNinePatch:Lcom/samsung/android/graphics/spr/document/fileAttribute/SprFileAttributeNinePatch;

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v0, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->access$1700(Landroid/content/res/Resources;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDensityDpi:I

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mCacheManager:Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/samsung/android/graphics/spr/document/debug/SprDebug;->IsDebug:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mCacheManager:Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->printDebug()V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mCacheManager:Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

    :cond_7
    new-instance v0, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget-object v1, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->mCacheManager:Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

    :cond_8
    return-void
.end method
