.class public Lcom/samsung/android/sdk/sfe/SFText;
.super Ljava/lang/Object;
.source "SFText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SFText"


# instance fields
.field private firstInitializedFlag:Z

.field private hasEffect:Z

.field private isBoldStyle:Z

.field private isItalicStyle:Z

.field private isSetFontFromAsset:Z

.field private isSetFontFromFile:Z

.field private mCharSequense:Ljava/lang/CharSequence;

.field private mContext:Landroid/content/Context;

.field private mFlipFont:Ljava/lang/String;

.field private mFontFamily:Ljava/lang/String;

.field private mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

.field private mFontPath:Ljava/lang/String;

.field private mHandle:I

.field private mHeight:I

.field private mLayout:Landroid/text/Layout;

.field private mLines:I

.field private mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/String;

.field private mWidth:I

.field private owner:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isBoldStyle:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isItalicStyle:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromAsset:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromFile:Z

    iput v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mLines:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mHandle:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->firstInitializedFlag:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    iput-object p1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->firstInitializedFlag:Z

    return-void
.end method

.method private native SFText_AddInnerShadowTextEffect(FFFIF)I
.end method

.method private native SFText_AddLinearGradientTextEffect(FF[I[F[FF)I
.end method

.method private native SFText_AddOuterGlowTextEffect(FIF)I
.end method

.method private native SFText_AddOuterShadowTextEffect(FFFIF)I
.end method

.method private native SFText_AddStrokeTextEffect(FIFII)I
.end method

.method private native SFText_ClearAllTextEffect()V
.end method

.method private native SFText_GetDrawingBitmapSize()[I
.end method

.method private native SFText_GetEffectBottomOffset()I
.end method

.method private native SFText_GetEffectLeftOffset()I
.end method

.method private native SFText_GetEffectRightOffset()I
.end method

.method private native SFText_GetEffectTopOffset()I
.end method

.method private native SFText_RenderTextEffect()[I
.end method

.method private native SFText_SetBackgroundColor(IZ)Z
.end method

.method private native SFText_SetFont(Ljava/lang/String;)Z
.end method

.method private native SFText_SetFont2(Ljava/lang/String;[B)Z
.end method

.method private native SFText_SetFont3(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
.end method

.method private native SFText_SetLayout(Landroid/text/Layout;)Z
.end method

.method private native SFText_SetLine(I)Z
.end method

.method private native SFText_SetPaint(Landroid/graphics/Paint;)Z
.end method

.method private native SFText_SetView(Landroid/widget/TextView;)Z
.end method

.method private native SFText_finalize()V
.end method

.method private getDrawingBitmapSize()[I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_GetDrawingBitmapSize()[I

    move-result-object v0

    return-object v0
.end method

.method private getEffectBottomOffset()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_GetEffectBottomOffset()I

    move-result v0

    return v0
.end method

.method private getEffectLeftOffset()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_GetEffectLeftOffset()I

    move-result v0

    return v0
.end method

.method private getEffectRightOffset()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_GetEffectRightOffset()I

    move-result v0

    return v0
.end method

.method private getEffectTopOffset()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_GetEffectTopOffset()I

    move-result v0

    return v0
.end method

.method private getFontPath()V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromAsset:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromFile:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v0, "sans-serif"

    iput-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/sdk/sfe/SFText;->isBoldStyle:Z

    iget-boolean v3, p0, Lcom/samsung/android/sdk/sfe/SFText;->isItalicStyle:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getSystemFontName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v1, "SFText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "System not support fontFamily = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' , change to default fontFamily"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "sans-serif"

    iput-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    iget-object v2, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/sdk/sfe/SFText;->isBoldStyle:Z

    iget-boolean v4, p0, Lcom/samsung/android/sdk/sfe/SFText;->isItalicStyle:Z

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getSystemFontName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/fonts/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFlipFont:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFlipFont:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontPath:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->setSFFontFile(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method private init()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->firstInitializedFlag:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->initialize()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->getFontManager()Lcom/samsung/android/sdk/sfe/font/FontManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    iget-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontManager:Lcom/samsung/android/sdk/sfe/font/FontManager;

    iget-object v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/sfe/font/FontManager;->getFlipFontPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFlipFont:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->firstInitializedFlag:Z

    return-void
.end method

.method private renderTextEffect()[I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_RenderTextEffect()[I

    move-result-object v0

    return-object v0
.end method

.method private setSFFontFile(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetFont3(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private setSFFontFile(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetFont(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private setSFFontFile(Ljava/lang/String;[B)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetFont2(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private setSFTextBackgroundColorSpan()V
    .locals 7

    const/high16 v0, -0x1000000

    const/4 v1, 0x0

    new-instance v2, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/samsung/android/sdk/sfe/SFText;->mCharSequense:Ljava/lang/CharSequence;

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/sfe/SFText;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    :goto_0
    if-ltz v4, :cond_1

    aget-object v5, v3, v4

    instance-of v6, v5, Landroid/text/style/BackgroundColorSpan;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v6}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetBackgroundColor(IZ)Z

    return-void
.end method

.method private setSFTextLayout(Landroid/text/Layout;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetLayout(Landroid/text/Layout;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private setSFTextLine(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetLine(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private setSFTextPaint(Landroid/graphics/Paint;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetPaint(Landroid/graphics/Paint;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private setSFTextView(Landroid/widget/TextView;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_SetView(Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/sfe/util/SFError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/sfe/SFText;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private throwUncheckedException(I)V
    .locals 0

    invoke-static {p1}, Lcom/samsung/android/sdk/sfe/util/SFError;->ThrowUncheckedException(I)V

    return-void
.end method


# virtual methods
.method public addInnerShadowTextEffect(FFFIF)I
    .locals 2

    const-string v0, "SFText"

    const-string v1, "addInnerShadowTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_AddInnerShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public addLinearGradientTextEffect(FF[I[F[FF)I
    .locals 2

    const-string v0, "SFText"

    const-string v1, "addLinearGradientTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_AddLinearGradientTextEffect(FF[I[F[FF)I

    move-result v0

    return v0
.end method

.method public addOuterGlowTextEffect(FIF)I
    .locals 2

    const-string v0, "SFText"

    const-string v1, "addOuterGlowTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_AddOuterGlowTextEffect(FIF)I

    move-result v0

    return v0
.end method

.method public addOuterShadowTextEffect(FFFIF)I
    .locals 2

    const-string v0, "SFText"

    const-string v1, "addOuterShadowTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_AddOuterShadowTextEffect(FFFIF)I

    move-result v0

    return v0
.end method

.method public addStrokeTextEffect(FIF)I
    .locals 7

    const-string v0, "SFText"

    const-string v1, "addStrokeTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_AddStrokeTextEffect(FIFII)I

    move-result v0

    return v0
.end method

.method public clearAllTextEffect()V
    .locals 2

    const-string v0, "SFText"

    const-string v1, "clearAllTextEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mHandle:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_ClearAllTextEffect()V

    return-void
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->SFText_finalize()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->mHandle:I

    return-void
.end method

.method public hasEffect()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->hasEffect:Z

    return v0
.end method

.method public render(Landroid/graphics/Canvas;II)Z
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {}, Lcom/samsung/android/sdk/sfe/font/FontManager;->isSetConfigFinished()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    :cond_0
    const-string v0, "SFText"

    const-string/jumbo v4, "render() - Start!"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->mWidth:I

    iget-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->mHeight:I

    iget-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->mPaint:Landroid/graphics/Paint;

    iget-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->mLayout:Landroid/text/Layout;

    iget-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->mCharSequense:Ljava/lang/CharSequence;

    iget-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->mCharSequense:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->mText:Ljava/lang/String;

    iget-object v0, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_1

    iput-boolean v3, v1, Lcom/samsung/android/sdk/sfe/SFText;->isBoldStyle:Z

    iput-boolean v3, v1, Lcom/samsung/android/sdk/sfe/SFText;->isItalicStyle:Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Typeface;->isBold()Z

    move-result v4

    iput-boolean v4, v1, Lcom/samsung/android/sdk/sfe/SFText;->isBoldStyle:Z

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v4

    iput-boolean v4, v1, Lcom/samsung/android/sdk/sfe/SFText;->isItalicStyle:Z

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/sfe/SFText;->getFontPath()V

    iget-object v4, v1, Lcom/samsung/android/sdk/sfe/SFText;->mLayout:Landroid/text/Layout;

    if-nez v4, :cond_2

    const-string v4, "SFText"

    const-string v5, "Can not render text effect - layout is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    iget v4, v1, Lcom/samsung/android/sdk/sfe/SFText;->mWidth:I

    if-lez v4, :cond_4

    iget v4, v1, Lcom/samsung/android/sdk/sfe/SFText;->mHeight:I

    if-gtz v4, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, v1, Lcom/samsung/android/sdk/sfe/SFText;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Lcom/samsung/android/sdk/sfe/SFText;->setSFTextPaint(Landroid/graphics/Paint;)V

    iget v4, v1, Lcom/samsung/android/sdk/sfe/SFText;->mLines:I

    invoke-direct {v1, v4}, Lcom/samsung/android/sdk/sfe/SFText;->setSFTextLine(I)V

    iget-object v4, v1, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    invoke-direct {v1, v4}, Lcom/samsung/android/sdk/sfe/SFText;->setSFTextView(Landroid/widget/TextView;)V

    iget-object v4, v1, Lcom/samsung/android/sdk/sfe/SFText;->mLayout:Landroid/text/Layout;

    invoke-direct {v1, v4}, Lcom/samsung/android/sdk/sfe/SFText;->setSFTextLayout(Landroid/text/Layout;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/sfe/SFText;->setSFTextBackgroundColorSpan()V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/sfe/SFText;->renderTextEffect()[I

    move-result-object v6

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/sfe/SFText;->getDrawingBitmapSize()[I

    move-result-object v4

    aget v5, v4, v3

    move v13, v5

    const/4 v14, 0x1

    aget v5, v4, v14

    move v15, v5

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v15, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v12, v5

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v8, v13

    move v11, v13

    move-object v3, v12

    move v12, v15

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/sfe/SFText;->getEffectLeftOffset()I

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/sfe/SFText;->getEffectTopOffset()I

    move-result v7

    sub-int v9, p2, v5

    int-to-float v9, v9

    sub-int v11, p3, v7

    int-to-float v11, v11

    invoke-virtual {v2, v9, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v9, v1, Lcom/samsung/android/sdk/sfe/SFText;->mPaint:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v11, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    const-string v9, "SFText"

    const-string/jumbo v11, "render() - End."

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v14

    :cond_4
    :goto_1
    const-string v3, "SFText"

    const-string v4, "Can not render text effect - width and height must be > 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    return v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "SFText"

    const-string/jumbo v4, "render() - Fail."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mFontFamily:Ljava/lang/String;

    return-void
.end method

.method public setFontFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2

    const-string v0, "SFText"

    const-string/jumbo v1, "setFontFromAsset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/sfe/SFText;->setSFFontFile(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromAsset:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromFile:Z

    :cond_1
    return-void
.end method

.method public setFontFromFile(Ljava/lang/String;)V
    .locals 2

    const-string v0, "SFText"

    const-string/jumbo v1, "setFontFromFile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/sfe/SFText;->init()V

    invoke-static {}, Lcom/samsung/android/sdk/sfe/SFEffect;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/sfe/SFText;->setSFFontFile(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromAsset:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/sdk/sfe/SFText;->isSetFontFromFile:Z

    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/sfe/SFText;->mLines:I

    return-void
.end method

.method public setOwnerView(Landroid/widget/TextView;)V
    .locals 2

    const-string v0, "SFText"

    const-string/jumbo v1, "setOwnerView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/sfe/SFText;->owner:Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const-string v0, "SFText"

    const-string/jumbo v1, "setOwnerView - Textview is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
