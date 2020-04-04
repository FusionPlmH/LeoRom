.class public Landroid/support/v4/content/res/SeslConfigurationReflector;
.super Ljava/lang/Object;
.source "SeslConfigurationReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationApi24Impl;,
        Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationApi21Impl;,
        Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationBaseImpl;

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
    .locals 3

    const-class v0, Landroid/content/res/Configuration;

    sput-object v0, Landroid/support/v4/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    new-instance v0, Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationApi24Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationApi24Impl;-><init>(Landroid/support/v4/content/res/SeslConfigurationReflector$1;)V

    sput-object v0, Landroid/support/v4/content/res/SeslConfigurationReflector;->IMPL:Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationBaseImpl;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationApi21Impl;

    invoke-direct {v0, v1}, Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationApi21Impl;-><init>(Landroid/support/v4/content/res/SeslConfigurationReflector$1;)V

    sput-object v0, Landroid/support/v4/content/res/SeslConfigurationReflector;->IMPL:Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationBaseImpl;

    :goto_0
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .locals 1

    sget-object v0, Landroid/support/v4/content/res/SeslConfigurationReflector;->mClass:Ljava/lang/Class;

    return-object v0
.end method

.method public static getField_SEM_DESKTOP_MODE_ENABLED(Landroid/content/res/Configuration;)I
    .locals 1

    sget-object v0, Landroid/support/v4/content/res/SeslConfigurationReflector;->IMPL:Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationBaseImpl;->getField_SEM_DESKTOP_MODE_ENABLED(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method

.method public static getField_semDesktopModeEnabled(Landroid/content/res/Configuration;)I
    .locals 1

    sget-object v0, Landroid/support/v4/content/res/SeslConfigurationReflector;->IMPL:Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationBaseImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/SeslConfigurationReflector$ConfigurationBaseImpl;->getField_semDesktopModeEnabled(Landroid/content/res/Configuration;)I

    move-result v0

    return v0
.end method
