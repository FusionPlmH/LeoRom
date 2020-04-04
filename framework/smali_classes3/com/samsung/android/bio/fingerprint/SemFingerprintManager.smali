.class public Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
.super Ljava/lang/Object;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;,
        Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final EXTRA_KEY_PRIVILEGED_FLAG:Ljava/lang/String; = "sem_privileged_attr"

.field public static final FEATURE_GESTURE:I = 0x1

.field public static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field public static final FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final FINGERPRINT_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field public static final FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x5

.field public static final FINGERPRINT_ACQUIRED_TOO_SLOW:I = 0x4

.field public static final FINGERPRINT_ERROR_CANCELED:I = 0x5

.field public static final FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final FINGERPRINT_ERROR_LOCKOUT:I = 0x7

.field public static final FINGERPRINT_ERROR_LOCKOUT_PERMANENT:I = 0x9

.field public static final FINGERPRINT_ERROR_TEMPLATE_CORRUPTED:I = 0x3e9

.field public static final FINGERPRINT_ERROR_TIMEOUT:I = 0x3

.field public static final FINGERPRINT_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final FINGERPRINT_ERROR_USER_CANCELED:I = 0xa

.field private static final MSG_ACQUIRED:I = 0x64

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x66

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x65

.field private static final MSG_ERROR:I = 0x67

.field public static final PRIVILEGED_FLAG_ALLOW_BACKGROUND:I = 0x4

.field public static final PRIVILEGED_FLAG_AVOID_LOCKOUT:I = 0x1

.field public static final PRIVILEGED_FLAG_HIDE_AUTHENTICATION_GUIDE_LAYER:I = 0x10

.field public static final PRIVILEGED_FLAG_NO_VIBRATION_EFFECT:I = 0x8

.field public static final PRIVILEGED_FLAG_RECEIVE_VENDOR_EVENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SemFingerprintManager"


# instance fields
.field private mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mService:Landroid/hardware/fingerprint/IFingerprintService;

.field private mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mToken:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/content/Context;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetService()Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    new-instance v0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)V

    iput-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->sendAcquiredResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->sendAuthenticatedSucceeded(Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->sendAuthenticatedFailed()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->sendErrorResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->convertAcquiredCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelAuthentication()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SemFingerprintManager"

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

    :cond_0
    :goto_0
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

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

.method private convertAcquiredCode(I)I
    .locals 1

    move v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x1

    nop

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
    .locals 1

    new-instance v0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private handleDefaultError(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/bio/fingerprint/-$$Lambda$SemFingerprintManager$i73UDHbAHR89-Kcn0df1FPMx2Yo;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/bio/fingerprint/-$$Lambda$SemFingerprintManager$i73UDHbAHR89-Kcn0df1FPMx2Yo;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic lambda$handleDefaultError$0(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$r8anigh6lTlWvf7xMtZQaQw58o4(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->cancelAuthentication()V

    return-void
.end method

.method private sendAcquiredResult(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private sendAuthenticatedFailed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    invoke-virtual {v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    :cond_0
    return-void
.end method

.method private sendAuthenticatedSucceeded(Landroid/hardware/biometrics/BiometricAuthenticator$BiometricIdentifier;ILandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

    const-string v1, "fidoResult"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->access$1200(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;[B)V

    :cond_0
    new-instance v0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;

    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

    move-object v2, p1

    check-cast v2, Landroid/hardware/fingerprint/Fingerprint;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;)V

    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    invoke-virtual {v1, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationResult;)V

    :cond_1
    return-void
.end method

.method private sendErrorResult(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private useHandler(Landroid/os/Handler;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/os/Looper;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1

    new-instance v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;

    iget-object v2, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$MyHandler;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;Landroid/os/Looper;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mHandler:Landroid/os/Handler;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public authenticate(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SemFingerprintManager"

    const-string v4, "authentication : already canceled"

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v3}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->handleDefaultError(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V

    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/bio/fingerprint/-$$Lambda$SemFingerprintManager$r8anigh6lTlWvf7xMtZQaQw58o4;

    invoke-direct {v0, v1}, Lcom/samsung/android/bio/fingerprint/-$$Lambda$SemFingerprintManager$r8anigh6lTlWvf7xMtZQaQw58o4;-><init>(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;)V

    move-object/from16 v4, p2

    invoke-virtual {v4, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    iget-object v0, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_1

    const-string v0, "SemFingerprintManager"

    const-string v5, "authentication : Service is NULL"

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v3}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->handleDefaultError(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    goto :goto_3

    :cond_1
    move-object/from16 v5, p4

    :try_start_0
    invoke-direct {v1, v5}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->useHandler(Landroid/os/Handler;)V

    iput-object v3, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mAuthenticationCallback:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;

    iput-object v2, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mCryptoObject:Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;

    if-eqz v2, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;->access$900(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$CryptoObject;)J

    move-result-wide v6

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    :goto_0
    move-wide v10, v6

    if-nez p6, :cond_3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v6, v0

    goto :goto_1

    :cond_3
    move-object/from16 v6, p6

    :goto_1
    :try_start_1
    const-string v0, "DISPLAY_TYPE"

    iget-object v7, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v8, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v9, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v13, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v14, 0x0

    iget-object v0, v1, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    move/from16 v12, p5

    move-object/from16 v16, v6

    invoke-interface/range {v8 .. v17}, Landroid/hardware/fingerprint/IFingerprintService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v6, p6

    :goto_2
    const-string v7, "SemFingerprintManager"

    const-string v8, "Remote exception while authenticating: "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {v1, v3}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->handleDefaultError(Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$AuthenticationCallback;)V

    :goto_3
    return-void
.end method

.method public getCharacteristics()Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;
    .locals 3

    const-string v0, "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

    invoke-direct {p0, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->checkPermission(Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;

    iget-object v1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;)V

    return-object v0
.end method

.method public getEnrolledFingerprintNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

    invoke-direct {p0, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->checkPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public hasDisabledFingerprints()Z
    .locals 1

    const-string v0, "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

    invoke-direct {p0, v0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->checkPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semHasDisabledFingerprints()Z

    move-result v0

    return v0
.end method

.method public hasEnrolledFingerprints()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    return v0
.end method

.method public hasEnrolledFingerprints(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    return v0
.end method

.method public hasFeature(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->semHasFeature(I)Z

    move-result v0

    return v0
.end method
