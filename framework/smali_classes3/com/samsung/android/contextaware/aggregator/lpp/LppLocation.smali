.class public Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
.super Ljava/lang/Object;
.source "LppLocation.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public Capturedtime:J

.field private Updated:Z

.field private final filteredVelocity:[D

.field private loc:Landroid/location/Location;

.field private mOrgHei:D

.field private mOrgLat:D

.field private mOrgLon:D

.field private mPosECEF_X:D

.field private mPosECEF_Y:D

.field private mPosECEF_Z:D

.field private mPosEast:D

.field private mPosNorth:D

.field private mPosUp:D

.field private movingStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LppLocation"

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    const/4 v1, 0x3

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    new-instance v1, Landroid/location/Location;

    const-string v2, "NOPROVIDER"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    const/4 v1, 0x3

    new-array v1, v1, [D

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    if-eqz p1, :cond_0

    new-instance v1, Landroid/location/Location;

    invoke-direct {v1, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/location/Location;

    const-string v2, "NOPROVIDER"

    invoke-direct {v1, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    :goto_0
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    new-instance v0, Landroid/location/Location;

    iget-object v1, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private CalCoordinate()V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    const/4 v1, 0x3

    new-array v2, v1, [D

    new-array v1, v1, [D

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v2, v0

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    const/4 v5, 0x1

    aput-wide v3, v2, v5

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getAltitude()D

    move-result-wide v3

    const/4 v6, 0x2

    aput-wide v3, v2, v6

    iget-wide v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v1, v0

    iget-wide v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    aput-wide v3, v1, v5

    iget-wide v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    aput-wide v3, v1, v6

    invoke-static {v2, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2enu([D[D)[D

    move-result-object v3

    aget-wide v7, v3, v0

    iput-wide v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    aget-wide v7, v3, v5

    iput-wide v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    aget-wide v7, v3, v6

    iput-wide v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosUp:D

    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v4

    aget-wide v7, v4, v0

    iput-wide v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_X:D

    aget-wide v7, v4, v5

    iput-wide v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Y:D

    aget-wide v5, v4, v6

    iput-wide v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Z:D

    return-void
.end method

.method private SendStatus(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public PosPropation(DD)V
    .locals 14

    move-object v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v1, :cond_0

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    :cond_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    iget-wide v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    mul-double v7, v1, p3

    add-double/2addr v5, v7

    iput-wide v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    iget-wide v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    mul-double v7, v3, p3

    add-double/2addr v5, v7

    iput-wide v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    const/4 v5, 0x3

    new-array v6, v5, [D

    new-array v5, v5, [D

    iget-wide v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    const/4 v9, 0x0

    aput-wide v7, v5, v9

    iget-wide v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    const/4 v10, 0x1

    aput-wide v7, v5, v10

    iget-wide v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosUp:D

    const/4 v11, 0x2

    aput-wide v7, v5, v11

    iget-wide v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    aput-wide v7, v6, v9

    iget-wide v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    aput-wide v7, v6, v10

    iget-wide v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    aput-wide v7, v6, v11

    invoke-static {v5, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2llh([D[D)[D

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    aget-wide v12, v7, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Landroid/location/Location;->setLatitude(D)V

    iget-object v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    aget-wide v9, v7, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/location/Location;->setLongitude(D)V

    iget-object v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    aget-wide v9, v7, v11

    invoke-virtual {v8, v9, v10}, Landroid/location/Location;->setAltitude(D)V

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    return-void
.end method

.method public distanceTo(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)D
    .locals 9

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getOriginLat()D

    move-result-wide v2

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getOriginLon()D

    move-result-wide v4

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getOriginAltitude()D

    move-result-wide v6

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v5

    sub-double/2addr v3, v5

    mul-double/2addr v1, v3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v5

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    return-wide v3
.end method

.method public estimateVelocity(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V
    .locals 44

    move-object/from16 v0, p0

    const/high16 v1, 0x41700000    # 15.0f

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    new-instance v4, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v11, p2

    invoke-direct {v4, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    move-object v15, v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLatitude()D

    move-result-wide v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLongitude()D

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v9

    move-object v4, v2

    invoke-virtual/range {v4 .. v10}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLatitude()D

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLongitude()D

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v17

    move-object v12, v15

    move-object v6, v15

    move-wide v15, v4

    invoke-virtual/range {v12 .. v18}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v9

    long-to-double v12, v4

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v12, v14

    move/from16 v20, v1

    long-to-double v0, v7

    mul-double/2addr v0, v14

    move-wide/from16 v21, v12

    long-to-double v11, v9

    mul-double/2addr v11, v14

    cmp-long v13, v7, v4

    const-wide/16 v16, 0x0

    if-eqz v13, :cond_2

    cmp-long v13, v9, v7

    if-nez v13, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v23

    sub-double v25, v11, v0

    div-double v23, v23, v25

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v25

    sub-double v25, v16, v25

    sub-double v27, v0, v21

    div-double v25, v25, v27

    add-double v23, v23, v25

    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    div-double v23, v23, v25

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v27

    sub-double v29, v11, v0

    div-double v27, v27, v29

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v29

    sub-double v29, v16, v29

    sub-double v31, v0, v21

    div-double v29, v29, v31

    add-double v27, v27, v29

    div-double v27, v27, v25

    mul-double v25, v23, v23

    mul-double v29, v27, v27

    add-double v14, v25, v29

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    const-wide v25, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v15, v13, v25

    if-lez v15, :cond_1

    div-double v23, v23, v13

    div-double v27, v27, v13

    :goto_0
    move-object/from16 v14, p0

    goto :goto_2

    :cond_1
    const-wide/16 v23, 0x0

    const-wide/16 v27, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    const-string v13, "WARNING: estimateVelocity - abnormal t0, t1, t2"

    move-object/from16 v14, p0

    invoke-direct {v14, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->SendStatus(Ljava/lang/String;)V

    const-wide/16 v23, 0x0

    const-wide/16 v27, 0x0

    :goto_2
    iget-object v13, v14, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v13}, Landroid/location/Location;->getSpeed()F

    move-result v13

    const/high16 v15, 0x41700000    # 15.0f

    cmpl-float v13, v13, v15

    if-lez v13, :cond_3

    iget-object v13, v14, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v13}, Landroid/location/Location;->getBearing()F

    move-result v13

    const/high16 v18, 0x43340000    # 180.0f

    div-float v13, v13, v18

    move-wide/from16 v34, v0

    float-to-double v0, v13

    const-wide v25, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget-object v13, v14, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v13}, Landroid/location/Location;->getBearing()F

    move-result v13

    div-float v13, v13, v18

    move-wide/from16 v36, v0

    float-to-double v0, v13

    mul-double v0, v0, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    goto :goto_3

    :cond_3
    move-wide/from16 v34, v0

    const-wide/16 v0, 0x0

    move-wide/from16 v36, v0

    move-wide/from16 v0, v16

    :goto_3
    cmp-long v13, v9, v4

    if-nez v13, :cond_4

    const-string v13, "WARNING: estimateVelocity - abnormal t0, t2"

    invoke-direct {v14, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->SendStatus(Ljava/lang/String;)V

    const-wide/16 v18, 0x0

    const-wide/16 v25, 0x0

    move-wide/from16 v42, v18

    move-wide/from16 v18, v25

    move-wide/from16 v25, v42

    goto :goto_4

    :cond_4
    invoke-virtual {v6, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->distanceTo(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)D

    move-result-wide v18

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v25

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v29

    sub-double v25, v25, v29

    sub-double v29, v11, v21

    div-double v25, v25, v29

    div-double v25, v25, v18

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v29

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v31

    sub-double v29, v29, v31

    sub-double v31, v11, v21

    div-double v29, v29, v31

    div-double v18, v29, v18

    :goto_4
    iget-object v13, v14, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v13}, Landroid/location/Location;->getSpeed()F

    move-result v13

    cmpl-float v13, v13, v15

    const/4 v15, 0x1

    const/16 v29, 0x0

    if-lez v13, :cond_5

    iget-object v13, v14, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    mul-double v30, v16, v23

    const-wide v32, 0x3fe6666666666666L    # 0.7

    mul-double v38, v32, v36

    add-double v30, v30, v38

    const-wide v38, 0x3fd3333333333333L    # 0.3

    mul-double v40, v38, v25

    add-double v30, v30, v40

    aput-wide v30, v13, v29

    iget-object v13, v14, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    mul-double v16, v16, v27

    mul-double v32, v32, v0

    add-double v16, v16, v32

    mul-double v38, v38, v18

    add-double v16, v16, v38

    aput-wide v16, v13, v15

    goto :goto_5

    :cond_5
    iget-object v13, v14, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    aput-wide v23, v13, v29

    iget-object v13, v14, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    aput-wide v27, v13, v15

    :goto_5
    return-void
.end method

.method public getAccuracy()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public getAltitude()D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getFilteredVelocity()[D
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLoc()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMovingStatus()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    return v0
.end method

.method public getOriginAltitude()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    return-wide v0
.end method

.method public getOriginLat()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    return-wide v0
.end method

.method public getOriginLon()D
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    return-wide v0
.end method

.method public getPosECEF_X()D
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_X:D

    return-wide v0
.end method

.method public getPosECEF_Y()D
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Y:D

    return-wide v0
.end method

.method public getPosECEF_Z()D
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Z:D

    return-wide v0
.end method

.method public getPosEastLocal()D
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    return-wide v0
.end method

.method public getPosNorthLocal()D
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    return-wide v0
.end method

.method public getPosUpLocal()D
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosUp:D

    return-wide v0
.end method

.method public getSystemTime()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    return-wide v0
.end method

.method public getTime()J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public set(Landroid/location/Location;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setSystemTime()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    return-void
.end method

.method public set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    iget-object v1, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getOriginLat()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getOriginLon()D

    move-result-wide v5

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getOriginAltitude()D

    move-result-wide v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getSystemTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getFilteredVelocity()[D

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    const/4 v2, 0x0

    aget-wide v3, v0, v2

    aput-wide v3, v1, v2

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    const/4 v2, 0x1

    aget-wide v3, v0, v2

    aput-wide v3, v1, v2

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->filteredVelocity:[D

    const/4 v3, 0x2

    aget-wide v4, v0, v3

    aput-wide v4, v1, v3

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    return-void
.end method

.method public setAltitude(D)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setAltitude(D)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    return-void
.end method

.method public setLatitude(D)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    return-void
.end method

.method public setLongitude(D)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    return-void
.end method

.method public setMovingStatus(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    return-void
.end method

.method public setOrigin(DDD)V
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    iput-wide p3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    iput-wide p5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    return-void
.end method

.method public setPosENU(DDD)V
    .locals 9

    const/4 v0, 0x3

    new-array v1, v0, [D

    new-array v0, v0, [D

    const/4 v2, 0x0

    aput-wide p1, v0, v2

    const/4 v3, 0x1

    aput-wide p3, v0, v3

    const/4 v4, 0x2

    aput-wide p5, v0, v4

    iget-wide v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    aput-wide v5, v1, v2

    iget-wide v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    aput-wide v5, v1, v3

    iget-wide v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    aput-wide v5, v1, v4

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2llh([D[D)[D

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    aget-wide v7, v5, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Landroid/location/Location;->setLatitude(D)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    aget-wide v6, v5, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    aget-wide v3, v5, v4

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setAltitude(D)V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    return-void
.end method

.method public setSystemTime()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    return-void
.end method

.method public setSystemTime(J)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setSystemTime() - Abnormal method calling"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    sub-long v0, p1, v0

    long-to-double v0, v0

    const-wide v2, 0x430c6bf526340000L    # 1.0E15

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "systemtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "     Capturedtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSystemTime() - systemtime overflow or propagation error timediff"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-wide p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v5, v0

    double-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setTime(J)V

    :goto_0
    return-void
.end method
