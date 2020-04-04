.class public Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SemPathRenderingDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;
    }
.end annotation


# static fields
.field private static final MAX_CACHED_BITMAP_SIZE:I = 0x800

.field private static final NA_NAME:Ljava/lang/String; = "n/a"

.field private static final TILE_MODE_CLAMP:I = 0x0

.field private static final TILE_MODE_MIRROR:I = 0x2

.field private static final TILE_MODE_REPEAT:I = 0x1

.field private static mBitmapDrawable_alpha:I = 0x0

.field private static mBitmapDrawable_autoMirrored:I = 0x0

.field private static mBitmapDrawable_gravity:I = 0x0

.field private static mBitmapDrawable_src:I = 0x0

.field private static mBitmapDrawable_tileMode:I = 0x0

.field private static mBitmapDrawable_tileModeX:I = 0x0

.field private static mBitmapDrawable_tileModeY:I = 0x0

.field private static mBitmapDrawable_tint:I = 0x0

.field private static mBitmapDrawable_tintMode:I = 0x0

.field private static final mCanApplyTheme:Ljava/lang/reflect/Method;

.field private static final mExtractThemeAttrs:Ljava/lang/reflect/Method;

.field private static final mGetLayoutDirection:Ljava/lang/reflect/Method;

.field private static final mObtainForTheme:Ljava/lang/reflect/Method;

.field private static final mParseTintMode:Ljava/lang/reflect/Method;

.field private static final mResolveAttributes:Ljava/lang/reflect/Method;

