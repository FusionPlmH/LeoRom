.class public Landroid/support/v4/graphics/SeslPaintReflector;
.super Ljava/lang/Object;
.source "SeslPaintReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/SeslPaintReflector$PaintApi21Impl;,
        Landroid/support/v4/graphics/SeslPaintReflector$PaintBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/graphics/SeslPaintReflector$PaintBaseImpl;

.field private static final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Landroid/graphics/Paint;

    sput-object v0, Landroid/support/v4/graphics/SeslPaintReflector;->mClass:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/graphics/SeslPaintReflector$PaintApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/graphics/SeslPaintReflector$PaintApi21Impl;-><init>(Landroid/support/v4/graphics/SeslPaintReflector$1;)V

    sput-object v0, Landroid/support/v4/graphics/SeslPaintReflector;->IMPL:Landroid/support/v4/graphics/SeslPaintReflector$PaintBaseImpl;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/SeslPaintReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getHCTStrokeWidth(Landroid/graphics/Paint;)F
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/SeslPaintReflector;->IMPL:Landroid/support/v4/graphics/SeslPaintReflector$PaintBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/graphics/SeslPaintReflector$PaintBaseImpl;->getHCTStrokeWidth(Landroid/graphics/Paint;)F

    move-result v0

    return v0
.end method
