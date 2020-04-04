.class public Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;
.super Ljava/lang/Object;
.source "SeslStateListDrawableReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableApi21Impl;,
        Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableBaseImpl;

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

    const-class v0, Landroid/graphics/drawable/StateListDrawable;

    sput-object v0, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->mClass:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableApi21Impl;-><init>(Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$1;)V

    sput-object v0, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->IMPL:Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableBaseImpl;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->IMPL:Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableBaseImpl;->getStateCount(Landroid/graphics/drawable/StateListDrawable;)I

    move-result v0

    return v0
.end method

.method public static getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->IMPL:Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableBaseImpl;->getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 1

    sget-object v0, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->IMPL:Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableBaseImpl;->getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I

    move-result-object v0

    return-object v0
.end method
