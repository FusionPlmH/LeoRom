.class public Landroid/hardware/biometrics/BiometricPrompt;
.super Ljava/lang/Object;
.source "BiometricPrompt.java"

# interfaces
.implements Landroid/hardware/biometrics/BiometricAuthenticator;
.implements Landroid/hardware/biometrics/BiometricConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;,
        Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;,
        Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;,
        Landroid/hardware/biometrics/BiometricPrompt$Builder;,
        Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final DISMISSED_REASON_NEGATIVE:I = 0x2

.field public static final DISMISSED_REASON_POSITIVE:I = 0x1

.field public static final DISMISSED_REASON_USER_CANCEL:I = 0x3

.field public static final HIDE_DIALOG_DELAY:I = 0x7d0

.field public static final KEY_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final KEY_NEGATIVE_TEXT:Ljava/lang/String; = "negative_text"

.field public static final KEY_POSITIVE_TEXT:Ljava/lang/String; = "positive_text"

.field public static final KEY_SUBTITLE:Ljava/lang/String; = "subtitle"

.field public static final KEY_TITLE:Ljava/lang/String; = "title"

.field public static final SEM_FLAG_CHECK_ENROLLED_BIOMETRIC:I = 0x1

.field private static final SEM_KEY_BIOMETRIC_TYPE:Ljava/lang/String; = "sem_biometric_type"

.field public static final SEM_PRIVILEGED_FLAG:Ljava/lang/String; = "sem_prompt_privileged_flag"

.field public static final SEM_TYPE_DEVICE_CUSTOM_SCAN:I = 0x8

.field public static final SEM_TYPE_FACE:I = 0x2

.field public static final SEM_TYPE_FINGERPRINT:I = 0x1

.field public static final SEM_TYPE_IRIS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BiometricPrompt"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPositiveButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

.field private mSemBiometricType:I

.field private mSemFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mSemIntelligentScanManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

.field private mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;

.field private mSemPrivilegedBiometricType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Landroid/hardware/biometrics/BiometricPrompt;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemPrivilegedBiometricType:I

    iput v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemBiometricType:I

    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$1;

    invoke-direct {v0, p0}, Landroid/hardware/biometrics/BiometricPrompt$1;-><init>(Landroid/hardware/biometrics/BiometricPrompt;)V

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    iput-object p2, p0, Landroid/hardware/biometrics/BiometricPrompt;->mBundle:Landroid/os/Bundle;

    iput-object p3, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPositiveButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    iput-object p4, p0, Landroid/hardware/biometrics/BiometricPrompt;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object p1, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.permission.BIOMETRICS_PRIVILEGED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "sem_biometric_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemPrivilegedBiometricType:I

    const-string v0, "BiometricPrompt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BiometricPrompt : Privileged type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemPrivilegedBiometricType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/biometrics/BiometricPrompt;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;)V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPositiveButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/biometrics/BiometricPrompt;)Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;
    .locals 1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mNegativeButtonInfo:Landroid/hardware/biometrics/BiometricPrompt$ButtonInfo;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Landroid/hardware/biometrics/BiometricPrompt;->DEBUG:Z

    return v0
.end method

