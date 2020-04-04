.class public Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;
.super Lcom/android/systemui/infinity/tangram/TangramSystem;
.source "TangramOrchidSystem.java"


# static fields
.field private static final bottomLayerImage:[Z

.field private static final endTranslation:[[F

.field private static final initTranslation:[[F

.field private static final layerFixAlpha:[F

.field private static final layerName:[Ljava/lang/String;

.field private static final layerPosition:[[F

.field private static final layerSize:[[F

.field private static final mapLayerFileName:[Ljava/lang/String;

.field private static final mapLeftFileName:[Ljava/lang/String;

.field private static final mapMaskFileName:[Ljava/lang/String;

.field private static final mapRightFileName:[Ljava/lang/String;

.field private static final maskMoveDistance:[[F

.field private static final maskPosition:[[F

.field private static final maskSize:[[F

.field public static final previewHeight:F = 2960.0f

.field public static final previewWidth:F = 2960.0f


# instance fields
.field a:Lcom/android/systemui/infinity/tangram/Tangram;

.field b:Lcom/android/systemui/infinity/tangram/Tangram;

.field c:Lcom/android/systemui/infinity/tangram/Tangram;

.field d:Lcom/android/systemui/infinity/tangram/Tangram;

.field e:Lcom/android/systemui/infinity/tangram/Tangram;

.field protected showEasing:F

.field protected tiltEasing:F

.field protected tiltSubEasing:F

.field protected tiltTranslation:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "a"

    const-string v1, "b"

    const-string v2, "c"

    const-string v3, "d"

    const-string v4, "e"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->layerName:[Ljava/lang/String;

    const-string/jumbo v0, "oc_layer_a.png"

    const-string/jumbo v1, "oc_layer_b.png"

    const-string/jumbo v2, "oc_layer_c.png"

    const-string/jumbo v3, "oc_layer_d.png"

    const-string/jumbo v4, "oc_layer_e.png"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->mapLayerFileName:[Ljava/lang/String;

    const-string/jumbo v0, "oc_layer_a_mask.png"

    const-string/jumbo v1, "oc_layer_b_mask.png"

    const-string/jumbo v2, "oc_layer_c_mask.png"

    const-string/jumbo v3, "oc_layer_d_mask.png"

    const-string/jumbo v4, "oc_layer_e_mask.png"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->mapMaskFileName:[Ljava/lang/String;

    const-string/jumbo v0, "oc_layer_a_color_l.png"

    const-string v1, ""

    const-string v2, ""

    const-string/jumbo v3, "oc_layer_d_color_l.png"

    const-string v4, ""

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->mapLeftFileName:[Ljava/lang/String;

    const-string/jumbo v0, "oc_layer_a_color_r.png"

    const-string v1, ""

    const-string v2, ""

    const-string/jumbo v3, "oc_layer_d_color_r.png"

    const-string v4, ""

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->mapRightFileName:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v1, v0, [[F

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_3

    const/4 v6, 0x3

    aput-object v3, v1, v6

    new-array v3, v2, [F

    fill-array-data v3, :array_4

    const/4 v7, 0x4

    aput-object v3, v1, v7

    sput-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->maskMoveDistance:[[F

    new-array v1, v0, [Z

    fill-array-data v1, :array_5

    sput-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->bottomLayerImage:[Z

    new-array v1, v0, [F

    fill-array-data v1, :array_6

    sput-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->layerFixAlpha:[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_7

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_8

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_a

    aput-object v3, v1, v6

    new-array v3, v2, [F

    fill-array-data v3, :array_b

    aput-object v3, v1, v7

    sput-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->layerSize:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_c

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_d

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_e

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_f

    aput-object v3, v1, v6

    new-array v3, v2, [F

    fill-array-data v3, :array_10

    aput-object v3, v1, v7

    sput-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->layerPosition:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_11

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_12

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_13

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_14

    aput-object v3, v1, v6

    new-array v3, v2, [F

    fill-array-data v3, :array_15

    aput-object v3, v1, v7

    sput-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->maskSize:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_16

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_17

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_18

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_19

    aput-object v3, v1, v6

    new-array v3, v2, [F

    fill-array-data v3, :array_1a

    aput-object v3, v1, v7

    sput-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->maskPosition:[[F

    new-array v1, v0, [[F

    new-array v3, v2, [F

    fill-array-data v3, :array_1b

    aput-object v3, v1, v4

    new-array v3, v2, [F

    fill-array-data v3, :array_1c

    aput-object v3, v1, v5

    new-array v3, v2, [F

    fill-array-data v3, :array_1d

    aput-object v3, v1, v2

    new-array v3, v2, [F

    fill-array-data v3, :array_1e

    aput-object v3, v1, v6

    new-array v3, v2, [F

    fill-array-data v3, :array_1f

    aput-object v3, v1, v7

    sput-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->initTranslation:[[F

    new-array v0, v0, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_20

    aput-object v1, v0, v4

    new-array v1, v2, [F

    fill-array-data v1, :array_21

    aput-object v1, v0, v5

    new-array v1, v2, [F

    fill-array-data v1, :array_22

    aput-object v1, v0, v2

    new-array v1, v2, [F

    fill-array-data v1, :array_23

    aput-object v1, v0, v6

    new-array v1, v2, [F

    fill-array-data v1, :array_24

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->endTranslation:[[F

    return-void

    :array_0
    .array-data 4
        0x3db020c5    # 0.086f
        0x3db43958    # 0.088f
    .end array-data

    :array_1
    .array-data 4
        0x3ca3d70a    # 0.02f
        0x3ca3d70a    # 0.02f
    .end array-data

    :array_2
    .array-data 4
        0x3c23d70a    # 0.01f
        0x3c23d70a    # 0.01f
    .end array-data

    :array_3
    .array-data 4
        0x3ca3d70a    # 0.02f
        0x3ca3d70a    # 0.02f
    .end array-data

    :array_4
    .array-data 4
        0x3c83126f    # 0.016f
        0x3c83126f    # 0.016f
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f19999a    # 0.6f
    .end array-data

    :array_7
    .array-data 4
        0x44c1c000    # 1550.0f
        0x44c1c000    # 1550.0f
    .end array-data

    :array_8
    .array-data 4
        0x4507f000    # 2175.0f
        0x450c1000    # 2241.0f
    .end array-data

    :array_9
    .array-data 4
        0x44fec000    # 2038.0f
        0x44fde000    # 2031.0f
    .end array-data

    :array_a
    .array-data 4
        0x44a28000    # 1300.0f
        0x44a28000    # 1300.0f
    .end array-data

    :array_b
    .array-data 4
        0x44ca2000    # 1617.0f
        0x449f4000    # 1274.0f
    .end array-data

    :array_c
    .array-data 4
        0x44c84000    # 1602.0f
        0x44b86000    # 1475.0f
    .end array-data

    :array_d
    .array-data 4
        0x45020800    # 2080.5f
        0x444be000    # 815.5f
    .end array-data

    :array_e
    .array-data 4
        0x4411c000    # 583.0f
        0x44cff000    # 1663.5f
    .end array-data

    :array_f
    .array-data 4
        0x44d02000    # 1665.0f
        0x43d80000    # 432.0f
    .end array-data

    :array_10
    .array-data 4
        0x44d1e000    # 1679.0f
        0x45233000    # 2611.0f
    .end array-data

    :array_11
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_12
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_13
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_14
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_15
    .array-data 4
        0x45390000    # 2960.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_19
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1b
    .array-data 4
        -0x3ca40000    # -220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_1c
    .array-data 4
        -0x3ca40000    # -220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_1d
    .array-data 4
        -0x3ca40000    # -220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_1e
    .array-data 4
        -0x3ca40000    # -220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_1f
    .array-data 4
        -0x3ca40000    # -220.0f
        0x435c0000    # 220.0f
    .end array-data

    :array_20
    .array-data 4
        0x42fa0000    # 125.0f
        -0x3d060000    # -125.0f
    .end array-data

    :array_21
    .array-data 4
        -0x3d060000    # -125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_22
    .array-data 4
        0x42fa0000    # 125.0f
        -0x3d060000    # -125.0f
    .end array-data

    :array_23
    .array-data 4
        -0x3d060000    # -125.0f
        0x42fa0000    # 125.0f
    .end array-data

    :array_24
    .array-data 4
        0x42fa0000    # 125.0f
        -0x3d060000    # -125.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V
    .locals 2

    const v0, 0x7f11000d

    const v1, 0x7f11000e

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/infinity/tangram/TangramSystem;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;II)V

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->showEasing:F

    iput v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tiltEasing:F

    const v0, 0x3da3d70a    # 0.08f

    iput v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tiltSubEasing:F

    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tiltTranslation:F

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tangramList:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/tangram/Tangram;

    iput-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    return-void
.end method


# virtual methods
.method protected getTextureMapData()Lcom/android/systemui/infinity/tangram/TangramMapData;
    .locals 2

    new-instance v0, Lcom/android/systemui/infinity/tangram/TangramMapData;

    invoke-direct {v0}, Lcom/android/systemui/infinity/tangram/TangramMapData;-><init>()V

    const/high16 v1, 0x45390000    # 2960.0f

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->previewHeight:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->previewWidth:F

    sget-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->maskMoveDistance:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskMoveDistance:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->layerSize:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerSize:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->layerPosition:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerPosition:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->maskSize:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskSize:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->maskPosition:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->maskPosition:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->layerName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerName:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->initTranslation:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->initTranslation:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->endTranslation:[[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->endTranslation:[[F

    sget-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->bottomLayerImage:[Z

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->bottomLayerImage:[Z

    sget-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->layerFixAlpha:[F

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->layerFixAlpha:[F

    sget-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->mapLayerFileName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLayerFileName:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->mapMaskFileName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapMaskFileName:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->mapLeftFileName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapLeftFileName:[Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->mapRightFileName:[Ljava/lang/String;

    iput-object v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->mapRightFileName:[Ljava/lang/String;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/systemui/infinity/tangram/TangramMapData;->objectType:I

    return-object v0
.end method

.method protected showingProcess()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v2, v1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v2, v1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v2, v1, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v2, v1, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v3, v1, Lcom/android/systemui/infinity/tangram/Tangram;->centerImageAlpha:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/infinity/tangram/Tangram;

    iput v3, v1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v1, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->showingProgress:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v1, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->showingProgress:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v1, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->showingProgress:F

    iput v1, v0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v0, v0, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    sub-float v1, v0, v1

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iget v4, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->showEasing:F

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v0, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    iput v3, v2, Lcom/android/systemui/infinity/tangram/Tangram;->showingProgress:F

    return-void
.end method

.method protected tiltProcess(Z)V
    .locals 12

    iget v0, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->targetGyroValue:F

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v1, v1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v2, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tiltEasing:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->getLinearTargetPosition(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v0, v1, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    move v1, v0

    iget-object v2, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v2, v2, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    sub-float v2, v1, v2

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v5, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tiltSubEasing:F

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v1, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->b:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v1, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    sub-float v2, v1, v3

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v6, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tiltSubEasing:F

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v1, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->c:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v4, v4, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->checkFinishTiltEasing(Lcom/android/systemui/infinity/tangram/Tangram;Lcom/android/systemui/infinity/tangram/Tangram;)V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tangramList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v4, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    iget v6, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->tiltTranslation:F

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    neg-float v6, v5

    iput v6, v4, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    const v5, 0x3fa66666    # 1.3f

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    neg-float v6, v6

    mul-float/2addr v6, v5

    iput v6, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    neg-float v6, v6

    mul-float/2addr v6, v5

    iput v6, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    neg-float v6, v6

    mul-float/2addr v6, v5

    iput v6, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v6, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v6, v6, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTx:F

    neg-float v6, v6

    mul-float/2addr v6, v5

    iput v6, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroTy:F

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    const v6, 0x3e19999a    # 0.15f

    mul-float/2addr v5, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v7, v5

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    const v5, 0x3f866666    # 1.05f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    const v5, 0x3f733333    # 0.95f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v7, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    mul-float/2addr v5, v6

    sub-float v5, v7, v5

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    const v5, 0x3f933333    # 1.15f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    float-to-double v8, v3

    const-wide v10, 0x3feb333333333333L    # 0.85

    cmpg-double v3, v8, v10

    if-gez v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    const v5, 0x3f59999a    # 0.85f

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v7, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroScale:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v5, v8

    sub-float v5, v7, v5

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    const v5, 0x3f333333    # 0.7f

    cmpg-float v3, v3, v5

    if-gez v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_9
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v7, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v7, v5

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    cmpg-float v3, v3, v6

    if-gez v3, :cond_b

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v6, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_b
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_c

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v7, v3, Lcom/android/systemui/infinity/tangram/Tangram;->gyroAlpha:F

    :cond_c
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    neg-float v5, v5

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget-object v5, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->e:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v5, v5, Lcom/android/systemui/infinity/tangram/Tangram;->gyroValue:F

    neg-float v5, v5

    mul-float/2addr v5, v6

    iput v5, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_d

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_d
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_e

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v7, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_e
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_f

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_f
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_10

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->a:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v7, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_10
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_11

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_11
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_12

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v7, v3, Lcom/android/systemui/infinity/tangram/Tangram;->rightImageAlpha:F

    :cond_12
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_13

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v4, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_13
    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iget v3, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_14

    iget-object v3, p0, Lcom/android/systemui/infinity/theme/orchid/TangramOrchidSystem;->d:Lcom/android/systemui/infinity/tangram/Tangram;

    iput v7, v3, Lcom/android/systemui/infinity/tangram/Tangram;->leftImageAlpha:F

    :cond_14
    return-void
.end method
