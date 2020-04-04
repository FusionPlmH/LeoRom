.class Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemApi21Impl;
.super Ljava/lang/Object;
.source "SeslSettingsReflector.java"

# interfaces
.implements Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/provider/SeslSettingsReflector$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector$SystemApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_SEM_PEN_HOVERING()Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/support/v4/provider/SeslSettingsReflector$SeslSystemReflector;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "PEN_HOVERING"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_0
    const-string v1, "pen_hovering"

    return-object v1
.end method
