.class Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableApi21Impl;
.super Ljava/lang/Object;
.source "SeslStateListDrawableReflector.java"

# interfaces
.implements Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StateListDrawableApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector$StateListDrawableApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getStateCount(Landroid/graphics/drawable/StateListDrawable;)I
    .locals 4

    invoke-static {}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getStateCount"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_0
    return v2
.end method

.method public getStateDrawable(Landroid/graphics/drawable/StateListDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 6

    invoke-static {}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getStateDrawable"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/Drawable;

    return-object v2

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getStateSet(Landroid/graphics/drawable/StateListDrawable;I)[I
    .locals 6

    invoke-static {}, Landroid/support/v4/graphics/drawable/SeslStateListDrawableReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getStateSet"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [I

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, [I

    return-object v2

    :cond_0
    new-array v1, v5, [I

    return-object v1
.end method
