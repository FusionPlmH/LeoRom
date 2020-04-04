.class Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerApi24Impl;
.super Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerApi21Impl;
.source "SeslPerfManagerReflector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/SeslPerfManagerReflector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerfManagerApi24Impl"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerApi21Impl;-><init>()V

    const-string v0, "com.samsung.android.os.SemPerfManager"

    sput-object v0, Landroid/support/v4/os/SeslPerfManagerReflector$PerfManagerApi24Impl;->mClassName:Ljava/lang/String;

    return-void
.end method
