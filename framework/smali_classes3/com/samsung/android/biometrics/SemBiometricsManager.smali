.class public Lcom/samsung/android/biometrics/SemBiometricsManager;
.super Ljava/lang/Object;
.source "SemBiometricsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;,
        Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;,
        Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;,
        Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;,
        Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;
    }
.end annotation


# static fields
.field public static final ACQUIRED_GOOD:I = 0x0

.field public static final ACQUIRED_HOLD_PHONE_CLOSER:I = 0x6

.field public static final ACQUIRED_HOLD_PHONE_FARTHER_AWAY:I = 0x7

.field public static final ACQUIRED_LIGHT_REFLECTION:I = 0x1

.field public static final ACQUIRED_LOW_LUMINANCE:I = 0x9

.field public static final ACQUIRED_MOVE_DOWN:I = 0x3

.field public static final ACQUIRED_MOVE_LEFT:I = 0x4

.field public static final ACQUIRED_MOVE_RIGHT:I = 0x5

.field public static final ACQUIRED_MOVE_UP:I = 0x2

.field public static final ACQUIRED_OPEN_EYES_FULLY:I = 0x8

.field public static final ACQUIRED_REVERSE_ORIENTATION:I = 0xa

.field public static final BUNDLE_SKIP_WAKELOCK:Ljava/lang/String; = "skip_wakelock"

.field private static final DEBUG:Z

.field public static final ERROR_CANCELED:I = 0x5

.field public static final ERROR_FACE_CAMERA_FAILURE:I = 0x6

.field public static final ERROR_FACE_CAMERA_UNAVAILABLE:I = 0x7

.field public static final ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final ERROR_IRIS_CAMERA_FAILURE:I = 0x8

.field public static final ERROR_IRIS_CAMERA_UNAVAILABLE:I = 0x9

.field public static final ERROR_LOCKOUT:I = 0xc

.field public static final ERROR_LOCKOUT_PERMANENT:I = 0xd

.field public static final ERROR_NO_SPACE:I = 0x4

.field public static final ERROR_PROXIMITY_ALERT:I = 0xb

.field public static final ERROR_TEMPLATE_CORRUPTED:I = 0xa

.field public static final ERROR_TIMEOUT:I = 0x3

.field public static final ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final ERROR_USER_CANCELED:I = 0xe

.field public static final EXTRA_KEY_PRIVILEGED_FLAG:Ljava/lang/String; = "sem_privileged_attr"

.field private static final MSG_ACQUIRED:I = 0x64

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x66

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x65

.field private static final MSG_ERROR:I = 0x67

.field public static final PRIVILEGED_FLAG_ALLOW_BACKGROUND:I = 0x4

.field public static final PRIVILEGED_FLAG_AVOID_LOCKOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SemBiometricsManager"

.field public static final TYPE_HIGH_SECURITY:I = 0xf

.field public static final TYPE_NORMAL_SECURITY:I = 0x5

.field public static final TYPE_STRONG_SECURITY:I = 0x11


# instance fields
.field private mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

.field private mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mHandler:Landroid/os/Handler;

.field private mService:Lcom/samsung/android/biometrics/IBiometricsService;

.field private mServiceDeathRecipient:Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

