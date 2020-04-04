.class public interface abstract Landroid/hardware/biometrics/BiometricFingerprintConstants;
.super Ljava/lang/Object;
.source "BiometricFingerprintConstants.java"


# static fields
.field public static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field public static final FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final FINGERPRINT_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field public static final FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x5

.field public static final FINGERPRINT_ACQUIRED_TOO_SLOW:I = 0x4

.field public static final FINGERPRINT_ACQUIRED_VENDOR:I = 0x6

.field public static final FINGERPRINT_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final FINGERPRINT_ERROR_CANCELED:I = 0x5

.field public static final FINGERPRINT_ERROR_HW_NOT_PRESENT:I = 0xc

.field public static final FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final FINGERPRINT_ERROR_LOCKOUT:I = 0x7

.field public static final FINGERPRINT_ERROR_LOCKOUT_PERMANENT:I = 0x9

.field public static final FINGERPRINT_ERROR_NO_FINGERPRINTS:I = 0xb

.field public static final FINGERPRINT_ERROR_NO_SPACE:I = 0x4

.field public static final FINGERPRINT_ERROR_TIMEOUT:I = 0x3

.field public static final FINGERPRINT_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final FINGERPRINT_ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final FINGERPRINT_ERROR_USER_CANCELED:I = 0xa

.field public static final FINGERPRINT_ERROR_VENDOR:I = 0x8

.field public static final FINGERPRINT_ERROR_VENDOR_BASE:I = 0x3e8

.field public static final FINGERPRINT_REQUEST_ENROLL_SESSION:I = 0x3ea

.field public static final FINGERPRINT_REQUEST_ENROLL_TYPE:I = 0x12

.field public static final FINGERPRINT_REQUEST_ENUMERATE:I = 0xb

.field public static final FINGERPRINT_REQUEST_GET_FP_IDS:I = 0x3eb

.field public static final FINGERPRINT_REQUEST_GET_MAX_TEMPLATE_NUMBER:I = 0x3ec

.field public static final FINGERPRINT_REQUEST_GET_SENSOR_INFO:I = 0x5

.field public static final FINGERPRINT_REQUEST_GET_SENSOR_STATUS:I = 0x6

.field public static final FINGERPRINT_REQUEST_GET_TOUCH_CNT:I = 0x3ef

.field public static final FINGERPRINT_REQUEST_GET_UNIQUE_ID:I = 0x7

.field public static final FINGERPRINT_REQUEST_GET_USERIDS:I = 0xc

.field public static final FINGERPRINT_REQUEST_GET_VERSION:I = 0x4

.field public static final FINGERPRINT_REQUEST_HAS_FEATURE:I = 0x3ee

.field public static final FINGERPRINT_REQUEST_LOCKOUT:I = 0x3e9

.field public static final FINGERPRINT_REQUEST_NAVIGATION_LCD_ONOFF:I = 0x11

.field public static final FINGERPRINT_REQUEST_NAVIGATION_MODE_END:I = 0x10

.field public static final FINGERPRINT_REQUEST_NAVIGATION_MODE_START:I = 0xf

.field public static final FINGERPRINT_REQUEST_PAUSE:I = 0x0

.field public static final FINGERPRINT_REQUEST_PROCESS_FIDO:I = 0x9

.field public static final FINGERPRINT_REQUEST_REMOVE_FINGER:I = 0x3e8

.field public static final FINGERPRINT_REQUEST_RESUME:I = 0x1

.field public static final FINGERPRINT_REQUEST_SENSOR_TEST_NORMALSCAN:I = 0x3

.field public static final FINGERPRINT_REQUEST_SESSION_OPEN:I = 0x2

.field public static final FINGERPRINT_REQUEST_SET_ACTIVE_GROUP:I = 0x8

.field public static final FINGERPRINT_REQUEST_UPDATE_SID:I = 0xa

.field public static final SEM_FEATURE_NAVIGATION:I = 0x1

.field public static final SEM_FEATURE_SWIPE_ENROLL:I = 0x2

.field public static final SEM_FINGERPRINT_ACQUIRED_DUPLICATED_IMAGE:I = 0x3ea

