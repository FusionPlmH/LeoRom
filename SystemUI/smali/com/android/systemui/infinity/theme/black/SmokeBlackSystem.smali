.class public Lcom/android/systemui/infinity/theme/black/SmokeBlackSystem;
.super Lcom/android/systemui/infinity/smoke/SmokeSystem;
.source "SmokeBlackSystem.java"


# instance fields
.field private final imageHeight:F

.field private inputColor:[[[F

.field private inputPosition:[[F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V
    .locals 7

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/infinity/smoke/SmokeSystem;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/GalaxyRenderer;)V

    const/high16 v0, 0x45390000    # 2960.0f

    iput v0, p0, Lcom/android/systemui/infinity/theme/black/SmokeBlackSystem;->imageHeight:F

    const/4 v0, 0x3

    new-array v1, v0, [[F

    new-array v2, v0, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-array v2, v0, [F

    fill-array-data v2, :array_2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/systemui/infinity/theme/black/SmokeBlackSystem;->inputPosition:[[F

    new-array v1, v0, [[[F

    new-array v2, v0, [[F

    new-array v6, v0, [F

    fill-array-data v6, :array_3

    aput-object v6, v2, v3

    new-array v6, v0, [F

    fill-array-data v6, :array_4

    aput-object v6, v2, v4

    new-array v6, v0, [F

    fill-array-data v6, :array_5

    aput-object v6, v2, v5

    aput-object v2, v1, v3

    new-array v2, v0, [[F

    new-array v6, v0, [F

    fill-array-data v6, :array_6

    aput-object v6, v2, v3

    new-array v6, v0, [F

    fill-array-data v6, :array_7

    aput-object v6, v2, v4

    new-array v6, v0, [F

    fill-array-data v6, :array_8

    aput-object v6, v2, v5

    aput-object v2, v1, v4

    new-array v2, v0, [[F

    new-array v6, v0, [F

    fill-array-data v6, :array_9

    aput-object v6, v2, v3

    new-array v3, v0, [F

    fill-array-data v3, :array_a

    aput-object v3, v2, v4

    new-array v0, v0, [F

    fill-array-data v0, :array_b

    aput-object v0, v2, v5

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/systemui/infinity/theme/black/SmokeBlackSystem;->inputColor:[[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x4488e000    # 1095.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x4488e000    # 1095.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x4488e000    # 1095.0f
        0x45390000    # 2960.0f
    .end array-data

    :array_3
    .array-data 4
        0x424c0000    # 51.0f
        0x428c0000    # 70.0f
        0x429e0000    # 79.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x424c0000    # 51.0f
        0x428c0000    # 70.0f
        0x429e0000    # 79.0f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x424c0000    # 51.0f
        0x428c0000    # 70.0f
        0x429e0000    # 79.0f
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method protected getInputColor()[[[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/SmokeBlackSystem;->inputColor:[[[F

    return-object v0
.end method

.method protected getInputHeight()F
    .locals 1

    const/high16 v0, 0x45390000    # 2960.0f

    return v0
.end method

.method protected getInputPosition()[[F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/theme/black/SmokeBlackSystem;->inputPosition:[[F

    return-object v0
.end method
