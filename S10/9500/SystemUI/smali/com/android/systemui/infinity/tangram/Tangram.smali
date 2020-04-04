.class public Lcom/android/systemui/infinity/tangram/Tangram;
.super Ljava/lang/Object;
.source "Tangram.java"


# instance fields
.field public alpha:F

.field public centerImageAlpha:F

.field public doubleLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

.field public endTx:F

.field public endTy:F

.field fixAlpha:F

.field public fixX:F

.field public fixY:F

.field public gyroAlpha:F

.field public gyroScale:F

.field public gyroTx:F

.field public gyroTy:F

.field public gyroValue:F

.field public hideingProgress:F

.field public initTx:F

.field public initTy:F

.field public layer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

.field public leftImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

.field public leftImageAlpha:F

.field public mergedLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

.field public name:Ljava/lang/String;

.field needDoubleBottomDraw:Z

.field public rightImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

.field public rightImageAlpha:F

.field screenH:F

.field screenW:F

.field public showingProgress:F

.field public sx:F

.field public sy:F

.field public sz:F

.field public tx:F

.field public ty:F

.field public tz:F

.field zValue:F


# direct methods
.method public constructor <init>(Ljava/lang/String;ZFFFFFFFLcom/android/systemui/infinity/tangram/TangramObjectInterface;Lcom/android/systemui/infinity/tangram/TangramObjectInterface;Lcom/android/systemui/infinity/tangram/TangramObjectInterface;Lcom/android/systemui/infinity/tangram/TangramObjectInterface;Lcom/android/systemui/infinity/tangram/TangramObjectInterface;)V
    .locals 15

    move-object v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/android/systemui/infinity/tangram/Tangram;->alpha:F

    iput v2, v0, Lcom/android/systemui/infinity/tangram/Tangram;->sx:F

    iput v2, v0, Lcom/android/systemui/infinity/tangram/Tangram;->sy:F

    iput v2, v0, Lcom/android/systemui/infinity/tangram/Tangram;->sz:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/Tangram;->centerImageAlpha:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    iput v2, v0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iput v2, v0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    const v1, -0x3f61999a    # -4.95f

    iput v1, v0, Lcom/android/systemui/infinity/tangram/Tangram;->zValue:F

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/Tangram;->name:Ljava/lang/String;

    move-object/from16 v2, p10

    iput-object v2, v0, Lcom/android/systemui/infinity/tangram/Tangram;->layer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/systemui/infinity/tangram/Tangram;->mergedLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    move/from16 v4, p3

    iput v4, v0, Lcom/android/systemui/infinity/tangram/Tangram;->fixAlpha:F

    move/from16 v5, p2

    iput-boolean v5, v0, Lcom/android/systemui/infinity/tangram/Tangram;->needDoubleBottomDraw:Z

    move-object/from16 v6, p12

    iput-object v6, v0, Lcom/android/systemui/infinity/tangram/Tangram;->doubleLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    move-object/from16 v7, p13

    iput-object v7, v0, Lcom/android/systemui/infinity/tangram/Tangram;->leftImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    move-object/from16 v8, p14

    iput-object v8, v0, Lcom/android/systemui/infinity/tangram/Tangram;->rightImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    move/from16 v9, p4

    iput v9, v0, Lcom/android/systemui/infinity/tangram/Tangram;->fixX:F

    move/from16 v10, p5

    iput v10, v0, Lcom/android/systemui/infinity/tangram/Tangram;->fixY:F

    move/from16 v11, p6

    iput v11, v0, Lcom/android/systemui/infinity/tangram/Tangram;->initTx:F

    move/from16 v12, p7

    iput v12, v0, Lcom/android/systemui/infinity/tangram/Tangram;->initTy:F

    move/from16 v13, p8

    iput v13, v0, Lcom/android/systemui/infinity/tangram/Tangram;->endTx:F

    move/from16 v14, p9

    iput v14, v0, Lcom/android/systemui/infinity/tangram/Tangram;->endTy:F

    return-void
.end method


# virtual methods
.method public changeViewPort(FF)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->screenW:F

    iput p2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->screenH:F

    return-void
.end method

.method public draw([FF)V
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->layer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getAlpha()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->layer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getScale()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getScale()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setScale(FF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->layer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getTx()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getTy()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/infinity/tangram/Tangram;->zValue:F

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setTranslation(FFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->layer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-interface {v0, p1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->draw([F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->doubleLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->doubleLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getCenterImageAlpha()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->doubleLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getScale()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getScale()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setScale(FF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->doubleLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getTx()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getTy()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/infinity/tangram/Tangram;->zValue:F

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setTranslation(FFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->doubleLayer:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-interface {v0, p1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->draw([F)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->leftImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->leftImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getLeftImageAlpha()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->leftImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getScale()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getScale()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setScale(FF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->leftImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getTx()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getTy()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/infinity/tangram/Tangram;->zValue:F

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setTranslation(FFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->leftImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-interface {v0, p1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->draw([F)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->rightImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->rightImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getRightImageAlpha()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->rightImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getScale()F

    move-result v1

    mul-float/2addr v1, p2

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getScale()F

    move-result v2

    mul-float/2addr v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setScale(FF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->rightImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getTx()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/Tangram;->getTy()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/infinity/tangram/Tangram;->zValue:F

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->setTranslation(FFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->rightImage:Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-interface {v0, p1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->draw([F)V

    :cond_2
    return-void
.end method

.method public getAlpha()F
    .locals 3

    iget v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->fixAlpha:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    mul-float/2addr v0, v2

    return v0
.end method

.method public getCenterImageAlpha()F
    .locals 3

    iget v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->centerImageAlpha:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, v1

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->fixAlpha:F

    mul-float/2addr v0, v2

    return v0
.end method

.method public getLayerImageAlpha()F
    .locals 3

    iget v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public getLeftImageAlpha()F
    .locals 3

    iget v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public getRightImageAlpha()F
    .locals 3

    iget v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    mul-float/2addr v0, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public getScale()F
    .locals 3

    iget v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->sx:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    mul-float/2addr v0, v2

    return v0
.end method

.method public getTx()F
    .locals 4

    iget v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->fixX:F

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->initTx:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->tx:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->endTx:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getTy()F
    .locals 4

    iget v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->fixY:F

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->initTy:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v2

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->ty:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/tangram/Tangram;->endTy:F

    iget v2, p0, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method
