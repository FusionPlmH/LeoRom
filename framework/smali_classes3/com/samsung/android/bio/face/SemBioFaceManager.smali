.class public Lcom/samsung/android/bio/face/SemBioFaceManager;
.super Ljava/lang/Object;
.source "SemBioFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;,
        Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;
    }
.end annotation


# static fields
.field public static final BUNDLE_AUTH_COORDINATE_H:Ljava/lang/String; = "auth_coordinate_h"

.field public static final BUNDLE_AUTH_COORDINATE_TOKEN:Ljava/lang/String; = "auth_coordinate_token"

.field public static final BUNDLE_AUTH_COORDINATE_W:Ljava/lang/String; = "auth_coordinate_w"

.field public static final BUNDLE_AUTH_COORDINATE_X:Ljava/lang/String; = "auth_coordinate_x"

.field public static final BUNDLE_AUTH_COORDINATE_Y:Ljava/lang/String; = "auth_coordinate_y"

.field public static final BUNDLE_PREVIEW_ON_TOP:Ljava/lang/String; = "preview_on_top"

.field public static final BUNDLE_SET_SECURITY_LEVEL:Ljava/lang/String; = "security_level"

.field public static final BUNDLE_SET_TIMEOUT:Ljava/lang/String; = "set_timeout"

.field public static final BUNDLE_SKIP_WAKELOCK:Ljava/lang/String; = "skip_wakelock"

.field public static final BUNDLE_SUPPORT_AUTH_COORDINATE:Ljava/lang/String; = "support_auth_coordinate"

.field private static final DEBUG:Z

.field public static final EXTRA_KEY_PRIVILEGED_FLAG:Ljava/lang/String; = "sem_privileged_attr"

.field public static final FACE_ACQUIRED_FAKE:I = 0x4

.field public static final FACE_ACQUIRED_GOOD:I = 0x0

.field public static final FACE_ACQUIRED_INVALID:I = 0x2

.field public static final FACE_ACQUIRED_LOW_QUALITY:I = 0x3

.field public static final FACE_ACQUIRED_MISALIGNED:I = 0x7

.field public static final FACE_ACQUIRED_PROCESS_FAIL:I = 0x1

.field public static final FACE_ACQUIRED_PROXIMITY_ALERT:I = 0x3e9

.field public static final FACE_ACQUIRED_REVERSE_ORIENTATION:I = 0x3ea

.field public static final FACE_ACQUIRED_TOO_BIG:I = 0x5

.field public static final FACE_ACQUIRED_TOO_SMALL:I = 0x6

.field public static final FACE_ERROR_CAMERA_FAILURE:I = 0x2713

.field public static final FACE_ERROR_CAMERA_UNAVAILABLE:I = 0x2715

.field public static final FACE_ERROR_CANCELED:I = 0x5

.field public static final FACE_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final FACE_ERROR_IDENTIFY_FAILURE_BROKEN_DATABASE:I = 0x3ec

.field public static final FACE_ERROR_LOCKOUT:I = 0x2711

.field public static final FACE_ERROR_NO_SPACE:I = 0x4

.field public static final FACE_ERROR_TEMPLATE_CORRUPTED:I = 0x3ec

.field public static final FACE_ERROR_TIMEOUT:I = 0x3

.field public static final FACE_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final FACE_ERROR_USER_CANCELED:I = 0xa

.field public static final FACE_OK:I = 0x0

.field public static final FLAG_ENROLL_WITHOUT_TOKEN:I = 0x1

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_AUTHENTICATION_SUCCEEDED_FIDO_RESULT_DATA:I = 0x6b

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_REMOVED:I = 0x69

.field private static final MSG_UPDATE_STATUS:I = 0x6c

.field public static final PRIVILEGED_FLAG_ALLOW_BACKGROUND:I = 0x4

.field public static final PRIVILEGED_FLAG_AVOID_LOCKOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemBioFaceManager"


