.class public Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;
.super Landroid/view/View;
.source "SideScreenDividerHandleView.java"


# static fields
.field private static final HEIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final WIDTH_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentHeight:I

.field private mCurrentWidth:I

.field private final mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->WIDTH_PROPERTY:Landroid/util/Property;

    new-instance v0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView$2;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->HEIGHT_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602c7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07078e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mWidth:I

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07078d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mHeight:I

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mWidth:I

    iput v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mCurrentWidth:I

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mHeight:I

    iput v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mCurrentHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mCurrentWidth:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mCurrentWidth:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mCurrentHeight:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mCurrentHeight:I

    return p1
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mCurrentWidth:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mCurrentHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mCurrentWidth:I

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mCurrentHeight:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v4, v0

    int-to-float v5, v1

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mCurrentWidth:I

    add-int/2addr v3, v0

    int-to-float v6, v3

    iget v3, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mCurrentHeight:I

    add-int/2addr v3, v1

    int-to-float v7, v3

    int-to-float v8, v2

    int-to-float v9, v2

    iget-object v10, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setGuideViewMode(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601c3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602c7

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/systemui/sidescreen/SideScreenDividerHandleView;->invalidate()V

    return-void
.end method
