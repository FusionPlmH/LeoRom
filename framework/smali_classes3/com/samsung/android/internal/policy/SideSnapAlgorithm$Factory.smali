.class public Lcom/samsung/android/internal/policy/SideSnapAlgorithm$Factory;
.super Ljava/lang/Object;
.source "SideSnapAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/internal/policy/SideSnapAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDockedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;IZ)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;
    .locals 14

    move-object v9, p0

    const v0, 0x105035a

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    const v0, 0x1050359

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const/4 v0, 0x2

    mul-int/2addr v0, v11

    sub-int v12, v10, v0

    new-instance v13, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    const/4 v8, 0x2

    move-object v0, v13

    move-object v1, v9

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move v6, v12

    move/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;-><init>(Landroid/content/res/Resources;IILandroid/graphics/Rect;IIZI)V

    return-object v13
.end method

.method public static getFixedModeAlgorithm(Landroid/content/res/Resources;IILandroid/graphics/Rect;I)Lcom/samsung/android/internal/policy/SideSnapAlgorithm;
    .locals 10

    new-instance v9, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/internal/policy/SideSnapAlgorithm;-><init>(Landroid/content/res/Resources;IILandroid/graphics/Rect;IIZI)V

    return-object v9
.end method
