.class public Landroid/support/v4/content/res/SeslResourcesReflector;
.super Ljava/lang/Object;
.source "SeslResourcesReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesApi21Impl;,
        Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesBaseImpl;

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

    const-class v0, Landroid/content/res/Resources;

    sput-object v0, Landroid/support/v4/content/res/SeslResourcesReflector;->mClass:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesApi21Impl;-><init>(Landroid/support/v4/content/res/SeslResourcesReflector$1;)V

    sput-object v0, Landroid/support/v4/content/res/SeslResourcesReflector;->IMPL:Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesBaseImpl;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/content/res/SeslResourcesReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method static getCompatibilityInfo(Landroid/content/res/Resources;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/support/v4/content/res/SeslResourcesReflector;->IMPL:Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/SeslResourcesReflector$ResourcesBaseImpl;->getCompatibilityInfo(Landroid/content/res/Resources;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
