.class public Lcom/android/systemui/recents/TriangleShape;
.super Landroid/graphics/drawable/shapes/PathShape;
.source "TriangleShape.java"


# instance fields
.field private mTriangularPath:Landroid/graphics/Path;


# virtual methods
.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/systemui/recents/TriangleShape;->mTriangularPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    return-void
.end method
