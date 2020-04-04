.class public final Lcom/samsung/android/sep/camera/vendor/SemCameraSdkConstants;
.super Ljava/lang/Object;
.source "SemCameraSdkConstants.java"


# static fields
.field public static final CAMERA_ID_FRONT:Ljava/lang/String; = "1"

.field public static final CAMERA_ID_REAR:Ljava/lang/String; = "0"

.field public static final CAMERA_STATE_DISCONNECTED:I = 0xf002

.field public static final CAMERA_STATE_ERROR:I = 0xf003

.field public static final CAMERA_STATE_OPENED:I = 0xf001

.field public static final CONTROL_DYNAMIC_SHOT_CONDITION_MODE_BIT_SHIFT_CNT:I = 0x10

.field public static final CONTROL_DYNAMIC_SHOT_CONDITION_PIC_CNT_BIT_MASK:I = 0xffff

.field public static final CONTROL_DYNAMIC_SHOT_EXTRA_INFO_MODE_BIT_MASK:I = -0x10000

.field public static final CONTROL_DYNAMIC_SHOT_EXTRA_INFO_NEED_LTM:I = 0x2

.field public static final CONTROL_DYNAMIC_SHOT_EXTRA_INFO_NEED_PREVIEW_TARGET:I = 0x1

.field public static final CONTROL_DYNAMIC_SHOT_MODE_HIFI_MERGE_DEBLUR:I = 0xb

.field public static final CONTROL_DYNAMIC_SHOT_MODE_HIFI_MERGE_OIS:I = 0xc

.field public static final CONTROL_DYNAMIC_SHOT_MODE_HIFI_MERGE_SR:I = 0xd

.field public static final CONTROL_DYNAMIC_SHOT_MODE_HIFI_MERGE_ZSL:I = 0xe

.field public static final CONTROL_DYNAMIC_SHOT_MODE_HIFI_PICK:I = 0xa

.field public static final CONTROL_DYNAMIC_SHOT_MODE_LLHDR_MERGE:I = 0x1e

.field public static final CONTROL_DYNAMIC_SHOT_MODE_MFHDR_MERGE:I = 0x14

.field public static final CONTROL_DYNAMIC_SHOT_MODE_MFHDR_REMOSAIC_MERGE:I = 0x15

.field public static final CONTROL_DYNAMIC_SHOT_MODE_SINGLE:I = 0x0

.field public static final CONTROL_LIGHT_CONDITION_ENABLE_MODE_FULL:I = 0x1

.field public static final CONTROL_LIGHT_CONDITION_ENABLE_MODE_SIMPLE:I = 0x0

.field public static final CONTROL_LIVE_HDR_MODE_AUTO:I = 0x2

.field public static final CONTROL_LIVE_HDR_MODE_OFF:I = 0x0

.field public static final CONTROL_LIVE_HDR_MODE_ON:I = 0x1

.field public static final ERROR_CODE_INIT:I = 0x1

.field public static final ERROR_INITILIZATION:I = 0x1

.field public static final ERROR_INVALID:I = 0x3

.field public static final ERROR_PROCESS:I = 0x2

.field public static final KEY_PROCESS_PARAMETER_BEAUTY:Ljava/lang/String; = "beauty_parameter"

.field public static final LL_HDR_EV_COMPENSATION_PRESET:[I

.field public static final MF_HDR_EV_COMPENSATION_PRESET:[I

.field public static final MSG_CODE_PROCESSING_FINISHED:I = 0xf3

.field public static final MSG_CODE_PROCESSING_STARTED:I = 0xf2

.field public static final MSG_CODE_SHOOTING_MODE_CHANGED:I = 0xf1

.field public static final SCAMERA_SERVICE_PACKAGE:Ljava/lang/String; = "com.samsung.android.camerasdkservice"

.field public static final STREAM_OPTION_DEPTH:I = 0x8

.field public static final STREAM_OPTION_IRIS:I = 0x10

.field public static final STREAM_OPTION_NONE:I = 0x0

.field public static final STREAM_OPTION_PICTURE:I = 0x2

.field public static final STREAM_OPTION_PREVIEW:I = 0x1

.field public static final STREAM_OPTION_STITCHING:I = 0x20

.field public static final STREAM_OPTION_THUMBNAIL:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraSdkConstants;->MF_HDR_EV_COMPENSATION_PRESET:[I

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/sep/camera/vendor/SemCameraSdkConstants;->LL_HDR_EV_COMPENSATION_PRESET:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        -0x3
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