# instance fields
.field private mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

.field private mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

.field private mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mHandler:Landroid/os/Handler;

.field private mPromptReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

.field private mRemovalFace:Lcom/samsung/android/bio/face/SemBioFace;

.field private mService:Lcom/samsung/android/bio/face/IFaceService;

.field private mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

.field private mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

.field private mToken:Landroid/os/IBinder;

.field private mUpdateStatusListener:Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$3;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/content/Context;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method static synthetic access$102(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/IFaceService;)Lcom/samsung/android/bio/face/IFaceService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendErrorResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendUpdateStatus(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFace;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalFace:Lcom/samsung/android/bio/face/SemBioFace;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/bio/face/SemBioFaceManager;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/samsung/android/bio/face/SemBioFaceManager;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/samsung/android/bio/face/SemBioFaceManager;)Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/hardware/biometrics/IBiometricPromptReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mPromptReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/hardware/biometrics/IBiometricPromptReceiver;)Landroid/hardware/biometrics/IBiometricPromptReceiver;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mPromptReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFace;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFace;[B)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/bio/face/SemBioFaceManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->cancelEnrollment()V

    return-void
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/bio/face/SemBioFaceManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/bio/face/SemBioFaceManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAcquiredResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->sendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    return-void
.end method

.method private cancelAuthentication()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/bio/face/IFaceService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBioFaceManager"

    const-string v2, "Remote exception while canceling authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private cancelEnrollment()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Lcom/samsung/android/bio/face/IFaceService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBioFaceManager"

    const-string v2, "Remote exception while canceling enrollment"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private ensureServiceConnected()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v3, v4}, Lcom/samsung/android/bio/face/IFaceService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v2, "SemBioFaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ensureServiceConnected : failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v2, v0, Landroid/os/DeadObjectException;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    :cond_0
    const-string/jumbo v0, "samsung.face"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/bio/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isAllowedService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->startFaceService()V

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->waitForService()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getCurrentUserId()I
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "SemBioFaceManager"

    const-string v2, "Failed to get current user id\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x2710

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    return-object v0
.end method

