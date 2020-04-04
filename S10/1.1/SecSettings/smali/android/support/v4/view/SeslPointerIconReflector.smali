.class public Landroid/support/v4/view/SeslPointerIconReflector;
.super Ljava/lang/Object;
.source "SeslPointerIconReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi24Impl;,
        Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi21Impl;,
        Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

.field protected static mClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.view.PointerIcon"

    sput-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi24Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi24Impl;-><init>(Landroid/support/v4/view/SeslPointerIconReflector$1;)V

    sput-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi21Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi21Impl;-><init>(Landroid/support/v4/view/SeslPointerIconReflector$1;)V

    sput-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

    :goto_0
    return-void
.end method

.method public static getField_SEM_TYPE_STYLUS_DEFAULT()I
    .locals 1

    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;->getField_SEM_TYPE_STYLUS_DEFAULT()I

    move-result v0

    return v0
.end method

.method public static getField_SEM_TYPE_STYLUS_MORE()I
    .locals 1

    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;->getField_SEM_TYPE_STYLUS_MORE()I

    move-result v0

    return v0
.end method

.method public static getField_SEM_TYPE_STYLUS_PEN_SELECT()I
    .locals 1

    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;->getField_SEM_TYPE_STYLUS_PEN_SELECT()I

    move-result v0

    return v0
.end method

.method public static getField_SEM_TYPE_STYLUS_SCROLL_DOWN()I
    .locals 1

    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;->getField_SEM_TYPE_STYLUS_SCROLL_DOWN()I

    move-result v0

    return v0
.end method

.method public static getField_SEM_TYPE_STYLUS_SCROLL_UP()I
    .locals 1

    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->IMPL:Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconBaseImpl;->getField_SEM_TYPE_STYLUS_SCROLL_UP()I

    move-result v0

    return v0
.end method
