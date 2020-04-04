.class public Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;
.super Ljava/lang/Object;
.source "SemCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core/SemCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObjectTrackingData"
.end annotation


# instance fields
.field public focusState:S

.field public focusedArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>([B)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;->focusedArea:Landroid/graphics/Rect;

    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;->focusState:S

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v2

    or-int/2addr v1, v3

    int-to-short v1, v1

    const/4 v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v2

    or-int/2addr v3, v4

    int-to-short v3, v3

    const/4 v4, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v2

    or-int/2addr v4, v5

    int-to-short v4, v4

    aget-byte v5, p1, v2

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x9

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v2, v6, 0x8

    or-int/2addr v2, v5

    int-to-short v2, v2

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/samsung/android/camera/core/SemCamera$ObjectTrackingData;->focusedArea:Landroid/graphics/Rect;

    return-void
.end method
