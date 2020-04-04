.class public Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;
.super Ljava/lang/Object;
.source "MultiWindowEdgeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustMinimalTaskBounds(Landroid/graphics/Rect;III)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    const/4 v1, 0x1

    if-lt p2, v1, :cond_9

    if-ge p3, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v3, p3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    const/4 v4, 0x5

    if-eq p1, v4, :cond_5

    const/16 v4, 0x9

    if-eq p1, v4, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    iget v4, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p2

    iput v4, p0, Landroid/graphics/Rect;->right:I

    :cond_4
    if-eqz v3, :cond_7

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p3

    iput v4, p0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    iget v4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, p2

    iput v4, p0, Landroid/graphics/Rect;->left:I

    :cond_6
    if-eqz v3, :cond_7

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p3

    iput v4, p0, Landroid/graphics/Rect;->top:I

    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    move v0, v1

    nop

    :cond_8
    return v0

    :cond_9
    :goto_3
    return v0
.end method

.method public static applyResizeRect(Landroid/graphics/Rect;III)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iput p2, p0, Landroid/graphics/Rect;->right:I

    iput p3, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_2
    iput p2, p0, Landroid/graphics/Rect;->left:I

    iput p3, p0, Landroid/graphics/Rect;->top:I

    nop

    :goto_0
    return-void
.end method

.method public static convertDesktopMouseIcon(I)I
    .locals 1

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return p0

    :pswitch_0
    const/16 v0, 0x278c

    return v0

    :pswitch_1
    const/16 v0, 0x278d

    return v0

    :pswitch_2
    const/16 v0, 0x278b

    return v0

    :pswitch_3
    const/16 v0, 0x278a

    return v0

    :cond_0
    const/16 v0, 0x2789

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3f6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static dipToPixel(ILandroid/util/DisplayMetrics;)I
    .locals 2

    int-to-float v0, p0

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public static edgeFlagToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "EDGE_RIGHT_TOP"

    return-object v0

    :cond_1
    const-string v0, "EDGE_LEFT_TOP"

    return-object v0
.end method

.method public static isLeftSide(II)Z
    .locals 1

    div-int/lit8 v0, p0, 0x2

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isTopSide(II)Z
    .locals 1

    div-int/lit8 v0, p0, 0x2

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
