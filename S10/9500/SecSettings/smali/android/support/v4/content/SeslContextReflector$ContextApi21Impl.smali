.class Landroid/support/v4/content/SeslContextReflector$ContextApi21Impl;
.super Ljava/lang/Object;
.source "SeslContextReflector.java"

# interfaces
.implements Landroid/support/v4/content/SeslContextReflector$ContextBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/SeslContextReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContextApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/SeslContextReflector$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/content/SeslContextReflector$ContextApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public createPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .locals 8

    invoke-static {}, Landroid/support/v4/content/SeslContextReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "createPackageContextAsUser"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/os/UserHandle;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    aput-object p4, v1, v7

    invoke-static {p1, v0, v1}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/content/Context;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    return-object v2

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
