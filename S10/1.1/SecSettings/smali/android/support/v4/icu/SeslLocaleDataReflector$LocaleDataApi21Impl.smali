.class Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataApi21Impl;
.super Ljava/lang/Object;
.source "SeslLocaleDataReflector.java"

# interfaces
.implements Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/icu/SeslLocaleDataReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleDataApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/icu/SeslLocaleDataReflector$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/icu/SeslLocaleDataReflector$LocaleDataApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/util/Locale;)Ljava/lang/Object;
    .locals 6

    const-string v0, "libcore.icu.LocaleData"

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/util/Locale;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/support/v4/SeslBaseReflector;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-static {v1, v0, v2}, Landroid/support/v4/SeslBaseReflector;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "libcore.icu.LocaleData"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    return-object v1
.end method

.method public getField_amPm(Ljava/lang/Object;)[Ljava/lang/String;
    .locals 3

    const-string v0, "libcore.icu.LocaleData"

    const-string v1, "amPm"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, [Ljava/lang/String;

    return-object v2

    :cond_0
    const-string v1, "Am"

    const-string v2, "Pm"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getField_narrowAm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const-string v0, "libcore.icu.LocaleData"

    const-string v1, "narrowAm"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_0
    const-string v1, "Am"

    return-object v1
.end method

.method public getField_narrowPm(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const-string v0, "libcore.icu.LocaleData"

    const-string v1, "narrowPm"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_0
    const-string v1, "Pm"

    return-object v1
.end method

.method public getField_zeroDigit(Ljava/lang/Object;)C
    .locals 3

    const-string v0, "libcore.icu.LocaleData"

    const-string/jumbo v1, "zeroDigit"

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Character;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    return v2

    :cond_0
    const/16 v1, 0x30

    return v1
.end method
