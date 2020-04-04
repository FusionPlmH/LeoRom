.class public Landroid/view/SemSurfaceControl;
.super Ljava/lang/Object;
.source "SemSurfaceControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemSurfaceControl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static screenshot(II)Landroid/graphics/Bitmap;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v2, p0, p1, v0}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static/range {p0 .. p6}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
