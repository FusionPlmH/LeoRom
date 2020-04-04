.class Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureApi24Impl;
.super Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureApi21Impl;
.source "SeslCscFeatureReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/feature/SeslCscFeatureReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CscFeatureApi24Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureApi21Impl;-><init>()V

    const-string v0, "com.samsung.android.feature.SemCscFeature"

    sput-object v0, Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureApi24Impl;->mClassName:Ljava/lang/String;

    return-void
.end method
