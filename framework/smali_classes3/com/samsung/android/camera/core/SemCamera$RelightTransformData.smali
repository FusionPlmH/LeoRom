.class Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RelightTransformData"
.end annotation


# instance fields
.field private mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

.field private number_of_data:I

.field final synthetic this$0:Lcom/samsung/android/camera/core/SemCamera;


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core/SemCamera;[B)V
    .locals 10

    iput-object p1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->this$0:Lcom/samsung/android/camera/core/SemCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->number_of_data:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    const/4 v0, 0x0

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->number_of_data:I

    iget v0, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->number_of_data:I

    new-array v0, v0, [Lcom/samsung/android/camera/core/SemCamera$TransformData;

    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->number_of_data:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    new-instance v3, Lcom/samsung/android/camera/core/SemCamera$TransformData;

    invoke-direct {v3}, Lcom/samsung/android/camera/core/SemCamera$TransformData;-><init>()V

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    const/4 v3, 0x4

    new-array v4, v3, [I

    iput-object v4, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    aput v2, v1, p1

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    add-int/lit8 v2, v5, 0x1

    aget-byte v4, p2, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    const/4 v4, 0x1

    aput v2, v1, v4

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    add-int/lit8 v2, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v5

    add-int/lit8 v5, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v2, v6

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v2, v5

    const/4 v5, 0x2

    aput v2, v1, v5

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->range:[I

    add-int/lit8 v2, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v6

    add-int/lit8 v6, v7, 0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v2, v7

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v2, v6

    const/4 v6, 0x3

    aput v2, v1, v6

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    const/4 v2, 0x6

    new-array v8, v2, [I

    iput-object v8, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v7, v9

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    aput v7, v1, p1

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    add-int/lit8 v7, v9, 0x1

    aget-byte v8, p2, v9

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v7, v9

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    aput v7, v1, v4

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    add-int/lit8 v7, v9, 0x1

    aget-byte v8, p2, v9

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v7, v9

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    aput v7, v1, v5

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    add-int/lit8 v7, v9, 0x1

    aget-byte v8, p2, v9

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v7, v9

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    aput v7, v1, v6

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    add-int/lit8 v7, v9, 0x1

    aget-byte v8, p2, v9

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v7, v9

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    aput v7, v1, v3

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformX:[I

    add-int/lit8 v7, v9, 0x1

    aget-byte v8, p2, v9

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v8, v9, 0x1

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v7, v9

    add-int/lit8 v9, v8, 0x1

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    or-int/2addr v7, v8

    const/4 v8, 0x5

    aput v7, v1, v8

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    add-int/lit8 v2, v9, 0x1

    aget-byte v7, p2, v9

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v9, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v7

    add-int/lit8 v7, v9, 0x1

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v2, v9

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v2, v7

    aput v2, v1, p1

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    add-int/lit8 v2, v9, 0x1

    aget-byte v7, p2, v9

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v9, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v7

    add-int/lit8 v7, v9, 0x1

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v2, v9

    add-int/lit8 v9, v7, 0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v2, v7

    aput v2, v1, v4

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    add-int/lit8 v2, v9, 0x1

    aget-byte v4, p2, v9

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v4, v7, 0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v2, v7

    add-int/lit8 v7, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    aput v2, v1, v5

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    add-int/lit8 v2, v7, 0x1

    aget-byte v4, p2, v7

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    aput v2, v1, v6

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    add-int/lit8 v2, v5, 0x1

    aget-byte v4, p2, v5

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v4

    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v2, v5

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v2, v4

    aput v2, v1, v3

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->transformY:[I

    add-int/lit8 v2, v5, 0x1

    aget-byte v3, p2, v5

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v1, v8

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    add-int/lit8 v2, v4, 0x1

    aget-byte v3, p2, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->faceAngle:I

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    add-int/lit8 v2, v4, 0x1

    aget-byte v3, p2, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->lightIntensity:I

    iget-object v1, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    aget-object v1, v1, v0

    add-int/lit8 v2, v4, 0x1

    aget-byte v3, p2, v4

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v4, 0x1

    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v2, v4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/camera/core/SemCamera$TransformData;->id:I

    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core/SemCamera;[BLcom/samsung/android/camera/core/SemCamera$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;-><init>(Lcom/samsung/android/camera/core/SemCamera;[B)V

    return-void
.end method

.method static synthetic access$3600(Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;)[Lcom/samsung/android/camera/core/SemCamera$TransformData;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$RelightTransformData;->mTransformData:[Lcom/samsung/android/camera/core/SemCamera$TransformData;

    return-object v0
.end method
