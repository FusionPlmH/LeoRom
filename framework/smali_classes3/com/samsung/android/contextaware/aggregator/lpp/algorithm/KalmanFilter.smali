.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;
.super Ljava/lang/Object;
.source "KalmanFilter.java"


# instance fields
.field F:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

.field H:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

.field MeasurementSize:I

.field P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

.field Q_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

.field R_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

.field StateSize:I

.field TAG:Ljava/lang/String;

.field X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

.field flagInitializeCovariance:Z

.field flagInitializeMeasurementM:Z

.field flagInitializeState:Z

.field flagMeasurementNoise:Z

.field flagProcessNoise:Z

.field flagTransitionMatrix:Z


# direct methods
.method public constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "KalmanFilter"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagTransitionMatrix:Z

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeState:Z

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeCovariance:Z

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeMeasurementM:Z

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagMeasurementNoise:Z

    iput p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iput p2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->Q_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->R_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    return-void
.end method


# virtual methods
.method public MeasurementUpdate(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Z
    .locals 34

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v1

    iget v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    new-instance v4, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    invoke-direct {v4, v5, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    new-instance v5, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    iget v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    new-instance v6, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    iget v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    move-object v15, v6

    new-instance v6, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    invoke-direct {v6, v7, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    new-instance v7, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    invoke-direct {v7, v8, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    move-object v14, v7

    new-instance v7, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v7, v8, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    move-object/from16 v16, v7

    new-instance v7, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v7, v8, v9}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    move-object/from16 v22, v7

    iget-boolean v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    if-eqz v7, :cond_2

    iget-boolean v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagMeasurementNoise:Z

    if-eqz v7, :cond_2

    iget-boolean v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeMeasurementM:Z

    if-nez v7, :cond_1

    move-object/from16 v7, p1

    move-object v8, v6

    move-object v6, v14

    goto/16 :goto_0

    :cond_1
    const/4 v8, 0x0

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v9, v3, -0x1

    const/4 v10, 0x0

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v11, v3, -0x1

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->transpose()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v12

    move-object v7, v4

    invoke-virtual/range {v7 .. v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v9, 0x0

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v10, v3, -0x1

    const/4 v11, 0x0

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v12, v3, -0x1

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v13

    move-object v8, v5

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v10, 0x0

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v11, v3, -0x1

    const/4 v12, 0x0

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v13, v3, -0x1

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->R_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v5, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->plus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v3

    move-object v9, v15

    move-object v8, v14

    move-object v14, v3

    invoke-virtual/range {v9 .. v14}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v7, 0x0

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    sub-int/2addr v3, v2

    const/4 v9, 0x0

    iget v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    sub-int/2addr v10, v2

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v11

    move-object v14, v6

    move-object v6, v1

    move-object v13, v8

    move v8, v3

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v10, v3, -0x1

    const/4 v11, 0x0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v3, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v3

    move-object v8, v14

    move-object v6, v13

    move-object v13, v3

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v10, 0x0

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v11, v3, -0x1

    const/4 v13, 0x0

    move-object/from16 v7, p1

    invoke-virtual {v7, v14}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->minus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v3

    move-object v9, v6

    move-object v14, v3

    invoke-virtual/range {v9 .. v14}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/16 v17, 0x0

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v18, v3, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v1, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->plus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v21

    invoke-virtual/range {v16 .. v21}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    new-instance v9, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    invoke-direct {v9, v3, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    add-int/lit8 v11, v3, -0x1

    invoke-virtual {v1, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v14

    invoke-virtual/range {v9 .. v14}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/16 v24, 0x0

    iget v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v25, v10, -0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v23, v3

    move-object/from16 v28, v16

    invoke-virtual/range {v23 .. v28}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/16 v23, 0x0

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v24, v3, -0x1

    const/16 v25, 0x0

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v26, v3, -0x1

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v11, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v10, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->minus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v27

    invoke-virtual/range {v22 .. v27}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/16 v29, 0x0

    iget v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v30, v10, -0x1

    const/16 v31, 0x0

    iget v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v32, v10, -0x1

    move-object/from16 v28, v3

    move-object/from16 v33, v22

    invoke-virtual/range {v28 .. v33}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    return v2

    :cond_2
    move-object/from16 v7, p1

    move-object v8, v6

    move-object v6, v14

    :goto_0
    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TAG:Ljava/lang/String;

    const-string v9, "cannot execute MeasurementUpdate(), check initialization "

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3
    :goto_1
    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TAG:Ljava/lang/String;

    const-string v2, "Error in MeasurementUpdate(), meauserement matrix size is wrong!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public TimePropagation(D)Z
    .locals 22

    move-object/from16 v0, p0

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    const/4 v7, 0x1

    invoke-direct {v1, v2, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    new-instance v8, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v8, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    move-object v15, v2

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    move-object v14, v2

    iget-boolean v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagTransitionMatrix:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeState:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    if-nez v2, :cond_0

    move-object v3, v14

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    sub-int/2addr v3, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v6, v9}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/16 v17, 0x0

    iget v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v18, v3, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v2

    move-object/from16 v21, v1

    invoke-virtual/range {v16 .. v21}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v10, 0x0

    iget v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v11, v2, -0x1

    const/4 v12, 0x0

    iget v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v13, v2, -0x1

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v3, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v2

    move-object v9, v15

    move-object v3, v14

    move-object v14, v2

    invoke-virtual/range {v9 .. v14}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    iget v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v11, v2, -0x1

    iget v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v13, v2, -0x1

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v2

    invoke-virtual {v15, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v14

    move-object v9, v3

    invoke-virtual/range {v9 .. v14}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    const/4 v9, 0x0

    iget v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v10, v2, -0x1

    const/4 v11, 0x0

    iget v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v12, v2, -0x1

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->Q_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v3, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->plus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v13

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v18, v4, -0x1

    iget v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    add-int/lit8 v20, v4, -0x1

    move-object/from16 v16, v2

    move-object/from16 v21, v8

    invoke-virtual/range {v16 .. v21}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    return v7

    :cond_1
    move-object v3, v14

    :goto_0
    iget-object v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TAG:Ljava/lang/String;

    const-string v4, "cannot execute TimePropagation(), check initialization "

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method public getCurrentState()[D
    .locals 5

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    new-array v0, v0, [D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v3

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setInitialCovariance([[D)Z
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->P_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v4, p1, v1

    aget-wide v4, v4, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    return v0
.end method

.method public setInitialState([D)Z
    .locals 5

    array-length v0, p1

    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->X_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-wide v3, p1, v0

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeState:Z

    return v0
.end method

.method public setMeasurementMatrix([[D)Z
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->H:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v4, p1, v1

    aget-wide v4, v4, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagInitializeMeasurementM:Z

    return v0
.end method

.method public setMeasurementNoise([[D)Z
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementSize:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->R_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v4, p1, v1

    aget-wide v4, v4, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagMeasurementNoise:Z

    return v0
.end method

.method public setProcessNoise([[D)Z
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->Q_k:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v4, p1, v1

    aget-wide v4, v4, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagProcessNoise:Z

    return v0
.end method

.method public setTransitionMatrix([[D)Z
    .locals 6

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v1, v2, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    move v1, v0

    :goto_0
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v1, v2, :cond_3

    move v2, v0

    :goto_1
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->StateSize:I

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->F:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    aget-object v4, p1, v1

    aget-wide v4, v4, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->flagTransitionMatrix:Z

    return v0
.end method
