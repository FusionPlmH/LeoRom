.class public Landroid/support/v4/os/SeslPerfManagerReflector;
.super Ljava/lang/Object;
.source "SeslPerfManagerReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerApi24Impl;,
        Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerApi21Impl;,
        Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerApi24Impl;

    invoke-direct {v0}, Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v4/os/SeslPerfManagerReflector;->IMPL:Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerBaseImpl;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/os/SeslPerfManagerReflector;->IMPL:Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerBaseImpl;

    :goto_0
    return-void
.end method

.method public static onSmoothScrollEvent(Z)Z
    .locals 1

    sget-object v0, Landroid/support/v4/os/SeslPerfManagerReflector;->IMPL:Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerBaseImpl;->onSmoothScrollEvent(Z)Z

    move-result v0

    return v0
.end method