.field public static final SEM_FINGERPRINT_ACQUIRED_LIGHT_TOUCH:I = 0x3eb

.field public static final SEM_FINGERPRINT_ACQUIRED_WET_FINGER:I = 0x3e9

.field public static final SEM_FINGERPRINT_ERROR_CALIBRATION:I = 0x3e9

.field public static final SEM_FINGERPRINT_ERROR_DISABLED_BIOMETRICS:I = 0x138a

.field public static final SEM_FINGERPRINT_ERROR_INVALID_HW:I = 0x3ed

.field public static final SEM_FINGERPRINT_ERROR_NEED_TO_RETRY:I = 0x1388

.field public static final SEM_FINGERPRINT_ERROR_ONE_HAND_MODE:I = 0x1389

.field public static final SEM_FINGERPRINT_ERROR_SERVICE_FAILURE:I = 0x3eb

.field public static final SEM_FINGERPRINT_ERROR_SMART_VIEW:I = 0x138b

.field public static final SEM_FINGERPRINT_ERROR_SYSTEM_FAILURE:I = 0x3ea

.field public static final SEM_FINGERPRINT_ERROR_TA_UPDATE:I = -0x64

.field public static final SEM_FINGERPRINT_ERROR_TEMPLATE_CORRUPTED:I = 0x3ec

.field public static final SEM_FINGERPRINT_EVENT_CAPTURE_COMPLETED:I = 0x2713

.field public static final SEM_FINGERPRINT_EVENT_CAPTURE_FAILED:I = 0x2716

.field public static final SEM_FINGERPRINT_EVENT_CAPTURE_READY:I = 0x2711

.field public static final SEM_FINGERPRINT_EVENT_CAPTURE_STARTED:I = 0x2712

.field public static final SEM_FINGERPRINT_EVENT_CAPTURE_SUCCESS:I = 0x2715

.field public static final SEM_FINGERPRINT_EVENT_FACTORY_SNSR_SCRIPT_END:I = 0x2719

.field public static final SEM_FINGERPRINT_EVENT_FACTORY_SNSR_SCRIPT_START:I = 0x2718

.field public static final SEM_FINGERPRINT_EVENT_FINGER_LEAVE:I = 0x2714

.field public static final SEM_FINGERPRINT_EVENT_FINGER_LEAVE_TIMEOUT:I = 0x2717

.field public static final SEM_FINGERPRINT_EVENT_GESTURE_DTAP:I = 0x4e23

.field public static final SEM_FINGERPRINT_EVENT_GESTURE_LPRESS:I = 0x4e24

.field public static final SEM_FINGERPRINT_EVENT_GESTURE_SWIPE_DOWN:I = 0x4e22

.field public static final SEM_FINGERPRINT_EVENT_GESTURE_SWIPE_UP:I = 0x4e21

.field public static final SEM_FINGERPRINT_REQUEST_SET_SCREEN_STATUS:I = 0x3f0

.field public static final SEM_REQUEST_FORCE_CBGE:I = 0x15

.field public static final SEM_REQUEST_GET_FINGER_ICON_REMAIN_TIME:I = 0x3f2

.field public static final SEM_REQUEST_GET_SENSOR_TEST_RESULT:I = 0x13

.field public static final SEM_REQUEST_GET_TA_VERSION:I = 0x2710

.field public static final SEM_REQUEST_HIDE_INDISPLAY_AUTH_ANIMATION:I = 0x3f4

.field public static final SEM_REQUEST_INSTALL_TA:I = 0x2711

.field public static final SEM_REQUEST_MOVE_INDISPLAY_ICON:I = 0x3f3

.field public static final SEM_REQUEST_SET_ASP_LEVEL:I = 0x14

.field public static final SEM_REQUEST_SHOW_INDISPLAY_AUTH_ANIMATION:I = 0x3f1

.field public static final SEM_REQUEST_TOUCH_EVENT:I = 0x16

.field public static final SEM_SENSOR_STATUS_ERROR:I = 0x186ca

.field public static final SEM_SENSOR_STATUS_OK:I = 0x186c8

.field public static final SEM_SENSOR_STATUS_WORKING:I = 0x186c9
