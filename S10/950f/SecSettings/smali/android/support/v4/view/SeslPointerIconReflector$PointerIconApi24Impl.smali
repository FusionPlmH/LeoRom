.class Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi24Impl;
.super Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi21Impl;
.source "SeslPointerIconReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/SeslPointerIconReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PointerIconApi24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi21Impl;-><init>(Landroid/support/v4/view/SeslPointerIconReflector$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/SeslPointerIconReflector$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/view/SeslPointerIconReflector$PointerIconApi24Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_SEM_TYPE_STYLUS_DEFAULT()I
    .locals 3

    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "SEM_TYPE_STYLUS_DEFAULT"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public getField_SEM_TYPE_STYLUS_MORE()I
    .locals 3

    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "SEM_TYPE_STYLUS_MORE"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_0
    const/16 v1, 0x4e2a

    return v1
.end method

.method public getField_SEM_TYPE_STYLUS_PEN_SELECT()I
    .locals 3

    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "SEM_TYPE_STYLUS_PEN_SELECT"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_0
    const/16 v1, 0x15

    return v1
.end method

.method public getField_SEM_TYPE_STYLUS_SCROLL_DOWN()I
    .locals 3

    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "SEM_TYPE_STYLUS_SCROLL_DOWN"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_0
    const/16 v1, 0xf

    return v1
.end method

.method public getField_SEM_TYPE_STYLUS_SCROLL_UP()I
    .locals 3

    sget-object v0, Landroid/support/v4/view/SeslPointerIconReflector;->mClassName:Ljava/lang/String;

    const-string v1, "SEM_TYPE_STYLUS_SCROLL_UP"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :cond_0
    const/16 v1, 0xb

    return v1
.end method
