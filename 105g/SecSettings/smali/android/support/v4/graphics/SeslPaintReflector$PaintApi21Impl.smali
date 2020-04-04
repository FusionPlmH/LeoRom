.class Landroid/support/v4/graphics/SeslPaintReflector$PaintApi21Impl;
.super Ljava/lang/Object;
.source "SeslPaintReflector.java"

# interfaces
.implements Landroid/support/v4/graphics/SeslPaintReflector$PaintBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/SeslPaintReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaintApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/graphics/SeslPaintReflector$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/graphics/SeslPaintReflector$PaintApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getHCTStrokeWidth(Landroid/graphics/Paint;)F
    .locals 4

    invoke-static {}, Landroid/support/v4/graphics/SeslPaintReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getHCTStrokeWidth"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
