.class public final Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;
.super Ljava/lang/Object;
.source "SemCameraCaptureRequestKey.java"


# static fields
.field public static final CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "samsung.android.control.dynamicShotExtraInfo"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_EXTRA_INFO:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "samsung.android.control.dynamicShotHint"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_DYNAMIC_SHOT_HINT:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "samsung.android.control.lightConditionEnableMode"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->REQUEST_CONTROL_LIGHT_CONDITION_ENABLE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string/jumbo v1, "samsung.android.control.liveHdrMode"

    const-class v2, Ljava/lang/Integer;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraCaptureRequestKey;->CONTROL_LIVE_HDR_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
