.class public Landroid/support/v4/os/SeslUserHandleReflector;
.super Ljava/lang/Object;
.source "SeslUserHandleReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/SeslUserHandleReflector$UserHandleApi21Impl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/os/SeslUserHandleReflector$UserHandleApi21Impl;

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

    const-class v0, Landroid/os/UserHandle;

    sput-object v0, Landroid/support/v4/os/SeslUserHandleReflector;->mClass:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/os/SeslUserHandleReflector$UserHandleApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/os/SeslUserHandleReflector$UserHandleApi21Impl;-><init>(Landroid/support/v4/os/SeslUserHandleReflector$1;)V

    sput-object v0, Landroid/support/v4/os/SeslUserHandleReflector;->IMPL:Landroid/support/v4/os/SeslUserHandleReflector$UserHandleApi21Impl;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/os/SeslUserHandleReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static myUserId()I
    .locals 1

    sget-object v0, Landroid/support/v4/os/SeslUserHandleReflector;->IMPL:Landroid/support/v4/os/SeslUserHandleReflector$UserHandleApi21Impl;

    invoke-virtual {v0}, Landroid/support/v4/os/SeslUserHandleReflector$UserHandleApi21Impl;->myUserId()I

    move-result v0

    return v0
.end method
