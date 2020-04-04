.class public Landroid/support/v4/widget/SeslAbsListViewReflector;
.super Ljava/lang/Object;
.source "SeslAbsListViewReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewApi21Impl;,
        Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;

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

    const-class v0, Landroid/widget/AbsListView;

    sput-object v0, Landroid/support/v4/widget/SeslAbsListViewReflector;->mClass:Ljava/lang/Class;

    new-instance v0, Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewApi21Impl;-><init>(Landroid/support/v4/widget/SeslAbsListViewReflector$1;)V

    sput-object v0, Landroid/support/v4/widget/SeslAbsListViewReflector;->IMPL:Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/widget/SeslAbsListViewReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_mEdgeGlowTop(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 1

    sget-object v0, Landroid/support/v4/widget/SeslAbsListViewReflector;->IMPL:Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;->getField_mEdgeGlowTop(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    return-object v0
.end method

.method public static setField_mEdgeGlowBottom(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/SeslAbsListViewReflector;->IMPL:Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;->setField_mEdgeGlowBottom(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V

    return-void
.end method

.method public static setField_mEdgeGlowTop(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V
    .locals 1

    sget-object v0, Landroid/support/v4/widget/SeslAbsListViewReflector;->IMPL:Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;->setField_mEdgeGlowTop(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V

    return-void
.end method