.field private mServiceReceiver:Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/biometrics/SemBiometricsManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mToken:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/content/Context;Lcom/samsung/android/biometrics/SemBiometricsManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/biometrics/SemBiometricsManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/SemBiometricsManager$1;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceReceiver:Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/IBiometricsService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/biometrics/SemBiometricsManager;Lcom/samsung/android/biometrics/IBiometricsService;)Lcom/samsung/android/biometrics/IBiometricsService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/SemBiometricsManager;)Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/biometrics/SemBiometricsManager;->sendAuthenticatedSucceeded(Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/biometrics/SemBiometricsManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/SemBiometricsManager;->sendAcquiredResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/biometrics/SemBiometricsManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/SemBiometricsManager;Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->handleDefaultError(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/biometrics/SemBiometricsManager;)Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$602(Lcom/samsung/android/biometrics/SemBiometricsManager;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p1
.end method

.method static synthetic access$700(Lcom/samsung/android/biometrics/SemBiometricsManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/biometrics/SemBiometricsManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/SemBiometricsManager;->sendErrorResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/biometrics/SemBiometricsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method private cancelAuthentication()V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/biometrics/IBiometricsService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBiometricsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote exception while canceling authentication : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private ensureServiceConnected()Z
    .locals 2

    const-string/jumbo v0, "samsung.intelligentbiometricsservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->isAllowedService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->startBiometricsService()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->waitForService()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Lcom/samsung/android/biometrics/SemBiometricsManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceDeathRecipient:Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;

    move-result-object v0

    return-object v0
.end method

.method private handleDefaultError(Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$lNLRx_bdwfSN72qGLU8T0UeAmaY;

    invoke-direct {v0, p1}, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$lNLRx_bdwfSN72qGLU8T0UeAmaY;-><init>(Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private handleDefaultError(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
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

    const-string v2, "com.samsung.android.biometrics.service"

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

    const-string v4, "SemBiometricsManager"

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
    const-string v4, "SemBiometricsManager"

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

.method static synthetic lambda$handleDefaultError$1(Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$s8-chGvoLQUCsD6h0BBhkFK98yk(Lcom/samsung/android/biometrics/SemBiometricsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->cancelAuthentication()V

    return-void
.end method

.method private sendAcquiredResult(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;->onAuthenticationAcquired(I)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationAcquired(I)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sendAuthenticatedFailed()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;->onAuthenticationFailed()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationFailed()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceDeathRecipient:Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceDeathRecipient:Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V

    :cond_2
    return-void
.end method

.method private sendAuthenticatedSucceeded(Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;ILandroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mCryptoObject:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mCryptoObject:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    const-string v1, "fidoResult"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->setFidoResultData([B)V

    :cond_0
    new-instance v0, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mCryptoObject:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    invoke-direct {v0, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    invoke-virtual {v1, v0}, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationResult;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    if-eqz v0, :cond_3

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mCryptoObject:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mCryptoObject:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->getBiometricCryptoObject()Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;

    move-result-object v1

    :goto_0
    invoke-direct {v0, v1, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;-><init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;I)V

    const-string v1, "fidoResult"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;->setToken([B)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceDeathRecipient:Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceDeathRecipient:Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V

    :cond_4
    return-void
.end method

.method private sendErrorResult(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceDeathRecipient:Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceDeathRecipient:Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->unlink(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V

    :cond_3
    return-void
.end method

.method private startBiometricsService()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.biometrics.service"

    const-string v3, "com.samsung.android.biometrics.service.BiometricsService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBiometricsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service failed: "

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

    if-eqz p1, :cond_0

    new-instance v1, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/os/Looper;Lcom/samsung/android/biometrics/SemBiometricsManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    new-instance v1, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;

    iget-object v2, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/biometrics/SemBiometricsManager$MyHandler;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;Landroid/os/Looper;Lcom/samsung/android/biometrics/SemBiometricsManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mHandler:Landroid/os/Handler;

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

    const-string/jumbo v1, "samsung.intelligentbiometricsservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/biometrics/IBiometricsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/biometrics/IBiometricsService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    iget-object v1, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v1, :cond_0

    const-string v1, "SemBiometricsManager"

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
.method public authenticate(ILcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    if-eqz v3, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SemBiometricsManager"

    const-string v5, "authentication : already canceled"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v4}, Lcom/samsung/android/biometrics/SemBiometricsManager;->handleDefaultError(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$s8-chGvoLQUCsD6h0BBhkFK98yk;

    invoke-direct {v0, v1}, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$s8-chGvoLQUCsD6h0BBhkFK98yk;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;)V

    invoke-virtual {v3, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {v1, v4}, Lcom/samsung/android/biometrics/SemBiometricsManager;->handleDefaultError(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V

    return-void

    :cond_2
    iget-object v0, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v0, :cond_7

    move-object/from16 v5, p5

    :try_start_0
    invoke-direct {v1, v5}, Lcom/samsung/android/biometrics/SemBiometricsManager;->useHandler(Landroid/os/Handler;)V

    iput-object v4, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mAuthenticationCallback:Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;

    iput-object v2, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mCryptoObject:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    if-eqz v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->getOpId()J

    move-result-wide v6

    goto :goto_0

    :cond_3
    const-wide/16 v6, 0x0

    :goto_0
    move-wide v11, v6

    if-eqz v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;->getFidoRequestData()[B

    move-result-object v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    move-object/from16 v18, v0

    if-nez p7, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v6, v0

    goto :goto_2

    :cond_5
    move-object/from16 v6, p7

    :goto_2
    :try_start_1
    const-string v0, "DISPLAY_TYPE"

    iget-object v7, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    const-string v7, "SemBiometricsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "authentication : exception while get display type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v8, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    iget-object v10, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mToken:Landroid/os/IBinder;

    iget-object v14, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceReceiver:Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    iget-object v0, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v9, p1

    move/from16 v13, p6

    move-object/from16 v16, v6

    invoke-interface/range {v8 .. v18}, Lcom/samsung/android/biometrics/IBiometricsService;->authenticate(ILandroid/os/IBinder;JILcom/samsung/android/biometrics/IBiometricsServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;[B)V

    iget-object v0, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceDeathRecipient:Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceDeathRecipient:Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->link()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_6
    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v6, p7

    :goto_4
    const-string v7, "SemBiometricsManager"

    const-string v8, "authentication : exception while authenticating"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {v1, v4}, Lcom/samsung/android/biometrics/SemBiometricsManager;->handleDefaultError(Lcom/samsung/android/biometrics/SemBiometricsManager$AuthenticationCallback;)V

    goto :goto_5

    :cond_7
    move-object/from16 v5, p5

    move-object/from16 v6, p7

    :goto_5
    return-void
.end method

.method public authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/IBiometricPromptReceiver;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;[B)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    if-eqz v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SemBiometricsManager"

    const-string v6, "authentication : already canceled"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v5, v4}, Lcom/samsung/android/biometrics/SemBiometricsManager;->handleDefaultError(Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;Ljava/util/concurrent/Executor;)V

    new-instance v0, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$Y7hodeYnJ969cIfgCs__rnBjBaM;

    invoke-direct {v0, v5}, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$Y7hodeYnJ969cIfgCs__rnBjBaM;-><init>(Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V

    invoke-interface {v4, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$s8-chGvoLQUCsD6h0BBhkFK98yk;

    invoke-direct {v0, v1}, Lcom/samsung/android/biometrics/-$$Lambda$SemBiometricsManager$s8-chGvoLQUCsD6h0BBhkFK98yk;-><init>(Lcom/samsung/android/biometrics/SemBiometricsManager;)V

    invoke-virtual {v3, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {v1, v5, v4}, Lcom/samsung/android/biometrics/SemBiometricsManager;->handleDefaultError(Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_2
    iget-object v0, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    if-eqz v2, :cond_3

    :try_start_0
    new-instance v6, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    invoke-direct {v6, v2, v0}, Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;-><init>(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Lcom/samsung/android/biometrics/SemBiometricsManager$1;)V

    iput-object v6, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mCryptoObject:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v7, p3

    goto/16 :goto_4

    :cond_3
    iput-object v0, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mCryptoObject:Lcom/samsung/android/biometrics/SemBiometricsManager$CryptoObject;

    :goto_0
    move-object v0, v5

    check-cast v0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    iput-object v0, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mBiometricAuthenticationCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    iput-object v4, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;->getOpId()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    const-wide/16 v6, 0x0

    :goto_1
    move-wide v11, v6

    :try_start_1
    const-string v0, "DISPLAY_TYPE"

    iget-object v6, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v7, p3

    :try_start_2
    invoke-virtual {v7, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v7, p3

    :goto_2
    :try_start_3
    const-string v6, "SemBiometricsManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "authentication : exception while get display type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iget-object v8, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    const/16 v9, 0x11

    iget-object v10, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mToken:Landroid/os/IBinder;

    iget-object v0, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v13

    iget-object v14, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceReceiver:Lcom/samsung/android/biometrics/IBiometricsServiceReceiver;

    iget-object v0, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v7

    move-object/from16 v17, p5

    move-object/from16 v18, p7

    invoke-interface/range {v8 .. v18}, Lcom/samsung/android/biometrics/IBiometricsService;->authenticate(ILandroid/os/IBinder;JILcom/samsung/android/biometrics/IBiometricsServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;[B)V

    iget-object v0, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceDeathRecipient:Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/samsung/android/biometrics/SemBiometricsManager;->mServiceDeathRecipient:Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/SemBiometricsManager$ServiceDeathRecipient;->link()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_5
    goto :goto_5

    :catch_3
    move-exception v0

    :goto_4
    const-string v6, "SemBiometricsManager"

    const-string v8, "authentication : exception while authenticating"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {v1, v5, v4}, Lcom/samsung/android/biometrics/SemBiometricsManager;->handleDefaultError(Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;Ljava/util/concurrent/Executor;)V

    goto :goto_5

    :cond_6
    move-object/from16 v7, p3

    :goto_5
    return-void
.end method

.method public getAuthenticatorId()J
    .locals 5

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->ensureServiceConnected()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    iget-object v3, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/samsung/android/biometrics/IBiometricsService;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v3

    :catch_0
    move-exception v0

    const-string v3, "SemBiometricsManager"

    const-string v4, "Remote exception in getAuthenticatorId()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "SemBiometricsManager"

    const-string v3, "getAuthenticatorId(): Service not connected!"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-wide v1
.end method

.method public requestSessionClose()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    invoke-interface {v0}, Lcom/samsung/android/biometrics/IBiometricsService;->requestSessionClose()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBiometricsManager"

    const-string v2, "Remote exception in requestSessionClose()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    const-string v0, "SemBiometricsManager"

    const-string/jumbo v1, "requestSessionClose(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public requestSessionOpen()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    invoke-interface {v0}, Lcom/samsung/android/biometrics/IBiometricsService;->requestSessionOpen()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBiometricsManager"

    const-string v2, "Remote exception in requestSessionOpen()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    const-string v0, "SemBiometricsManager"

    const-string/jumbo v1, "requestSessionOpen(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public resetTimeout([B)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/biometrics/SemBiometricsManager;->ensureServiceConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/SemBiometricsManager;->mService:Lcom/samsung/android/biometrics/IBiometricsService;

    invoke-interface {v0, p1}, Lcom/samsung/android/biometrics/IBiometricsService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemBiometricsManager"

    const-string v2, "Remote exception in resetTimeout()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_1
    const-string v0, "SemBiometricsManager"

    const-string/jumbo v1, "resetTimeout(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
