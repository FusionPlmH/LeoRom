.class public final Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;
.super Ljava/lang/Object;
.source "SemCameraCaptureResultKey.java"


# static fields
.field public static final RESULT_DYNAMIC_SHOT_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string/jumbo v1, "samsung.android.control.dynamicShotCondition"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->RESULT_DYNAMIC_SHOT_CONDITION:Landroid/hardware/camera2/CaptureResult$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string/jumbo v1, "samsung.android.control.dynamicShotExtraInfo"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->RESULT_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureResult$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureResult$Key;

    const-string/jumbo v1, "samsung.android.control.dynamicShotHint"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureResult$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureResultKey;->RESULT_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureResult$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
