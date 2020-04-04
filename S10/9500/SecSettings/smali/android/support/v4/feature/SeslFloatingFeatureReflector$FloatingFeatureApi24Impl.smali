.class Landroid/support/v4/feature/SeslFloatingFeatureReflector$FloatingFeatureApi24Impl;
.super Landroid/support/v4/feature/SeslFloatingFeatureReflector$FloatingFeatureApi21Impl;
.source "SeslFloatingFeatureReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/feature/SeslFloatingFeatureReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FloatingFeatureApi24Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/feature/SeslFloatingFeatureReflector$FloatingFeatureApi21Impl;-><init>()V

    const-string v0, "com.samsung.android.feature.SemFloatingFeature"

    sput-object v0, Landroid/support/v4/feature/SeslFloatingFeatureReflector$FloatingFeatureApi24Impl;->mClassName:Ljava/lang/String;

    return-void
.end method
