.class public Lcom/samsung/android/multidisplay/MultiDisplayManager$DexTaskInfo;
.super Ljava/lang/Object;
.source "MultiDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multidisplay/MultiDisplayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DexTaskInfo"
.end annotation


# static fields
.field public static final FLAG_FIXED_ORIENTATION:I = 0x4

.field public static final FLAG_IN_MULTI_WINDOW_MODE:I = 0x1

.field public static final FLAG_RESIZEABLE_TO_FULLSCREEN:I = 0x2


# instance fields
.field private final mFlags:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/multidisplay/MultiDisplayManager$DexTaskInfo;->mFlags:I

    return-void
.end method


# virtual methods
.method public isFixedOreintation()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/multidisplay/MultiDisplayManager$DexTaskInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInMultiWindowMode()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/multidisplay/MultiDisplayManager$DexTaskInfo;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isResizableToFullscreen()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/multidisplay/MultiDisplayManager$DexTaskInfo;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
