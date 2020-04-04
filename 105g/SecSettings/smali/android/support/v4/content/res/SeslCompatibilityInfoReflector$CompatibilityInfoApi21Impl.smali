.class Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoApi21Impl;
.super Ljava/lang/Object;
.source "SeslCompatibilityInfoReflector.java"

# interfaces
.implements Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoBaseImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/SeslCompatibilityInfoReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompatibilityInfoApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/content/res/SeslCompatibilityInfoReflector$CompatibilityInfoApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getField_applicationScale(Landroid/content/res/Resources;)F
    .locals 4

    invoke-static {p1}, Landroid/support/v4/content/res/SeslResourcesReflector;->getCompatibilityInfo(Landroid/content/res/Resources;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.content.res.CompatibilityInfo"

    const-string v2, "applicationScale"

    invoke-static {v1, v2}, Landroid/support/v4/SeslBaseReflector;->getField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Landroid/support/v4/SeslBaseReflector;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    return v3

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    return v1
.end method
