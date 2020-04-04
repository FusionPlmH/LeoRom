.class public Landroid/support/v4/content/res/SeslCompatibilityInfoReflector;
.super Ljava/lang/Object;
.source "SeslCompatibilityInfoReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoApi21Impl;,
        Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoApi21Impl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoApi21Impl;-><init>(Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$1;)V

    sput-object v0, Landroid/support/v4/content/res/SeslCompatibilityInfoReflector;->IMPL:Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoBaseImpl;

    return-void
.end method

.method public static getField_applicationScale(Landroid/content/res/Resources;)F
    .locals 1

    sget-object v0, Landroid/support/v4/content/res/SeslCompatibilityInfoReflector;->IMPL:Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoBaseImpl;->getField_applicationScale(Landroid/content/res/Resources;)F

    move-result v0

    return v0
.end method
