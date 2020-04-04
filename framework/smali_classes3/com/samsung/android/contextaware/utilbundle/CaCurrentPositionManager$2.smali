.class Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;
.super Ljava/lang/Object;
.source "CaCurrentPositionManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 29

    move-object/from16 v0, p0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v20

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v23

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v2

    iget-object v4, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v4

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->calculationDistance(DDDD)D

    move-result-wide v24

    const/16 v26, 0x1

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Ljava/util/Iterator;

    move-result-object v15

    const/4 v2, 0x0

    if-eqz v15, :cond_1

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    move/from16 v27, v2

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$200(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v2

    cmpl-float v2, v2, v23

    if-ltz v2, :cond_2

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->access$200(Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v2

    const/4 v3, 0x1

    move-object v4, v1

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    move-wide/from16 v9, v20

    move-wide/from16 v11, v24

    move/from16 v13, v22

    move/from16 v14, v23

    move-object/from16 v28, v15

    move/from16 v15, v27

    invoke-virtual/range {v2 .. v15}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->setPosition(I[IDDDDFFI)V

    goto :goto_1

    :cond_2
    move-object/from16 v28, v15

    :goto_1
    const/high16 v2, 0x41800000    # 16.0f

    cmpg-float v2, v23, v2

    if-gtz v2, :cond_3

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentPositionManager;->notifyCurrentPositionObserver()V

    :cond_3
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