.field private static mStyleableBitmapDrawable:[I = null

.field private static final mUpdateTintFilter:Ljava/lang/reflect/Method;

.field private static final mVersion:I = 0x24def


# instance fields
.field private mAnimationBitmap:Landroid/graphics/Bitmap;

.field private mCacheBitmap:Landroid/graphics/Bitmap;

.field private mCacheDensityDpi:I

.field protected mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

.field private mDstRect:Landroid/graphics/Rect;

.field private mIdentityMatrix:Landroid/graphics/Matrix;

.field private mMirrorMatrix:Landroid/graphics/Matrix;

.field private mMutated:Z

.field private mSprAnimation:Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;

.field private mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mTmpFloats:[F

.field private final mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x0

    move-object v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    const-class v5, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v6, "updateTintFilter"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Landroid/graphics/PorterDuffColorFilter;

    aput-object v8, v7, v4

    const-class v8, Landroid/content/res/ColorStateList;

    aput-object v8, v7, v3

    const-class v8, Landroid/graphics/PorterDuff$Mode;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v5

    goto :goto_0

    :catch_0
    move-exception v5

    :goto_0
    sput-object v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mUpdateTintFilter:Ljava/lang/reflect/Method;

    :try_start_1
    const-class v5, Landroid/graphics/drawable/Drawable;

    const-string/jumbo v6, "parseTintMode"

    new-array v7, v2, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    const-class v8, Landroid/graphics/PorterDuff$Mode;

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v5

    goto :goto_1

    :catch_1
    move-exception v5

    :goto_1
    sput-object v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mParseTintMode:Ljava/lang/reflect/Method;

    :try_start_2
    const-class v5, Landroid/graphics/drawable/Drawable;

    const-string v6, "getLayoutDirection"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v5

    goto :goto_2

    :catch_2
    move-exception v5

    :goto_2
    sput-object v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mGetLayoutDirection:Ljava/lang/reflect/Method;

    :try_start_3
    const-class v5, Landroid/content/res/TypedArray;

    const-string v6, "extractThemeAttrs"

    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v1, v5

    goto :goto_3

    :catch_3
    move-exception v5

    :goto_3
    sput-object v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mExtractThemeAttrs:Ljava/lang/reflect/Method;

    :try_start_4
    const-class v5, Landroid/content/res/Resources$Theme;

    const-string/jumbo v6, "resolveAttributes"

    new-array v2, v2, [Ljava/lang/Class;

    const-class v7, [I

    aput-object v7, v2, v4

    const-class v7, [I

    aput-object v7, v2, v3

    invoke-virtual {v5, v6, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v2

    :goto_4
    sput-object v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mResolveAttributes:Ljava/lang/reflect/Method;

    :try_start_5
    const-class v2, Landroid/content/res/ColorStateList;

    const-string/jumbo v5, "obtainForTheme"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/res/Resources$Theme;

    aput-object v6, v3, v4

    invoke-virtual {v2, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object v1, v2

    goto :goto_5

    :catch_5
    move-exception v2

    :goto_5
    sput-object v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mObtainForTheme:Ljava/lang/reflect/Method;

    :try_start_6
    const-class v2, Landroid/content/res/ColorStateList;

    const-string v3, "canApplyTheme"

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-object v1, v2

    goto :goto_6

    :catch_6
    move-exception v2

    :goto_6
    sput-object v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCanApplyTheme:Ljava/lang/reflect/Method;

    :try_start_7
    const-string v2, "com.android.internal.R$styleable"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "BitmapDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    sput-object v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mStyleableBitmapDrawable:[I

    const-string v4, "BitmapDrawable_src"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v3, v4

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_src:I

    const-string v4, "BitmapDrawable_alpha"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v3, v4

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_alpha:I

    const-string v4, "BitmapDrawable_autoMirrored"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v3, v4

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_autoMirrored:I

    const-string v4, "BitmapDrawable_gravity"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v3, v4

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_gravity:I

    const-string v4, "BitmapDrawable_tileMode"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v3, v4

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_tileMode:I

    const-string v4, "BitmapDrawable_tileModeX"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v3, v4

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_tileModeX:I

    const-string v4, "BitmapDrawable_tileModeY"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v3, v4

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_tileModeY:I

    const-string v4, "BitmapDrawable_tint"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v3, v4

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    sput v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_tint:I

    const-string v4, "BitmapDrawable_tintMode"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v3, v4

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_tintMode:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v0

    :goto_7
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mMutated:Z

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheDensityDpi:I

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mSprAnimation:Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTmpFloats:[F

    new-instance v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-direct {v0, v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;-><init>(Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/content/res/Resources;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mMutated:Z

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheDensityDpi:I

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mSprAnimation:Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTmpFloats:[F

    iput-object p1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$000(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Lcom/samsung/android/graphics/spr/document/SprDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->getDensityScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-super {p0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$100(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$200(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateTintFilterInternal(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_0
    if-eqz p2, :cond_1

    invoke-direct {p0, p2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/graphics/spr/document/SprDocument;)V
    .locals 5

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mMutated:Z

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheDensityDpi:I

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mSprAnimation:Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTmpFloats:[F

    new-instance v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-direct {v0, p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;-><init>(Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$000(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Lcom/samsung/android/graphics/spr/document/SprDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->getDensityScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-super {p0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method static synthetic access$1700(Landroid/content/res/Resources;)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getDeviceDensityDpi(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCanApplyTheme:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static createFromPathName(Ljava/lang/String;)Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    invoke-static {p0, v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->createFromStreamInternal(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/graphics/spr/document/SprDocument;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v2, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-direct {v2, v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;-><init>(Lcom/samsung/android/graphics/spr/document/SprDocument;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getErrorDrawable(Ljava/lang/String;)Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    move-result-object v2

    return-object v2
.end method

.method public static createFromResourceStream(Landroid/content/res/Resources;I)Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->createFromStreamInternal(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/graphics/spr/document/SprDocument;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v2, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-direct {v2, v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;-><init>(Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    invoke-direct {v2, p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateLocalState(Landroid/content/res/Resources;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getErrorDrawable(Ljava/lang/String;)Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    move-result-object v2

    return-object v2
.end method

.method public static createFromStream(Ljava/io/InputStream;)Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v0, "n/a"

    invoke-static {v0, p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->createFromStream(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromStream(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->createFromStream(Ljava/lang/String;Ljava/io/InputStream;Landroid/content/res/Resources;)Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static createFromStream(Ljava/lang/String;Ljava/io/InputStream;Landroid/content/res/Resources;)Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-static {p0, p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->createFromStreamInternal(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/graphics/spr/document/SprDocument;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;-><init>(Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    if-eqz p2, :cond_0

    invoke-direct {v0, p2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateLocalState(Landroid/content/res/Resources;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getErrorDrawable(Ljava/lang/String;)Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    move-result-object v1

    return-object v1
.end method

.method private static createFromStreamInternal(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/graphics/spr/document/SprDocument;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v1, 0x3

    new-array v2, v1, [B

    if-nez p0, :cond_0

    const-string/jumbo v3, "n/a"

    goto :goto_0

    :cond_0
    move-object v3, p0

    :goto_0
    move-object p0, v3

    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->mark(I)V

    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lt v3, v1, :cond_4

    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V

    const/4 v1, 0x0

    aget-byte v3, v2, v1

    const/4 v4, 0x2

    const/16 v5, 0x53

    const/4 v6, 0x1

    if-ne v3, v5, :cond_1

    aget-byte v3, v2, v6

    const/16 v7, 0x56

    if-ne v3, v7, :cond_1

    aget-byte v3, v2, v4

    const/16 v7, 0x46

    if-eq v3, v7, :cond_2

    :cond_1
    aget-byte v1, v2, v1

    if-ne v1, v5, :cond_3

    aget-byte v1, v2, v6

    const/16 v3, 0x50

    if-ne v1, v3, :cond_3

    aget-byte v1, v2, v4

    const/16 v3, 0x52

    if-ne v1, v3, :cond_3

    :cond_2
    new-instance v1, Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/graphics/spr/document/SprDocument;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_1

    :cond_3
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v4, Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-direct {v4, p0, v3}, Lcom/samsung/android/graphics/spr/document/SprDocument;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    nop

    :goto_1
    nop

    return-object v1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    new-instance v1, Ljava/io/IOException;

    const-string v3, "file is too short"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getDeviceDensityDpi(Landroid/content/res/Resources;)I
    .locals 1

    if-nez p0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method private static getErrorDrawable(Ljava/lang/String;)Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;
    .locals 17

    const/4 v0, 0x5

    new-instance v7, Lcom/samsung/android/graphics/spr/document/SprDocument;

    const/16 v8, 0x46

    mul-int v1, v8, v0

    int-to-float v5, v1

    const/16 v9, 0x37

    mul-int v1, v9, v0

    int-to-float v6, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, v7

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/graphics/spr/document/SprDocument;-><init>(Ljava/lang/String;FFFF)V

    new-instance v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    const/16 v3, 0xa

    mul-int v4, v3, v0

    int-to-float v4, v4

    const/16 v5, 0x28

    mul-int v6, v5, v0

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-direct {v2, v7, v7, v4, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    const/16 v6, 0xc8

    const/16 v10, 0xff

    invoke-static {v10, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    const/4 v12, 0x1

    invoke-direct {v4, v12, v11}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    mul-int v11, v3, v0

    int-to-float v11, v11

    const/16 v13, 0x14

    mul-int v14, v13, v0

    int-to-float v14, v14

    mul-int v15, v5, v0

    int-to-float v15, v15

    invoke-direct {v4, v11, v7, v14, v15}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    move-object v2, v4

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    const/16 v11, -0x100

    invoke-direct {v4, v12, v11}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    mul-int v11, v13, v0

    int-to-float v11, v11

    const/16 v14, 0x1e

    mul-int v15, v14, v0

    int-to-float v15, v15

    mul-int v9, v5, v0

    int-to-float v9, v9

    invoke-direct {v4, v11, v7, v15, v9}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    move-object v2, v4

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    const/4 v9, 0x0

    invoke-static {v10, v9, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-direct {v4, v12, v11}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    mul-int v11, v14, v0

    int-to-float v11, v11

    mul-int v15, v5, v0

    int-to-float v15, v15

    mul-int v6, v5, v0

    int-to-float v6, v6

    invoke-direct {v4, v11, v7, v15, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    move-object v2, v4

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-static {v10, v9, v10, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-direct {v4, v12, v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    mul-int v6, v5, v0

    int-to-float v6, v6

    const/16 v11, 0x32

    mul-int v15, v11, v0

    int-to-float v15, v15

    mul-int v14, v5, v0

    int-to-float v14, v14

    invoke-direct {v4, v6, v7, v15, v14}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    move-object v2, v4

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-static {v10, v10, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-direct {v4, v12, v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    mul-int v6, v11, v0

    int-to-float v6, v6

    const/16 v14, 0x3c

    mul-int v15, v14, v0

    int-to-float v15, v15

    mul-int v11, v5, v0

    int-to-float v11, v11

    invoke-direct {v4, v6, v7, v15, v11}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    move-object v2, v4

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-static {v10, v10, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-direct {v4, v12, v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    mul-int v6, v14, v0

    int-to-float v6, v6

    mul-int v11, v8, v0

    int-to-float v11, v11

    mul-int v15, v5, v0

    int-to-float v15, v15

    invoke-direct {v4, v6, v7, v11, v15}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    move-object v2, v4

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-static {v10, v9, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-direct {v4, v12, v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    mul-int v6, v5, v0

    int-to-float v6, v6

    mul-int v11, v3, v0

    int-to-float v11, v11

    const/16 v15, 0x2d

    mul-int v8, v15, v0

    int-to-float v8, v8

    invoke-direct {v4, v7, v6, v11, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    move-object v2, v4

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-static {v10, v9, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-direct {v4, v12, v6}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    new-instance v4, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    mul-int/2addr v3, v0

    int-to-float v3, v3

    mul-int v6, v5, v0

    int-to-float v6, v6

    mul-int v8, v13, v0

    int-to-float v8, v8

    mul-int v11, v15, v0

    int-to-float v11, v11

    invoke-direct {v4, v3, v6, v8, v11}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    move-object v2, v4

    new-instance v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-static {v10, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v3, v12, v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    new-instance v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    mul-int/2addr v13, v0

    int-to-float v4, v13

    mul-int v6, v5, v0

    int-to-float v6, v6

    const/16 v8, 0x1e

    mul-int v11, v8, v0

    int-to-float v8, v11

    mul-int v11, v15, v0

    int-to-float v11, v11

    invoke-direct {v3, v4, v6, v8, v11}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    move-object v2, v3

    new-instance v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-static {v10, v10, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v3, v12, v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    new-instance v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    const/16 v4, 0x1e

    mul-int/2addr v4, v0

    int-to-float v4, v4

    mul-int v6, v5, v0

    int-to-float v6, v6

    mul-int v8, v5, v0

    int-to-float v8, v8

    mul-int v11, v15, v0

    int-to-float v11, v11

    invoke-direct {v3, v4, v6, v8, v11}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    move-object v2, v3

    new-instance v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-static {v10, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v3, v12, v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    new-instance v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    mul-int v4, v5, v0

    int-to-float v4, v4

    mul-int v6, v5, v0

    int-to-float v6, v6

    const/16 v8, 0x32

    mul-int v11, v8, v0

    int-to-float v8, v11

    mul-int v11, v15, v0

    int-to-float v11, v11

    invoke-direct {v3, v4, v6, v8, v11}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    move-object v2, v3

    new-instance v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-static {v10, v9, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v3, v12, v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    new-instance v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    const/16 v4, 0x32

    mul-int v11, v4, v0

    int-to-float v4, v11

    mul-int v6, v5, v0

    int-to-float v6, v6

    mul-int v8, v14, v0

    int-to-float v8, v8

    mul-int v11, v15, v0

    int-to-float v11, v11

    invoke-direct {v3, v4, v6, v8, v11}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    move-object v2, v3

    new-instance v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    invoke-static {v10, v9, v9, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v3, v12, v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    new-instance v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    mul-int/2addr v14, v0

    int-to-float v4, v14

    mul-int/2addr v5, v0

    int-to-float v5, v5

    const/16 v6, 0x46

    mul-int v8, v6, v0

    int-to-float v6, v8

    mul-int v8, v15, v0

    int-to-float v8, v8

    invoke-direct {v3, v4, v5, v6, v8}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    move-object v2, v3

    new-instance v3, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    const/16 v4, 0xc8

    invoke-static {v10, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-direct {v3, v12, v4}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BI)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    new-instance v3, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    mul-int v4, v15, v0

    int-to-float v4, v4

    const/16 v5, 0x46

    mul-int v8, v5, v0

    int-to-float v5, v8

    const/16 v6, 0x37

    mul-int v9, v6, v0

    int-to-float v6, v9

    invoke-direct {v3, v7, v4, v5, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(FFFF)V

    move-object v2, v3

    new-instance v3, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;

    invoke-direct {v3}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;-><init>()V

    iput-byte v12, v3, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->spreadMode:B

    iput v7, v3, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->x1:F

    mul-int v4, v15, v0

    int-to-float v4, v4

    iput v4, v3, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->y1:F

    const/16 v4, 0x46

    mul-int v8, v4, v0

    int-to-float v4, v8

    iput v4, v3, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->x2:F

    mul-int/2addr v15, v0

    int-to-float v4, v15

    iput v4, v3, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->y2:F

    const/4 v4, 0x2

    new-array v5, v4, [I

    fill-array-data v5, :array_0

    iput-object v5, v3, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->colors:[I

    new-array v4, v4, [F

    fill-array-data v4, :array_1

    iput-object v4, v3, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->positions:[F

    invoke-virtual {v3}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;->updateGradient()V

    new-instance v4, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v3}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeFill;-><init>(BLcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;)V

    invoke-virtual {v2, v4}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;->appendAttribute(Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V

    new-instance v5, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$1;

    invoke-direct {v5, v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$1;-><init>(Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    return-object v5

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1000000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static getVersion()I
    .locals 1

    const v0, 0x24def

    return v0
.end method

.method private needMirroring()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mGetLayoutDirection:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->isAutoMirrored()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-ne v1, v3, :cond_0

    move v0, v3

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private static parseTileMode(I)Landroid/graphics/Shader$TileMode;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    sget-object v0, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    return-object v0

    :pswitch_1
    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    return-object v0

    :pswitch_2
    sget-object v0, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static sprObtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private updateCachedBitmap(III)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheDensityDpi:I

    if-eq v0, p3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$300(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->unlock(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iput v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheDensityDpi:I

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$300(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->getCache(III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheDensityDpi:I

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v2}, Lcom/samsung/android/graphics/spr/document/SprDocument;->isPredraw()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v2, v1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->preDraw(I)V

    :cond_4
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1000(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)I

    move-result v7

    move v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/graphics/spr/document/SprDocument;->draw(Landroid/graphics/Canvas;IIII)V

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$300(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheDensityDpi:I

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->addCache(Landroid/graphics/Bitmap;I)V

    :cond_5
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$300(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->lock(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private updateDensity(Landroid/content/res/Resources;)V
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getDeviceDensityDpi(Landroid/content/res/Resources;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1000(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)I

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v1, v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1002(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;I)I

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$300(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v3}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->unlock(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheDensityDpi:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v1, v2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$802(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/graphics/NinePatch;)Landroid/graphics/NinePatch;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v1, v2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1602(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private updateDstRectAndInsetsIfDirty()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$400(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$500(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    sget-object v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mGetLayoutDirection:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1200(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getIntrinsicHeight()I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-static/range {v1 .. v6}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->copyBounds(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method

.method private updateLocalState(Landroid/content/res/Resources;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$100(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateDensity(Landroid/content/res/Resources;)V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->getDensityScale()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-super {p0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1376(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;I)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    sget-object v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mExtractThemeAttrs:Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-static {v1, v4}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1402(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;[I)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-static {v1, v2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1402(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;[I)[I

    :goto_0
    sget v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_src:I

    invoke-virtual {p1, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-eqz v4, :cond_1

    move-object v5, v2

    :try_start_1
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    move-object v5, v6

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->createFromStreamInternal(Ljava/lang/String;Ljava/io/InputStream;)Lcom/samsung/android/graphics/spr/document/SprDocument;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->setDocument(Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v6}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$000(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Lcom/samsung/android/graphics/spr/document/SprDocument;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    if-eqz v5, :cond_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    :goto_2
    sget v5, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_tintMode:I

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    if-eq v5, v6, :cond_2

    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    sget-object v7, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mParseTintMode:Ljava/lang/reflect/Method;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    const/4 v3, 0x1

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    aput-object v9, v8, v3

    invoke-virtual {v7, v2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PorterDuff$Mode;

    invoke-static {v6, v2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$202(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v6}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$202(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    :cond_2
    :goto_3
    sget v2, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_tint:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v3, v2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$102(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    sget v6, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_gravity:I

    const/16 v7, 0x77

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v3, v6}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1202(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;I)I

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    sget v6, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_autoMirrored:I

    iget-object v7, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v7}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1500(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Z

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-static {v3, v6}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1502(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Z)Z

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v3}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$600(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v3

    sget v6, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_alpha:I

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    sget v3, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_tileMode:I

    const/4 v6, -0x2

    invoke-virtual {p1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-eq v3, v6, :cond_4

    invoke-static {v3}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v7

    invoke-virtual {p0, v7, v7}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    :cond_4
    sget v7, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_tileModeX:I

    invoke-virtual {p1, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    if-eq v7, v6, :cond_5

    invoke-static {v7}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    :cond_5
    sget v8, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mBitmapDrawable_tileModeY:I

    invoke-virtual {p1, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    if-eq v8, v6, :cond_6

    invoke-static {v8}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->parseTileMode(I)Landroid/graphics/Shader$TileMode;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    :cond_6
    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateDensity(Landroid/content/res/Resources;)V

    return-void
.end method

.method private updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1400(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)[I

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    :try_start_0
    sget-object v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mResolveAttributes:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1400(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)[I

    move-result-object v6

    aput-object v6, v5, v3

    sget-object v6, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mStyleableBitmapDrawable:[I

    aput-object v6, v5, v2

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/res/TypedArray;

    move-object v1, v4

    invoke-direct {p0, v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v4

    if-eqz v1, :cond_2

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    throw v2

    :cond_2
    :goto_2
    :try_start_2
    sget-object v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCanApplyTheme:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$100(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    nop

    move v1, v3

    :goto_3
    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$100(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    :try_start_3
    sget-object v4, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mObtainForTheme:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$100(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v4, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/ColorStateList;

    invoke-static {v0, v2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$102(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v2

    :cond_3
    :goto_4
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_1e

    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    if-nez v0, :cond_0

    goto/16 :goto_f

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v4}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$400(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v4}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$500(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v4}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v4, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v7, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTmpFloats:[F

    invoke-virtual {v4, v7}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v4, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTmpFloats:[F

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v7, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTmpFloats:[F

    const/4 v8, 0x4

    aget v7, v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget-object v8, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTmpFloats:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    cmpl-float v8, v8, v5

    if-nez v8, :cond_1

    iget-object v8, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTmpFloats:[F

    const/4 v9, 0x3

    aget v8, v8, v9

    cmpl-float v8, v8, v5

    if-nez v8, :cond_1

    iget-object v8, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v4

    float-to-int v0, v8

    iget-object v8, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v7

    float-to-int v3, v8

    const/16 v8, 0x800

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    :cond_1
    iget-object v8, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v8, :cond_2

    iget-object v8, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v8, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v8, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v8, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    :goto_0
    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getIntrinsicHeight()I

    move-result v3

    :goto_1
    move v4, v3

    move v3, v0

    if-lez v3, :cond_1d

    if-gtz v4, :cond_4

    goto/16 :goto_e

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->isRunning()Z

    move-result v13

    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$600(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v14

    iget-object v15, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    monitor-enter v15

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$700(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$800(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/NinePatch;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$900(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)V

    goto/16 :goto_5

    :cond_5
    if-eqz v13, :cond_8

    const/4 v7, 0x0

    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mSprAnimation:Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->getAnimationIndex()I

    move-result v0

    move v12, v0

    iget-object v11, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v0, v12}, Lcom/samsung/android/graphics/spr/document/SprDocument;->preDraw(I)V

    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_7

    :try_start_2
    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v3, :cond_7

    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v4, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v8, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v7, v0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v6, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v16, v7

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v17, v11

    move/from16 v18, v12

    goto :goto_4

    :cond_7
    :goto_2
    :try_start_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v8, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v16, v0

    :goto_3
    :try_start_4
    iget-object v7, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1000(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v8, v16

    move v9, v3

    move v10, v4

    move-object/from16 v17, v11

    move v11, v12

    move/from16 v18, v12

    move v12, v0

    :try_start_5
    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/graphics/spr/document/SprDocument;->draw(Landroid/graphics/Canvas;IIII)V

    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v7, v16

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v7, v16

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v17, v11

    move/from16 v18, v12

    :goto_4
    :try_start_6
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    throw v0

    :catchall_4
    move-exception v0

    goto :goto_4

    :cond_8
    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1000(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)I

    move-result v0

    invoke-direct {v1, v3, v4, v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateCachedBitmap(III)V

    :cond_9
    :goto_5
    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1100(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_a

    if-eqz v13, :cond_f

    :cond_a
    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$400(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    if-nez v0, :cond_b

    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$500(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_9

    :cond_b
    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$400(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    iget-object v8, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v8}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$500(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v8

    new-instance v9, Landroid/graphics/BitmapShader;

    iget-object v10, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    if-eqz v10, :cond_c

    iget-object v10, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    goto :goto_6

    :cond_c
    iget-object v10, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    :goto_6
    if-nez v0, :cond_d

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_7

    :cond_d
    move-object v11, v0

    :goto_7
    if-nez v8, :cond_e

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    goto :goto_8

    :cond_e
    move-object v12, v8

    :goto_8
    invoke-direct {v9, v10, v11, v12}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v14, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_9
    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0, v6}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1102(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Z)Z

    :cond_f
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_10

    invoke-virtual {v14}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v6, 0x1

    goto :goto_a

    :cond_10
    nop

    :goto_a
    move v0, v6

    invoke-virtual {v14}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->needMirroring()Z

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, -0x40800000    # -1.0f

    if-nez v6, :cond_16

    iget-object v11, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v11}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$700(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Z

    move-result v11

    if-eqz v11, :cond_11

    iget-object v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v5}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$800(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/NinePatch;

    move-result-object v5

    if-eqz v5, :cond_1b

    iget-object v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v5}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$800(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/NinePatch;

    move-result-object v5

    iget-object v9, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v9, v14}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_d

    :cond_11
    if-eqz v8, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v11, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    invoke-virtual {v2, v11, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v2, v10, v9}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_12
    iget-object v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_14

    iget-object v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_13

    iget-object v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    goto :goto_b

    :cond_13
    iget-object v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    :goto_b
    iget-object v9, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5, v7, v9, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_14
    if-eqz v13, :cond_15

    iget-object v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mSprAnimation:Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;

    invoke-virtual {v5}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->update()V

    :cond_15
    if-eqz v8, :cond_1b

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_d

    :cond_16
    if-eqz v8, :cond_18

    iget-object v11, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    if-nez v11, :cond_17

    new-instance v11, Landroid/graphics/Matrix;

    invoke-direct {v11}, Landroid/graphics/Matrix;-><init>()V

    iput-object v11, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    :cond_17
    iget-object v11, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    iget-object v12, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    iget-object v15, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v15

    int-to-float v12, v12

    invoke-virtual {v11, v12, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v10, v9}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_c

    :cond_18
    iget-object v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    if-eqz v5, :cond_1a

    iput-object v7, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mMirrorMatrix:Landroid/graphics/Matrix;

    iget-object v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    if-nez v5, :cond_19

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    :cond_19
    iget-object v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mIdentityMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v6, v5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v14, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1a
    :goto_c
    iget-object v5, v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1b
    :goto_d
    if-eqz v0, :cond_1c

    invoke-virtual {v14, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1c
    return-void

    :catchall_5
    move-exception v0

    :try_start_8
    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    :cond_1d
    :goto_e
    return-void

    :cond_1e
    :goto_f
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->stop()V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$300(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Lcom/samsung/android/graphics/spr/cache/SprCacheManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcom/samsung/android/graphics/spr/cache/SprCacheManager;->unlock(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheDensityDpi:I

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mSprAnimation:Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mAnimationBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDstRect:Landroid/graphics/Rect;

    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$600(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1000(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateCachedBitmap(III)V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$600(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getChangingConfigurations()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1376(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;I)I

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    return-object v0
.end method

.method public getDocument()Lcom/samsung/android/graphics/spr/document/SprDocument;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    return-object v0
.end method

.method public getGravity()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1200(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)I

    move-result v0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1200(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)I

    move-result v0

    const/4 v1, -0x3

    const/16 v2, 0x77

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mCacheBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$600(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getAlpha()I

    move-result v2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    nop

    :cond_2
    :goto_0
    return v1
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->getDensityScale()F

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v3, v3, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v4, v4, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v5, v5, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingLeft:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingTop:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingRight:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v2, v2, Lcom/samsung/android/graphics/spr/document/SprDocument;->mPaddingBottom:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getTileModeX()Landroid/graphics/Shader$TileMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$400(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    return-object v0
.end method

.method public getTileModeY()Landroid/graphics/Shader$TileMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$500(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    sget-object v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mStyleableBitmapDrawable:[I

    invoke-static {p1, p4, p3, v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->sprObtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateLocalState(Landroid/content/res/Resources;)V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1500(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mSprAnimation:Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mSprAnimation:Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStateful()Z
    .locals 1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$100(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$100(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    new-instance v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-direct {v0, v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;-><init>(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateDstRectAndInsetsIfDirty()V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$100(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$200(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$100(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$200(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateTintFilterInternal(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->invalidateSelf()V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$600(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$600(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1500(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1502(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Z)Z

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$600(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->invalidateSelf()V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1200(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1202(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;I)I

    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateDstRectAndInsetsIfDirty()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTileModeX(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$500(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$400(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v1

    if-ne v1, p1, :cond_0

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$500(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v1

    if-eq v1, p2, :cond_1

    :cond_0
    invoke-static {v0, p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$402(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;

    invoke-static {v0, p2}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$502(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/graphics/Shader$TileMode;)Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$1102(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Z)Z

    invoke-direct {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateDstRectAndInsetsIfDirty()V

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public final setTileModeY(Landroid/graphics/Shader$TileMode;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$400(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/Shader$TileMode;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$102(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$100(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$200(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateTintFilterInternal(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->invalidateSelf()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mState:Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;

    invoke-static {v0, p1}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$202(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$100(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;->access$200(Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable$SprState;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateTintFilterInternal(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->stop()V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getFrameAnimationCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    new-instance v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationFrame;-><init>(Landroid/graphics/drawable/Drawable;Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mSprAnimation:Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getValueAnimationObjects()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->isIntrinsic()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/SprDocument;->clone()Lcom/samsung/android/graphics/spr/document/SprDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    :goto_0
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimationValue;-><init>(Landroid/graphics/drawable/Drawable;Lcom/samsung/android/graphics/spr/document/SprDocument;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mSprAnimation:Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mSprAnimation:Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mSprAnimation:Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->start()V

    :cond_4
    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mSprAnimation:Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mSprAnimation:Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mSprAnimation:Lcom/samsung/android/graphics/spr/animation/SprDrawableAnimation;

    :cond_0
    return-void
.end method

.method public toSPR(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->toSPR(Ljava/io/OutputStream;)Z

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    if-nez v0, :cond_0

    const-string v0, "SprDocument is null"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mTop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mRight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    iget v1, v1, Lcom/samsung/android/graphics/spr/document/SprDocument;->mBottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\nLoading:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getLoadingTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms\nElement:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getTotalElementCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nSegment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getTotalSegmentCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nAttribute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mDocument:Lcom/samsung/android/graphics/spr/document/SprDocument;

    invoke-virtual {v1}, Lcom/samsung/android/graphics/spr/document/SprDocument;->getTotalAttributeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateTintFilterInternal(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 5

    sget-object v0, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mUpdateTintFilter:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mUpdateTintFilter:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v1, 0x0

    :try_start_0
    sget-object v3, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mUpdateTintFilter:Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v2

    const/4 v2, 0x2

    aput-object p3, v4, v2

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PorterDuffColorFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    sget-object v2, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->mUpdateTintFilter:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    return-object v0
.end method
