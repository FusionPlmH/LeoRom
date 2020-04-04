.class Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewApi21Impl;
.super Ljava/lang/Object;
.source "SeslAbsListViewReflector.java"

# interfaces
.implements Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SeslAbsListViewReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AbsListViewApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/SeslAbsListViewReflector$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/widget/SeslAbsListViewReflector$AbsListViewApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_mEdgeGlowTop(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;
    .locals 3

    invoke-static {}, Landroid/support/v4/widget/SeslAbsListViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mEdgeGlowTop"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/widget/EdgeEffect;

    return-object v2

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public setField_mEdgeGlowBottom(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V
    .locals 2

    invoke-static {}, Landroid/support/v4/widget/SeslAbsListViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mEdgeGlowBottom"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1, v0, p2}, Landroid/support/v4/SeslBaseReflector;->set(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setField_mEdgeGlowTop(Landroid/widget/AbsListView;Landroid/widget/EdgeEffect;)V
    .locals 2

    invoke-static {}, Landroid/support/v4/widget/SeslAbsListViewReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mEdgeGlowTop"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-static {p1, v0, p2}, Landroid/support/v4/SeslBaseReflector;->set(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
