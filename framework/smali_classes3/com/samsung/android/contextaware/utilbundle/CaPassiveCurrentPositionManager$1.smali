.class Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;
.super Ljava/lang/Object;
.source "CaPassiveCurrentPositionManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 27

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

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v2

    iget-object v4, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->access$000(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v4

    move-wide/from16 v6, v16

    move-wide/from16 v8, v18

    invoke-static/range {v2 .. v9}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->calculationDistance(DDDD)D

    move-result-wide v24

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "network"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    :cond_0
    move/from16 v26, v2

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->access$200(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)I

    move-result v15

    move/from16 v3, v26

    move-object v4, v1

    move-wide/from16 v5, v16

    move-wide/from16 v7, v18

    move-wide/from16 v9, v20

    move-wide/from16 v11, v24

    move/from16 v13, v22

    move/from16 v14, v23

    invoke-virtual/range {v2 .. v15}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->setPosition(I[IDDDDFFI)V

    const/high16 v2, 0x45960000    # 4800.0f

    cmpg-float v2, v23, v2

    if-gtz v2, :cond_1

    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    iget-object v3, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->access$200(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->notifyPassiveCurrentPositionObserver(Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;)V

    :cond_1
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Location service is disabled"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Location service is enabled"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
