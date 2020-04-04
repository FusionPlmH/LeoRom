.class public Landroid/support/v4/feature/SeslCscFeatureReflector;
.super Ljava/lang/Object;
.source "SeslCscFeatureReflector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureApi24Impl;,
        Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureApi21Impl;,
        Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureBaseImpl;

.field private static mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureApi24Impl;

    invoke-direct {v0}, Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v4/feature/SeslCscFeatureReflector;->IMPL:Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureBaseImpl;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/feature/SeslCscFeatureReflector;->IMPL:Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureBaseImpl;

    :goto_0
    sget-object v0, Landroid/support/v4/feature/SeslCscFeatureReflector;->IMPL:Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureBaseImpl;

    invoke-interface {v0}, Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureBaseImpl;->getInstance()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Landroid/support/v4/feature/SeslCscFeatureReflector;->mInstance:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/support/v4/feature/SeslCscFeatureReflector;->mInstance:Ljava/lang/Object;

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/support/v4/feature/SeslCscFeatureReflector;->IMPL:Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureBaseImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/feature/SeslCscFeatureReflector$CscFeatureBaseImpl;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
