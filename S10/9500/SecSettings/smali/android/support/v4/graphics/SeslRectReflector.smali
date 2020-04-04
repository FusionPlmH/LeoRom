.class public Landroid/support/v4/graphics/SeslRectReflector;
.super Ljava/lang/Object;
.source "SeslRectReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/SeslRectReflector$RectApi21Impl;,
        Landroid/support/v4/graphics/SeslRectReflector$RectBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/graphics/SeslRectReflector$RectBaseImpl;

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

    const-class v0, Landroid/graphics/Rect;

    sput-object v0, Landroid/support/v4/graphics/SeslRectReflector;->mClass:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/graphics/SeslRectReflector$RectApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/graphics/SeslRectReflector$RectApi21Impl;-><init>(Landroid/support/v4/graphics/SeslRectReflector$1;)V

    sput-object v0, Landroid/support/v4/graphics/SeslRectReflector;->IMPL:Landroid/support/v4/graphics/SeslRectReflector$RectBaseImpl;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/SeslRectReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static scale(Landroid/graphics/Rect;F)V
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/SeslRectReflector;->IMPL:Landroid/support/v4/graphics/SeslRectReflector$RectBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/SeslRectReflector$RectBaseImpl;->scale(Landroid/graphics/Rect;F)V

    return-void
.end method
