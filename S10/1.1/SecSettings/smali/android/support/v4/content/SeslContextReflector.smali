.class public Landroid/support/v4/content/SeslContextReflector;
.super Ljava/lang/Object;
.source "SeslContextReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/SeslContextReflector$ContextApi21Impl;,
        Landroid/support/v4/content/SeslContextReflector$ContextBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/content/SeslContextReflector$ContextBaseImpl;

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

    const-class v0, Landroid/content/Context;

    sput-object v0, Landroid/support/v4/content/SeslContextReflector;->mClass:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/content/SeslContextReflector$ContextApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/content/SeslContextReflector$ContextApi21Impl;-><init>(Landroid/support/v4/content/SeslContextReflector$1;)V

    sput-object v0, Landroid/support/v4/content/SeslContextReflector;->IMPL:Landroid/support/v4/content/SeslContextReflector$ContextBaseImpl;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/content/SeslContextReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static createPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .locals 1

    sget-object v0, Landroid/support/v4/content/SeslContextReflector;->IMPL:Landroid/support/v4/content/SeslContextReflector$ContextBaseImpl;

    invoke-interface {v0, p0, p1, p2, p3}, Landroid/support/v4/content/SeslContextReflector$ContextBaseImpl;->createPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
