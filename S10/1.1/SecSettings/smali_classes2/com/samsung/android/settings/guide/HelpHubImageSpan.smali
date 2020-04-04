.class public final Lcom/samsung/android/settings/guide/HelpHubImageSpan;
.super Landroid/text/style/ImageSpan;
.source "HelpHubImageSpan.java"


# instance fields
.field private finalScale:F

.field public fontScale:F

.field public imageSideMargin:F

.field private mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private spanWidth:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->fontScale:F

    iput v0, p0, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->imageSideMargin:F

    iput v0, p0, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->finalScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->spanWidth:F

    return-void
.end method

.method private calculateFinalScale(FLandroid/graphics/drawable/Drawable;Landroid/graphics/Paint$FontMetricsInt;)V
    .locals 3

    iget v0, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-lt v0, v1, :cond_1

    iget v0, p3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v1, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->fontScale:F

    iput v0, p0, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->finalScale:F

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->fontScale:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, p1

    if-lez v2, :cond_2

    div-float v1, p1, v0

    :cond_2
    iget v2, p0, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->fontScale:F

    mul-float/2addr v2, v1

    iput v2, p0, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->finalScale:F

    nop

    :goto_1
    return-void
.end method

.method private getCachedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/Drawable;

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->mDrawableRef:Ljava/lang/ref/WeakReference;

    :cond_1
    return-object v1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 14

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    invoke-direct {v1}, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    move/from16 v5, p7

    int-to-float v0, v5

    iget v6, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v6, v6

    add-float/2addr v6, v0

    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v0, v0

    iget v7, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v7, v7

    sub-float v7, v0, v7

    invoke-direct {v1, v7, v4, v3}, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->calculateFinalScale(FLandroid/graphics/drawable/Drawable;Landroid/graphics/Paint$FontMetricsInt;)V

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v8, v1, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->finalScale:F

    mul-float/2addr v8, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v9, v1, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->finalScale:F

    mul-float/2addr v9, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float v10, v7, v0

    add-float/2addr v10, v6

    div-float v11, v8, v0

    sub-float/2addr v10, v11

    iget v11, v1, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->spanWidth:F

    sub-float/2addr v11, v9

    div-float/2addr v11, v0

    add-float v11, p5, v11

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v2, v11, v10}, Landroid/graphics/Canvas;->translate(FF)V

    iget v0, v1, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->finalScale:F

    iget v12, v1, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->finalScale:F

    invoke-virtual {v2, v0, v12}, Landroid/graphics/Canvas;->scale(FF)V

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    const-string v0, "Settings-HelpHubImageSpan"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fontScale : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->fontScale:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", finalScale : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->finalScale:F

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " , image height : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, " , text_area_height : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "Settings-HelpHubImageSpan"

    invoke-virtual {v3}, Landroid/graphics/Paint$FontMetricsInt;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->getCachedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->imageSideMargin:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->imageSideMargin:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->fontScale:F

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->spanWidth:F

    iget v2, p0, Lcom/samsung/android/settings/guide/HelpHubImageSpan;->spanWidth:F

    float-to-int v2, v2

    return v2
.end method
