.class final Lcom/android/settings/development/GPUWatchService$SemDvfsSet;
.super Ljava/lang/Object;
.source "GPUWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/GPUWatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SemDvfsSet"
.end annotation


# instance fields
.field isAcquired:Z

.field mSemDvfsCpuMax:Lcom/samsung/android/os/SemDvfsManager;

.field mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

.field mSemDvfsGpuMax:Lcom/samsung/android/os/SemDvfsManager;

.field mSemDvfsGpuMin:Lcom/samsung/android/os/SemDvfsManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsCpuMin:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v0, p0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsCpuMax:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v0, p0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsGpuMin:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v0, p0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->mSemDvfsGpuMax:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;->isAcquired:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/development/GPUWatchService$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/development/GPUWatchService$SemDvfsSet;-><init>()V

    return-void
.end method
