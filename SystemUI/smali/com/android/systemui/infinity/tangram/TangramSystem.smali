.class public abstract Lcom/android/systemui/infinity/tangram/TangramSystem;
.super Ljava/lang/Object;
.source "TangramSystem.java"

# interfaces
.implements Lcom/android/systemui/infinity/GalaxyRenderLifeCycleListener;


# static fields
.field public static ONE_DIRECTION_TILT:Z


# instance fields
.field calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

.field context:Landroid/content/Context;

.field protected hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field protected hideingProgress:F

.field ignoreGyro:Z

.field protected isLeft:Z

.field objectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/infinity/tangram/TangramObjectInterface;",
            ">;"
        }
    .end annotation
.end field

.field protected overallAlpha:F

.field protected overallScale:F

.field renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

.field screenHeight:F

.field screenWidth:F

.field protected showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field protected showingProgress:F

.field protected tangramList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/infinity/tangram/Tangram;",
            ">;"
        }
    .end annotation
.end field

.field protected tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

.field protected targetGyroValue:F

.field protected vertexData:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->ONE_DIRECTION_TILT:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;II)V
    .locals 50

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallAlpha:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallScale:F

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    const/4 v14, 0x0

    iput-boolean v14, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->isLeft:Z

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->objectList:Ljava/util/ArrayList;

    iput-boolean v14, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->ignoreGyro:Z

    iput-object v15, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->context:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->getTextureMapData()Lcom/android/systemui/infinity/tangram/TangramMapData;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    move-object/from16 v13, p2

    iput-object v13, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->VERTEX_DATA:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->vertexData:[[F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createCalculateHelper()Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    new-instance v2, Lcom/android/systemui/infinity/tangram/TangramSystem$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/infinity/tangram/TangramSystem$1;-><init>(Lcom/android/systemui/infinity/tangram/TangramSystem;)V

    invoke-virtual {v1, v2}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLCalculateUpdateListener;)Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    const/high16 v12, 0x44b40000    # 1440.0f

    iput v12, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->screenWidth:F

    const/high16 v11, 0x45390000    # 2960.0f

    iput v11, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->screenHeight:F

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    move-result-object v1

    move/from16 v10, p4

    invoke-virtual {v1, v10}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->loadData(I)Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;

    move-result-object v9

    move v1, v14

    :goto_0
    move v8, v1

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerName:[Ljava/lang/String;

    array-length v1, v1

    if-ge v8, v1, :cond_4

    const/16 v30, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapMaskFileName:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v31, 0x1

    if-nez v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v2, v2, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLayerFileName:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->getFrame(Ljava/lang/String;)Lcom/android/systemui/infinity/tangram/TangramMapModel;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v2, v2, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapMaskFileName:[Ljava/lang/String;

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->getFrame(Ljava/lang/String;)Lcom/android/systemui/infinity/tangram/TangramMapModel;

    move-result-object v6

    new-instance v32, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v1, v1, v8

    aget v5, v1, v14

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v1, v1, v8

    aget v16, v1, v31

    const/high16 v17, 0x44b40000    # 1440.0f

    const/high16 v18, 0x44b40000    # 1440.0f

    iget-boolean v4, v7, Lcom/android/systemui/infinity/tangram/TangramMapModel;->rotated:Z

    iget-object v1, v7, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v3, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    iget-object v1, v7, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v2, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    iget-object v1, v7, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->x:F

    iget-object v11, v7, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v11, v11, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->y:F

    iget-object v12, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v12, v12, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskSize:[[F

    aget-object v12, v12, v8

    aget v19, v12, v14

    iget-object v12, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v12, v12, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskSize:[[F

    aget-object v12, v12, v8

    aget v20, v12, v31

    const/high16 v21, 0x44b40000    # 1440.0f

    const/high16 v22, 0x44b40000    # 1440.0f

    iget-boolean v12, v6, Lcom/android/systemui/infinity/tangram/TangramMapModel;->rotated:Z

    iget-object v14, v6, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v14, v14, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    move/from16 v36, v1

    iget-object v1, v6, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move/from16 v37, v1

    iget-object v1, v6, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->x:F

    move/from16 v38, v1

    iget-object v1, v6, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->y:F

    move/from16 v39, v1

    iget-object v1, v9, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    move/from16 v40, v1

    iget-object v1, v9, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move/from16 v41, v1

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskMoveDistance:[[F

    aget-object v1, v1, v8

    const/16 v23, 0x0

    aget v25, v1, v23

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskMoveDistance:[[F

    aget-object v1, v1, v8

    aget v26, v1, v31

    move/from16 v24, v36

    move/from16 v35, v37

    move/from16 v36, v38

    move/from16 v37, v39

    move/from16 v38, v40

    move/from16 v39, v41

    move-object/from16 v1, v32

    move/from16 v40, v2

    move-object v2, v15

    move/from16 v41, v3

    move-object v3, v13

    move/from16 v42, v4

    move/from16 v4, p3

    move-object/from16 v43, v6

    move/from16 v6, v16

    move-object/from16 v44, v7

    move/from16 v7, v17

    move/from16 v45, v8

    move/from16 v8, v18

    move-object/from16 v46, v9

    move/from16 v9, v42

    move/from16 v10, v41

    move/from16 v16, v11

    move/from16 v11, v40

    move/from16 v18, v12

    move/from16 v12, v24

    move/from16 v13, v16

    move/from16 v33, v23

    move/from16 v23, v14

    move/from16 v14, v19

    move/from16 v15, v20

    move/from16 v16, v21

    move/from16 v17, v22

    move/from16 v19, v23

    move/from16 v20, v35

    move/from16 v21, v36

    move/from16 v22, v37

    move/from16 v23, v38

    move/from16 v24, v39

    invoke-direct/range {v1 .. v26}, Lcom/android/systemui/infinity/tangram/TangramSingleDrawLayer;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;IFFFFZFFFFFFFFZFFFFFFFF)V

    iget-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    move-object/from16 v47, v46

    goto :goto_1

    :cond_0
    move/from16 v45, v8

    move-object/from16 v46, v9

    move/from16 v33, v14

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v2, v2, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLayerFileName:[Ljava/lang/String;

    aget-object v2, v2, v45

    invoke-virtual {v1, v2}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->getFrame(Ljava/lang/String;)Lcom/android/systemui/infinity/tangram/TangramMapModel;

    move-result-object v15

    new-instance v16, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v1, v1, v45

    aget v5, v1, v33

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v1, v1, v45

    aget v6, v1, v31

    const/high16 v7, 0x44b40000    # 1440.0f

    const/high16 v8, 0x44b40000    # 1440.0f

    iget-boolean v9, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->rotated:Z

    iget-object v1, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v10, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    iget-object v1, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v11, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    iget-object v1, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v12, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->x:F

    iget-object v1, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v13, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->y:F

    move-object/from16 v14, v46

    iget-object v1, v14, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v4, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    iget-object v1, v14, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v3, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v17, v3

    move-object/from16 v3, p2

    move/from16 v18, v4

    move/from16 v4, p3

    move-object/from16 v47, v14

    move/from16 v14, v18

    move-object/from16 v18, v15

    move/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;IFFFFZFFFFFF)V

    iget-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v32, v1

    :goto_1
    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->bottomLayerImage:[Z

    aget-boolean v1, v1, v45

    if-eqz v1, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v2, v2, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLayerFileName:[Ljava/lang/String;

    aget-object v2, v2, v45

    invoke-virtual {v1, v2}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->getFrame(Ljava/lang/String;)Lcom/android/systemui/infinity/tangram/TangramMapModel;

    move-result-object v15

    new-instance v16, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v1, v1, v45

    aget v5, v1, v33

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v1, v1, v45

    aget v6, v1, v31

    const/high16 v7, 0x44b40000    # 1440.0f

    const/high16 v8, 0x44b40000    # 1440.0f

    iget-boolean v9, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->rotated:Z

    iget-object v1, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v10, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    iget-object v1, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v11, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    iget-object v1, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v12, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->x:F

    iget-object v1, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v13, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->y:F

    move-object/from16 v14, v47

    iget-object v1, v14, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v4, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    iget-object v1, v14, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v3, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v17, v3

    move-object/from16 v3, p2

    move/from16 v18, v4

    move/from16 v4, p3

    move-object/from16 v48, v14

    move/from16 v14, v18

    move-object/from16 v18, v15

    move/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;IFFFFZFFFFFF)V

    iget-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v34, v1

    goto :goto_2

    :cond_1
    move-object/from16 v48, v47

    move-object/from16 v34, v27

    :goto_2
    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLeftFileName:[Ljava/lang/String;

    aget-object v1, v1, v45

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v2, v2, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLeftFileName:[Ljava/lang/String;

    aget-object v2, v2, v45

    invoke-virtual {v1, v2}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->getFrame(Ljava/lang/String;)Lcom/android/systemui/infinity/tangram/TangramMapModel;

    move-result-object v15

    new-instance v16, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v1, v1, v45

    aget v5, v1, v33

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v1, v1, v45

    aget v6, v1, v31

    const/high16 v7, 0x44b40000    # 1440.0f

    const/high16 v8, 0x44b40000    # 1440.0f

    iget-boolean v9, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->rotated:Z

    iget-object v1, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v10, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    iget-object v1, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v11, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    iget-object v1, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v12, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->x:F

    iget-object v1, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v13, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->y:F

    move-object/from16 v14, v48

    iget-object v1, v14, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v4, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    iget-object v1, v14, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v3, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v17, v3

    move-object/from16 v3, p2

    move/from16 v18, v4

    move/from16 v4, p3

    move-object/from16 v49, v14

    move/from16 v14, v18

    move-object/from16 v18, v15

    move/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;IFFFFZFFFFFF)V

    iget-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v35, v1

    goto :goto_3

    :cond_2
    move-object/from16 v49, v48

    move-object/from16 v35, v28

    :goto_3
    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapRightFileName:[Ljava/lang/String;

    aget-object v1, v1, v45

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getMapDataManager()Lcom/android/systemui/infinity/tangram/TangramMapDataManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v2, v2, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapRightFileName:[Ljava/lang/String;

    aget-object v2, v2, v45

    invoke-virtual {v1, v2}, Lcom/android/systemui/infinity/tangram/TangramMapDataManager;->getFrame(Ljava/lang/String;)Lcom/android/systemui/infinity/tangram/TangramMapModel;

    move-result-object v15

    new-instance v16, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v1, v1, v45

    aget v5, v1, v33

    iget-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    aget-object v1, v1, v45

    aget v6, v1, v31

    const/high16 v7, 0x44b40000    # 1440.0f

    const/high16 v8, 0x44b40000    # 1440.0f

    iget-boolean v9, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->rotated:Z

    iget-object v1, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v10, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    iget-object v1, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v11, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    iget-object v1, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v12, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->x:F

    iget-object v1, v15, Lcom/android/systemui/infinity/tangram/TangramMapModel;->frame:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v13, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->y:F

    move-object/from16 v14, v49

    iget-object v1, v14, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v4, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->w:F

    iget-object v1, v14, Lcom/android/systemui/infinity/tangram/TangramMapJsonModel;->meta:Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;

    iget-object v1, v1, Lcom/android/systemui/infinity/tangram/TangramMapMetaModel;->size:Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;

    iget v3, v1, Lcom/android/systemui/infinity/tangram/TangramMapFrameModel;->h:F

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v17, v3

    move-object/from16 v3, p2

    move/from16 v18, v4

    move/from16 v4, p3

    move-object/from16 v36, v14

    move/from16 v14, v18

    move-object/from16 v18, v15

    move/from16 v15, v17

    invoke-direct/range {v1 .. v15}, Lcom/android/systemui/infinity/tangram/TangramObjectMergedLayer;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;IFFFFZFFFFFF)V

    iget-object v2, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    move-object/from16 v36, v49

    move-object/from16 v1, v29

    :goto_4
    new-instance v2, Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v3, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v3, v3, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerName:[Ljava/lang/String;

    aget-object v16, v3, v45

    iget-object v3, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v3, v3, Lcom/android/systemui/infinity/tangram/TangramMapData;->bottomLayerImage:[Z

    aget-boolean v17, v3, v45

    iget-object v3, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v3, v3, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerFixAlpha:[F

    aget v18, v3, v45

    iget-object v3, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v3, v3, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerPosition:[[F

    aget-object v3, v3, v45

    aget v3, v3, v33

    const/high16 v4, 0x44b40000    # 1440.0f

    const/high16 v5, 0x45390000    # 2960.0f

    invoke-static {v3, v4, v5}, Lcom/android/systemui/infinity/util/DPUtil;->absolutToRelativeX(FFF)F

    move-result v19

    iget-object v3, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v3, v3, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerPosition:[[F

    aget-object v3, v3, v45

    aget v3, v3, v31

    invoke-static {v3, v4, v5}, Lcom/android/systemui/infinity/util/DPUtil;->absolutToRelativeY(FFF)F

    move-result v3

    neg-float v3, v3

    iget-object v6, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v6, v6, Lcom/android/systemui/infinity/tangram/TangramMapData;->initTranslation:[[F

    aget-object v6, v6, v45

    aget v6, v6, v33

    move-object/from16 v7, p1

    invoke-static {v7, v6}, Lcom/android/systemui/infinity/util/DPUtil;->dpToPx(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    div-float v21, v6, v4

    iget-object v6, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v6, v6, Lcom/android/systemui/infinity/tangram/TangramMapData;->initTranslation:[[F

    aget-object v6, v6, v45

    aget v6, v6, v31

    invoke-static {v7, v6}, Lcom/android/systemui/infinity/util/DPUtil;->dpToPx(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    div-float v22, v6, v4

    iget-object v6, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v6, v6, Lcom/android/systemui/infinity/tangram/TangramMapData;->endTranslation:[[F

    aget-object v6, v6, v45

    aget v6, v6, v31

    invoke-static {v7, v6}, Lcom/android/systemui/infinity/util/DPUtil;->dpToPx(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    div-float v23, v6, v4

    iget-object v6, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramMapData:Lcom/android/systemui/infinity/tangram/TangramMapData;

    iget-object v6, v6, Lcom/android/systemui/infinity/tangram/TangramMapData;->endTranslation:[[F

    aget-object v6, v6, v45

    aget v6, v6, v31

    invoke-static {v7, v6}, Lcom/android/systemui/infinity/util/DPUtil;->dpToPx(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    div-float v24, v6, v4

    move-object v15, v2

    move/from16 v20, v3

    move-object/from16 v25, v32

    move-object/from16 v26, v30

    move-object/from16 v27, v34

    move-object/from16 v28, v35

    move-object/from16 v29, v1

    invoke-direct/range {v15 .. v29}, Lcom/android/systemui/infinity/tangram/Tangram;-><init>(Ljava/lang/String;ZFFFFFFFLcom/android/systemui/infinity/tangram/TangramObjectInterface;Lcom/android/systemui/infinity/tangram/TangramObjectInterface;Lcom/android/systemui/infinity/tangram/TangramObjectInterface;Lcom/android/systemui/infinity/tangram/TangramObjectInterface;Lcom/android/systemui/infinity/tangram/TangramObjectInterface;)V

    iget-object v3, v0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v45, 0x1

    move-object/from16 v13, p2

    move/from16 v10, p4

    move v12, v4

    move v11, v5

    move-object v15, v7

    move/from16 v14, v33

    move-object/from16 v9, v36

    goto/16 :goto_0

    :cond_4
    move-object/from16 v36, v9

    move-object v7, v15

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/infinity/tangram/TangramSystem;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/tangram/TangramSystem;->setHidingProgress(F)V

    return-void
.end method

.method private resetHiding()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->setHidingProgress(F)V

    return-void
.end method

.method private resetShowing()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setHidingProgress(F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iput p1, v1, Lcom/android/systemui/infinity/tangram/Tangram;->hideingProgress:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public checkFinishTiltEasing(Lcom/android/systemui/infinity/tangram/Tangram;Lcom/android/systemui/infinity/tangram/Tangram;)V
    .locals 2

    iget v0, p1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v1, p2, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    invoke-virtual {v1}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->pause()V

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->stopIfNoNeedUpdate()V

    :cond_0
    return-void
.end method

.method protected checkIsDoneShowing()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/Tangram;

    iget v2, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public createProgram()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getResourceManager()Lcom/android/systemui/infinity/common/GLResourceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/infinity/common/GLResourceManager;->reset()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->objectList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;

    invoke-interface {v1}, Lcom/android/systemui/infinity/tangram/TangramObjectInterface;->createProgram()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected doFrame()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->checkIsDoneShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProcess()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->isLeft:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->tiltProcess(Z)V

    :goto_0
    return-void
.end method

.method public draw([F)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/infinity/tangram/Tangram;

    invoke-virtual {v2, p1, v1}, Lcom/android/systemui/infinity/tangram/Tangram;->draw([FF)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method protected findLayerByName(Ljava/lang/String;)Lcom/android/systemui/infinity/tangram/Tangram;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v2, v1, Lcom/android/systemui/infinity/tangram/Tangram;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLinearTargetPosition(FFF)F
    .locals 2

    sub-float v0, p1, p2

    mul-float/2addr v0, p3

    add-float v1, p2, v0

    return v1
.end method

.method protected abstract getTextureMapData()Lcom/android/systemui/infinity/tangram/TangramMapData;
.end method

.method public hide(Z)V
    .locals 5

    const-string v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TangramSystem hide() withAnimation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->ignoreGyro:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->pause()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v2}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    invoke-virtual {v2, v3, v1}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x2ee

    invoke-virtual {v2, v3, v4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v2

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v3, v0, v4, v1}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/tangram/TangramSystem$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/tangram/TangramSystem$3;-><init>(Lcom/android/systemui/infinity/tangram/TangramSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallAlpha:F

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallScale:F

    invoke-direct {p0, v1}, Lcom/android/systemui/infinity/tangram/TangramSystem;->setHidingProgress(F)V

    :goto_0
    return-void
.end method

.method public onSurfaceChanged(II)V
    .locals 4

    int-to-float v0, p1

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->screenWidth:F

    int-to-float v0, p2

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->screenHeight:F

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->screenWidth:F

    iget v3, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->screenHeight:F

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/infinity/tangram/Tangram;->changeViewPort(FF)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->createProgram()V

    return-void
.end method

.method public setGyroMovement(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->checkIsDoneShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->ignoreGyro:Z

    if-nez v0, :cond_1

    iput p1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->isLeft:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->start()V

    :cond_1
    return-void
.end method

.method public show()V
    .locals 3

    const-string v0, "GalaxyWallpaper"

    const-string v1, "TangramSystem show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideingProgress:F

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallScale:F

    iput v1, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->overallAlpha:F

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->targetGyroValue:F

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->hideAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->resetHiding()V

    invoke-direct {p0}, Lcom/android/systemui/infinity/tangram/TangramSystem;->resetShowing()V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->renderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->getAnimatorManager()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    iget v2, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showingProgress:F

    invoke-virtual {v0, v2, v1}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x409

    invoke-virtual {v0, v1, v2}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineOut90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/tangram/TangramSystem$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/tangram/TangramSystem$2;-><init>(Lcom/android/systemui/infinity/tangram/TangramSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->ignoreGyro:Z

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->calculateHelper:Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->start()V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/TangramSystem;->showAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method protected abstract showingProcess()V
.end method

.method protected abstract tiltProcess(Z)V
.end method