.method private handlePreAuthenticationErrors(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)Z
    .locals 3

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt;->semGetBiometricType()I

    move-result v0

    iput v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemBiometricType:I

    const-string v0, "BiometricPrompt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePreAuthenticationErrors : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemBiometricType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemBiometricType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt;->semHandlePreAuthenticationErrors(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt;->sendError(ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)V

    return v1

    :cond_1
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_2
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v1, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt;->sendError(ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)V

    return v1

    :cond_3
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt;->sendError(ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)V

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$sendError$0(Landroid/hardware/biometrics/BiometricPrompt;ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .locals 2

    iget v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemBiometricType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    const v1, 0x1040361

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {p2, p1, v0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private semGetBiometricType()I
    .locals 7

    iget v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemPrivilegedBiometricType:I

    if-lez v0, :cond_0

    const-string v0, "BiometricPrompt"

    const-string v1, "Ignore preferred type"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemPrivilegedBiometricType:I

    return v0

    :cond_0
    const/4 v0, -0x1

    move v1, v0

    :try_start_0
    iget-object v2, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "biometrics_prompt_type"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    move v1, v2

    const-string v2, "BiometricPrompt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preferred type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "BiometricPrompt"

    const-string v4, "Failed to read preferred type : "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-ne v1, v0, :cond_1

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt;->semGetDefaultBiometricType()I

    move-result v1

    goto :goto_1

    :cond_1
    if-nez v1, :cond_5

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/iris/SemIrisManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->getAuthenticatorId()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2

    const/4 v2, 0x4

    return v2

    :cond_2
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    return v2

    :cond_3
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getAuthenticatorId()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    return v2

    :cond_4
    const-string v0, "BiometricPrompt"

    const-string v2, "No Enrolled biometrics data"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt;->semGetDefaultBiometricType()I

    move-result v0

    return v0

    :cond_5
    :goto_1
    return v1
.end method

.method private semGetDefaultBiometricType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method private semHandlePreAuthenticationErrors(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)Z
    .locals 7

    iget v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemBiometricType:I

    const/16 v1, 0xb

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_0
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getAuthenticatorId()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_4

    invoke-direct {p0, v1, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt;->sendError(ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)V

    return v4

    :cond_1
    iget v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemBiometricType:I

    const/16 v5, 0x8

    if-ne v0, v5, :cond_2

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt;->sendError(ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)V

    return v4

    :cond_2
    iget v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemBiometricType:I

    const/4 v5, 0x4

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/bio/iris/SemIrisManager;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;

    :cond_3
    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/hardware/biometrics/BiometricPrompt;->mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/iris/SemIrisManager;->getAuthenticatorId()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-nez v0, :cond_4

    invoke-direct {p0, v1, p1, p2}, Landroid/hardware/biometrics/BiometricPrompt;->sendError(ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)V

    return v4

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private sendError(ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)V
    .locals 1

    new-instance v0, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$BHdZ2YVqilUjbvPiRNC3VHr36y8;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/biometrics/-$$Lambda$BiometricPrompt$BHdZ2YVqilUjbvPiRNC3VHr36y8;-><init>(Landroid/hardware/biometrics/BiometricPrompt;ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .locals 7

    invoke-direct {p0, p4, p3}, Landroid/hardware/biometrics/BiometricPrompt;->handlePreAuthenticationErrors(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/biometrics/BiometricPrompt;->semAuthenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;[B)V

    return-void
.end method

.method public authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
    .locals 2

    instance-of v0, p4, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback cannot be casted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V
    .locals 2

    instance-of v0, p3, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Callback cannot be casted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V
    .locals 7

    invoke-direct {p0, p3, p2}, Landroid/hardware/biometrics/BiometricPrompt;->handlePreAuthenticationErrors(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/biometrics/BiometricPrompt;->semAuthenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;[B)V

    return-void
.end method

.method public semAuthenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;[B)V
    .locals 11

    move-object v0, p0

    move-object v9, p3

    move-object v10, p4

    invoke-direct {v0, v10, v9}, Landroid/hardware/biometrics/BiometricPrompt;->handlePreAuthenticationErrors(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Landroid/hardware/biometrics/BiometricPrompt;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "BiometricPrompt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semAuthenticate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/hardware/biometrics/BiometricPrompt;->mSemBiometricType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mSemBiometricType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_8

    const/16 v2, 0x8

    if-eq v1, v2, :cond_6

    packed-switch v1, :pswitch_data_0

    const-string v1, "BiometricPrompt"

    const-string v2, "BiometricPrompt : invalid biometric type"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc

    invoke-direct {v0, v1, v10, v9}, Landroid/hardware/biometrics/BiometricPrompt;->sendError(ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)V

    goto/16 :goto_0

    :pswitch_0
    if-eqz p1, :cond_2

    const/16 v1, 0xb

    invoke-direct {v0, v1, v10, v9}, Landroid/hardware/biometrics/BiometricPrompt;->sendError(ILandroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_2
    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mSemFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mSemFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    :cond_3
    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mSemFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mSemFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v4, v0, Landroid/hardware/biometrics/BiometricPrompt;->mBundle:Landroid/os/Bundle;

    iget-object v6, v0, Landroid/hardware/biometrics/BiometricPrompt;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v9

    move-object v7, v10

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/IBiometricPromptReceiver;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;[B)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_4
    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_a

    if-nez p1, :cond_5

    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v3, v0, Landroid/hardware/biometrics/BiometricPrompt;->mBundle:Landroid/os/Bundle;

    iget-object v5, v0, Landroid/hardware/biometrics/BiometricPrompt;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-object v2, p2

    move-object v4, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/os/CancellationSignal;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/IBiometricPromptReceiver;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V

    goto :goto_0

    :cond_5
    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v4, v0, Landroid/hardware/biometrics/BiometricPrompt;->mBundle:Landroid/os/Bundle;

    iget-object v6, v0, Landroid/hardware/biometrics/BiometricPrompt;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v9

    move-object v7, v10

    invoke-virtual/range {v1 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/biometrics/CryptoObject;Landroid/os/CancellationSignal;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/IBiometricPromptReceiver;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;)V

    goto :goto_0

    :cond_6
    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mSemIntelligentScanManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    if-nez v1, :cond_7

    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/biometrics/SemBiometricsManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/SemBiometricsManager;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mSemIntelligentScanManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    :cond_7
    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mSemIntelligentScanManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mSemIntelligentScanManager:Lcom/samsung/android/biometrics/SemBiometricsManager;

    iget-object v4, v0, Landroid/hardware/biometrics/BiometricPrompt;->mBundle:Landroid/os/Bundle;

    iget-object v6, v0, Landroid/hardware/biometrics/BiometricPrompt;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v9

    move-object v7, v10

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/biometrics/SemBiometricsManager;->authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/IBiometricPromptReceiver;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;[B)V

    goto :goto_0

    :cond_8
    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;

    if-nez v1, :cond_9

    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/bio/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/bio/iris/SemIrisManager;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;

    :cond_9
    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;

    if-eqz v1, :cond_a

    iget-object v1, v0, Landroid/hardware/biometrics/BiometricPrompt;->mSemIrisManager:Lcom/samsung/android/bio/iris/SemIrisManager;

    iget-object v4, v0, Landroid/hardware/biometrics/BiometricPrompt;->mBundle:Landroid/os/Bundle;

    iget-object v6, v0, Landroid/hardware/biometrics/BiometricPrompt;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v9

    move-object v7, v10

    move-object/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/samsung/android/bio/iris/SemIrisManager;->authenticate(Landroid/hardware/biometrics/BiometricPrompt$CryptoObject;Landroid/os/CancellationSignal;Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/IBiometricPromptReceiver;Landroid/hardware/biometrics/BiometricAuthenticator$AuthenticationCallback;[B)V

    :cond_a
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