.method private isAllowedService(Landroid/content/Context;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "content://com.sec.knox.provider2/ApplicationPolicy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v8, "getApplicationStateEnabled"

    const-string v2, "com.samsung.android.bio.face.service"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    move-object v5, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SemBioFaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllowedService : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_1

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    const-string v4, "SemBioFaceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isAllowedService : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    :goto_1
    return v0
.end method

.method static synthetic lambda$authenticate$0(Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic lambda$authenticate$1(Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$szLH3KQOqwNN3Xpl0crSxioPWAg(Lcom/samsung/android/bio/face/SemBioFaceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->cancelAuthentication()V

    return-void
.end method

.method private sendAcquiredResult(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentHelp(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationAcquired(I)V

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendAuthenticatedFailed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationFailed()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    :cond_2
    return-void
.end method

.method private sendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFace;[B)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    invoke-virtual {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getBiometricCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v1

    :goto_0
    if-nez p1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFace;->getGroupId()I

    move-result v3

    :goto_1
    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;-><init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;I)V

    invoke-virtual {v0, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->setToken([B)V

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    :cond_3
    return-void
.end method

.method private sendAuthenticatedSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    :cond_1
    return-void
.end method

.method private sendErrorResult(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink()V

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->unlink()V

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalFace:Lcom/samsung/android/bio/face/SemBioFace;

    invoke-virtual {v0, v1, p1, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/bio/face/SemBioFace;ILjava/lang/CharSequence;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private sendUpdateStatus(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mUpdateStatusListener:Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;

    if-nez v0, :cond_0

    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "sendUpdateStatus : Listener is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mUpdateStatusListener:Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;->onStatusUpdate(I)V

    return-void
.end method

.method private startFaceService()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.bio.face.service"

    const-string v3, "com.samsung.android.bio.face.service.FaceService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBioFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting startFaceService failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private useHandler(Landroid/os/Handler;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$MyHandler;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Landroid/os/Looper;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    :cond_1
    :goto_0
    return-void
.end method

.method private waitForService()V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x14

    if-gt v0, v1, :cond_1

    const-string/jumbo v1, "samsung.face"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/bio/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v1, :cond_0

    const-string v1, "SemBioFaceManager"

    const-string v2, "Service connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v1, 0x32

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/IBiometricPromptReceiver;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;[B)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    if-eqz v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SemBioFaceManager"

    const-string v6, "authentication already canceled"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$szLH3KQOqwNN3Xpl0crSxioPWAg;

    invoke-direct {v0, v1}, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$szLH3KQOqwNN3Xpl0crSxioPWAg;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    invoke-virtual {v3, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$9r_sCMzryxYIdiwOECTZOwEYNd8;

    invoke-direct {v0, v5}, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$9r_sCMzryxYIdiwOECTZOwEYNd8;-><init>(Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V

    invoke-interface {v4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_4

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_3

    :try_start_0
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    invoke-direct {v0, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;-><init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;)V

    iput-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v8

    move-wide v6, v8

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    :goto_0
    const-string v0, "DISPLAY_TYPE"

    iget-object v8, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    move-object/from16 v15, p3

    invoke-virtual {v15, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v0, v5

    check-cast v0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    iput-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    move-object/from16 v14, p5

    iput-object v14, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mPromptReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    iput-object v4, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v8, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v9, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v17

    iget-object v0, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    const/16 v19, 0x0

    iget-object v13, v1, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v20

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide v15, v6

    move-object/from16 v18, v0

    move-object/from16 v21, p3

    move-object/from16 v22, p5

    move-object/from16 v23, p7

    invoke-interface/range {v8 .. v23}, Lcom/samsung/android/bio/face/IFaceService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    nop

    const-string v6, "SemBioFaceManager"

    const-string v7, "Remote exception while authenticating"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$-4qyRbhChEJ9VV4X3JJf-00BEMk;

    invoke-direct {v6, v5}, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$-4qyRbhChEJ9VV4X3JJf-00BEMk;-><init>(Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V

    invoke-interface {v4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    .locals 48

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    move-object/from16 v15, p8

    if-eqz v14, :cond_a

    move-object/from16 v10, p5

    invoke-direct {v11, v10}, Lcom/samsung/android/bio/face/SemBioFaceManager;->useHandler(Landroid/os/Handler;)V

    if-eqz v13, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SemBioFaceManager"

    const-string v1, "authentication already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$szLH3KQOqwNN3Xpl0crSxioPWAg;

    invoke-direct {v0, v11}, Lcom/samsung/android/bio/face/-$$Lambda$SemBioFaceManager$szLH3KQOqwNN3Xpl0crSxioPWAg;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;)V

    invoke-virtual {v13, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/bio/face/SemBioFaceManager$1;

    invoke-direct {v1, v11, v14}, Lcom/samsung/android/bio/face/SemBioFaceManager$1;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    iput-object v14, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    iput-object v12, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mCryptoObject:Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;

    if-eqz v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getOpId()J

    move-result-wide v1

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x0

    :goto_0
    move-wide/from16 v23, v1

    if-eqz v12, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v0

    nop

    :cond_4
    move-object/from16 v31, v0

    if-nez p7, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v9, v0

    goto :goto_1

    :cond_5
    move-object/from16 v9, p7

    :goto_1
    :try_start_1
    const-string v0, "DISPLAY_TYPE"

    iget-object v1, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "SemBioFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception while get display type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    if-eqz v9, :cond_6

    :try_start_3
    const-string/jumbo v0, "support_auth_coordinate"

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "auth_coordinate_token"

    invoke-virtual {v9, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v2, "auth_coordinate_x"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "auth_coordinate_y"

    invoke-virtual {v9, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "auth_coordinate_w"

    invoke-virtual {v9, v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "auth_coordinate_h"

    invoke-virtual {v9, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v5, "SemBioFaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v6, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v7, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    iget-object v8, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v28

    const/16 v30, 0x0

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, v0

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v1

    move/from16 v25, p6

    move-object/from16 v26, v7

    move/from16 v27, p3

    move-object/from16 v29, v9

    invoke-interface/range {v16 .. v31}, Lcom/samsung/android/bio/face/IFaceService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;[B)V

    iget-object v5, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    invoke-virtual {v5}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->link()V

    goto :goto_3

    :cond_6
    if-nez v15, :cond_7

    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v1, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    iget-object v2, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    iget-object v3, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v44

    const/16 v46, 0x0

    move-object/from16 v32, v0

    move-object/from16 v33, v1

    move-wide/from16 v39, v23

    move/from16 v41, p6

    move-object/from16 v42, v2

    move/from16 v43, p3

    move-object/from16 v45, v9

    move-object/from16 v47, v31

    invoke-interface/range {v32 .. v47}, Lcom/samsung/android/bio/face/IFaceService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;[B)V

    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->link()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    move-object/from16 v16, v9

    goto :goto_4

    :cond_7
    :try_start_4
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v3, 0x1

    move-object v1, v0

    move-object v2, v11

    move-object v4, v15

    move/from16 v5, p3

    move/from16 v6, p6

    move-wide/from16 v7, v23

    move-object/from16 v16, v9

    move-object/from16 v9, v31

    move-object/from16 v10, v16

    :try_start_5
    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;ILandroid/view/View;IIJ[BLandroid/os/Bundle;)V

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->runCommand()V

    goto :goto_4

    :cond_8
    invoke-virtual {v15, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_4
    nop

    move-object/from16 v9, v16

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v9, v16

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v16, v9

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v9, p7

    :goto_5
    const-string v1, "SemBioFaceManager"

    const-string v2, "Remote exception while authenticating"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/bio/face/SemBioFaceManager$2;

    invoke-direct {v2, v11, v14}, Lcom/samsung/android/bio/face/SemBioFaceManager$2;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    :cond_9
    move-object/from16 v9, p7

    :goto_6
    return-void

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must supply an authentication callback"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 11

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    :cond_0
    move-object v10, p0

    iget-object v1, v10, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v7

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object v8, v0

    move-object/from16 v9, p6

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 30

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p5

    move-object/from16 v14, p7

    if-eqz v13, :cond_8

    const/4 v0, -0x2

    move/from16 v1, p4

    if-ne v1, v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v0

    move/from16 v28, v0

    goto :goto_0

    :cond_0
    move/from16 v28, v1

    :goto_0
    const/4 v10, 0x0

    if-eqz v12, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "SemBioFaceManager"

    const-string v1, "enrollment already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;

    invoke-direct {v0, v11, v10}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnEnrollCancelListener;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;Lcom/samsung/android/bio/face/SemBioFaceManager$1;)V

    invoke-virtual {v12, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v9, 0x0

    const/4 v7, 0x2

    const/16 v8, 0x68

    if-nez v0, :cond_3

    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8, v7, v9, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_3
    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_7

    :try_start_0
    iput-object v10, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mAuthenticationCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;

    iput-object v13, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    if-nez p6, :cond_4

    :try_start_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v6, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object/from16 v17, p6

    :goto_1
    move-object v15, v10

    goto/16 :goto_5

    :cond_4
    move-object/from16 v6, p6

    :goto_2
    :try_start_2
    const-string v0, "DISPLAY_TYPE"

    iget-object v1, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v17, v6

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_3
    const-string v1, "SemBioFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception while get display type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    if-nez v14, :cond_5

    :try_start_4
    iget-object v15, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget-object v1, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    iget-object v2, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v16, v0

    move-object/from16 v22, p1

    move/from16 v23, v28

    move-object/from16 v24, v1

    move/from16 v25, p3

    move-object/from16 v27, v6

    invoke-interface/range {v15 .. v27}, Lcom/samsung/android/bio/face/IFaceService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->link()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v17, v6

    goto :goto_4

    :cond_5
    :try_start_5
    new-instance v0, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    const/4 v3, 0x2

    const-wide/16 v15, 0x0

    move-object v1, v0

    move-object v2, v11

    move-object v4, v14

    move/from16 v5, p3

    move-object/from16 v17, v6

    move/from16 v6, v28

    move-wide v7, v15

    move v15, v9

    move-object/from16 v9, p1

    move-object v15, v10

    move-object/from16 v10, v17

    :try_start_6
    invoke-direct/range {v1 .. v10}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;-><init>(Lcom/samsung/android/bio/face/SemBioFaceManager;ILandroid/view/View;IIJ[BLandroid/os/Bundle;)V

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$OnFaceViewAttachStateChangeListener;->runCommand()V

    goto :goto_4

    :cond_6
    invoke-virtual {v14, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    :goto_4
    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    move-object/from16 v17, v6

    move-object v15, v10

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v15, v10

    move-object/from16 v17, p6

    :goto_5
    const-string v1, "SemBioFaceManager"

    const-string v2, "Remote exception in enroll"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v11, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v15}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_6

    :cond_7
    move-object/from16 v17, p6

    :goto_6
    return-void

    :cond_8
    move/from16 v1, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must supply an enrollment callback"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/view/View;)V
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/bio/face/SemBioFaceManager;->enroll([BLandroid/os/CancellationSignal;IILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method public getAuthenticatorId()J
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/samsung/android/bio/face/IFaceService;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :catch_0
    move-exception v0

    const-string v3, "SemBioFaceManager"

    const-string v4, "Remote exception in getAuthenticatorId()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "SemBioFaceManager"

    const-string v3, "getAuthenticatorId(): Service not connected!"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v1
.end method

.method public getEnrolledFaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/bio/face/SemBioFace;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledFaces(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/bio/face/SemBioFace;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/samsung/android/bio/face/IFaceService;->getEnrolledFaces(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "SemBioFaceManager"

    const-string v3, "Remote exception in getEnrolledFaces"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v1
.end method

.method public getTrustAppVersion()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->getTrustAppVersion()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "SemBioFaceManager"

    const-string v2, "Remote exception in getTrustAppVersion()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "SemBioFaceManager"

    const-string v1, "getTrustAppVersion(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public hasDisabledFaces()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/bio/face/IFaceService;->hasDisabledFaces(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "SemBioFaceManager"

    const-string v3, "Remote exception in getEnrolledFaces"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public hasEnrolledFaces()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/bio/face/IFaceService;->hasEnrolledFaces(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "SemBioFaceManager"

    const-string v3, "Remote exception in getEnrolledFaces"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public hasEnrolledFaces(I)Z
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/samsung/android/bio/face/IFaceService;->hasEnrolledFaces(ILjava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "SemBioFaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception in getEnrolledFaces, userId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public isEnrollSession()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->isEnrollSession()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "SemBioFaceManager"

    const-string v3, "Remote exception in isEnrollSession()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public isHardwareDetected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSessionClosed()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->isSessionClosed()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "SemBioFaceManager"

    const-string v3, "Remote exception in isSessionClosed()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v2, "isSessionClosed(): Service not connected!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public postEnroll()I
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v2}, Lcom/samsung/android/bio/face/IFaceService;->postEnroll(Landroid/os/IBinder;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "SemBioFaceManager"

    const-string v3, "Remote exception in post enroll"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public preEnroll()J
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, v3}, Lcom/samsung/android/bio/face/IFaceService;->preEnroll(Landroid/os/IBinder;)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :catch_0
    move-exception v0

    const-string v3, "SemBioFaceManager"

    const-string v4, "Remote exception in enroll"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-wide v1
.end method

.method public remove(Lcom/samsung/android/bio/face/SemBioFace;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .locals 11

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x68

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4, v3, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iput-object p3, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;

    iput-object p1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mRemovalFace:Lcom/samsung/android/bio/face/SemBioFace;

    iget-object v5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v6, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFace;->getFaceId()I

    move-result v7

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFace;->getGroupId()I

    move-result v8

    iget-object v10, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    move v9, p2

    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/bio/face/IFaceService;->remove(Landroid/os/IBinder;IIILcom/samsung/android/bio/face/IFaceServiceReceiver;)V

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceDeathRecipient:Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ServiceDeathRecipient;->link()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v5, "SemBioFaceManager"

    const-string v6, "Remote exception in remove"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, v3, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an Removal callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Lcom/samsung/android/bio/face/SemBioFace;Lcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getCurrentUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->remove(Lcom/samsung/android/bio/face/SemBioFace;ILcom/samsung/android/bio/face/SemBioFaceManager$RemovalCallback;)V

    return-void
.end method

.method public rename(IILjava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/bio/face/IFaceService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBioFaceManager"

    const-string v2, "Remote exception in rename()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "rename(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public requestEnrollPause()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->requestEnrollPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBioFaceManager"

    const-string v2, "Remote exception in requestEnrollPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "requestEnrollPause(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public requestEnrollResume()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->requestEnrollResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBioFaceManager"

    const-string v2, "Remote exception in requestEnrollResume()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "requestEnrollResume(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public requestSessionClose()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->requestSessionClose()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBioFaceManager"

    const-string v2, "Remote exception in requestSessionClose()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "requestSessionClose(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public requestSessionOpen()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->requestSessionOpen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBioFaceManager"

    const-string v2, "Remote exception in requestSessionOpen()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "requestSessionOpen(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public resetAuthenticationTimeout()Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v0}, Lcom/samsung/android/bio/face/IFaceService;->resetAuthenticationTimeout()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "SemBioFaceManager"

    const-string v3, "Remote exception in resetAuthenticationTimeout()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v2, "resetAuthenticationTimeout(): Service not connected!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public resetTimeout([B)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v0, p1}, Lcom/samsung/android/bio/face/IFaceService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBioFaceManager"

    const-string v2, "Remote exception in resetTimeout()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "resetTimeout(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setActiveUser(I)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v0, p1}, Lcom/samsung/android/bio/face/IFaceService;->setActiveUser(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBioFaceManager"

    const-string v2, "Remote exception in setActiveUser"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public updateSecureID([B)Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v0, p1}, Lcom/samsung/android/bio/face/IFaceService;->updateSecureID([B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "SemBioFaceManager"

    const-string v3, "Remote exception in updateSecureID()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v2, "updateSecureID(): Service not connected!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public updateSecureUserID([B)Z
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    invoke-interface {v0, p1}, Lcom/samsung/android/bio/face/IFaceService;->updateSecureUserID([B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v2, "SemBioFaceManager"

    const-string v3, "Remote exception in updateSecureUserID()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v2, "updateSecureUserID(): Service not connected!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public updateTrustApp(Ljava/lang/String;Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;)V
    .locals 7

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->ensureServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mUpdateStatusListener:Lcom/samsung/android/bio/face/SemBioFaceManager$UpdateStatusListener;

    iget-object v1, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mService:Lcom/samsung/android/bio/face/IFaceService;

    iget-object v2, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mServiceReceiver:Lcom/samsung/android/bio/face/IFaceServiceReceiver;

    iget-object v0, p0, Lcom/samsung/android/bio/face/SemBioFaceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/bio/face/IFaceService;->updateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILcom/samsung/android/bio/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBioFaceManager"

    const-string v2, "Remote exception in updateTrustApp()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_0
    const-string v0, "SemBioFaceManager"

    const-string/jumbo v1, "updateTrustApp(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
