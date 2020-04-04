.class public abstract Lcom/android/server/fingerprint/AuthenticationClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "AuthenticationClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;
    }
.end annotation


# static fields
.field public static final LOCKOUT_NONE:I = 0x0

.field public static final LOCKOUT_PERMANENT:I = 0x2

.field public static final LOCKOUT_TIMED:I = 0x1

.field private static final SEM_STATUS_SCREEN_OFF:I = 0x1


# instance fields
.field private final DVFS_TIMEOUT:I

.field private final NEED_WAKELOCK:I

.field private final NO_NEED_WAKELOCK:I

.field private final SEM_DOZE_RESET_TIME_10:I

.field private final SEM_DOZE_RESET_TIME_5:I

.field private final SEM_FINGER_ICON_TRIGGER_MOVE:I

.field private final SEM_FINGER_ICON_TRIGGER_TAP:I

.field private USE_AOSP_PROMPT:Z

.field private final VIEW_FAILTEXT:I

.field private final VIEW_FINGERPRINT_ICON:I

.field private bSelfStop:Z

.field private mAlreadyShowing:Z

.field private mBundle:Landroid/os/Bundle;

.field private mCaptureStartTime:J

.field private mDexWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mDialogDismissed:Z

.field protected mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mDisplayState:I

.field private mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

.field private mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

.field private mFingerIconHideTime:J

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHasReceivedCaptureFailedEvent:Z

.field private mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

.field private mInLockout:Z

.field private mIsAdaptiveIconEnabled:Z

.field private mIsFingerIconShowing:Z

.field private mLatestError:I

.field private mOpId:J

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPendingDoze:Ljava/lang/Runnable;

.field private mPendingDozeOptical:Ljava/lang/Runnable;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPromptPrivilegedFlag:I

.field private mQualityErrorCount:I

.field private mRejectCount:I

.field private mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

.field private mRunnableTooShortDeliverForOptical:Ljava/lang/Runnable;

.field private mRunnableTouchDownDeliverForOptical:Ljava/lang/Runnable;

.field private mScreenStatus:I

.field private final mSemHideFingerIconRunnable:Ljava/lang/Runnable;

.field private mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

.field private mSkipSystemUiMessage:Z

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mTimeForTouchDown:J

.field private mTouchDownPress:Z

.field private mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 12

    move-object v10, p0

    move-object/from16 v11, p12

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->USE_AOSP_PROMPT:Z

    iput v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->NO_NEED_WAKELOCK:I

    const/4 v1, 0x1

    iput v1, v10, Lcom/android/server/fingerprint/AuthenticationClient;->NEED_WAKELOCK:I

    const/16 v2, 0x2710

    iput v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->SEM_DOZE_RESET_TIME_10:I

    const/16 v2, 0x1388

    iput v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->SEM_DOZE_RESET_TIME_5:I

    iput v1, v10, Lcom/android/server/fingerprint/AuthenticationClient;->VIEW_FAILTEXT:I

    const/4 v2, 0x2

    iput v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->VIEW_FINGERPRINT_ICON:I

    iput v1, v10, Lcom/android/server/fingerprint/AuthenticationClient;->SEM_FINGER_ICON_TRIGGER_TAP:I

    iput v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->SEM_FINGER_ICON_TRIGGER_MOVE:I

    const/16 v2, 0x1770

    iput v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->DVFS_TIMEOUT:I

    const/4 v2, 0x0

    iput-object v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    iput-boolean v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mIsFingerIconShowing:Z

    iput v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I

    iput-boolean v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mHasReceivedCaptureFailedEvent:Z

    new-instance v3, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$M-r1K2NwYPN_MTEgsSsCiwfUspU;

    invoke-direct {v3, v10}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$M-r1K2NwYPN_MTEgsSsCiwfUspU;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    iput-object v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    const-wide/16 v3, 0x0

    iput-wide v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerIconHideTime:J

    iput-object v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;

    iput-object v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDozeOptical:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/server/fingerprint/AuthenticationClient$1;

    invoke-direct {v3, v10}, Lcom/android/server/fingerprint/AuthenticationClient$1;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-wide/from16 v3, p8

    iput-wide v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    iput-object v11, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    move-object/from16 v5, p13

    iput-object v5, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-object/from16 v6, p14

    iput-object v6, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {v10}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "fingerprint"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v7, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v7, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    iget-object v8, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-direct {v7, v8}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;-><init>(Lcom/android/internal/statusbar/IStatusBarService;)V

    iput-object v7, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    iget-object v7, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_3

    iget-object v7, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "sem_bio_prompt"

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v7, "sem_prompt_privileged_flag"

    invoke-virtual {v2, v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPromptPrivilegedFlag:I

    sget-boolean v2, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AuthenticationClient : Prompt Privileged Flag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPromptPrivilegedFlag:I

    invoke-static {v8}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "sem_debug_aosp_ux"

    invoke-virtual {v11, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->USE_AOSP_PROMPT:Z

    goto :goto_0

    :cond_0
    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AuthenticationClient : P = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPromptPrivilegedFlag:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPromptPrivilegedFlag:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPrivilegedAttr:I

    or-int/2addr v0, v1

    iput v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPrivilegedAttr:I

    :cond_1
    new-instance v0, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$radMK5Tbxv_kFy8ifmVk4QNVx3Y;

    invoke-direct {v0, v10}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$radMK5Tbxv_kFy8ifmVk4QNVx3Y;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    goto :goto_1

    :cond_2
    iput-object v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    :cond_3
    :goto_1
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_4

    invoke-direct {v10}, Lcom/android/server/fingerprint/AuthenticationClient;->initForInDisplaySensor()V

    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/AuthenticationClient;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/AuthenticationClient;->handleSystemUIEventForInDisplaySensor(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/fingerprint/AuthenticationClient;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/AuthenticationClient;->semShowFingerIcon(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/biometrics/IBiometricPromptReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/AuthenticationClient;)Lcom/android/server/fingerprint/SemVisualEffectView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/fingerprint/AuthenticationClient;Lcom/android/server/fingerprint/SemVisualEffectView;)Lcom/android/server/fingerprint/SemVisualEffectView;
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDoze:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDozeOptical:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/fingerprint/AuthenticationClient;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDozeOptical:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/fingerprint/AuthenticationClient;)Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/fingerprint/AuthenticationClient;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHideFingerIcon()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/fingerprint/AuthenticationClient;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsAdaptiveIconEnabled:Z

    return v0
.end method

.method private acquireDVFS(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "FINGERPRINT_SERVICE"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "acquireDVFS: can\'t get SemDvfsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    const v1, 0x1e8480

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequency(I)I

    move-result v0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireDVFS: set="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    return-void
.end method

.method private acquireWakeLock(J)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acquireWakeLock: failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleSystemUIEventForInDisplaySensor(I)V
    .locals 6

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSystemUIEventForInDisplaySensor : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2711

    if-eq p1, v0, :cond_9

    const/16 v0, 0x271a

    if-eq p1, v0, :cond_8

    const-wide/16 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->observe(Z)V

    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDozeOptical:Ljava/lang/Runnable;

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTouchDownPress:Z

    if-eqz v2, :cond_1

    iget-wide v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeForTouchDown:J

    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableTouchDownDeliverForOptical:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableTooShortDeliverForOptical:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableTooShortDeliverForOptical:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$pWVXPprzmTKC9A3nui35xs7h_34;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$pWVXPprzmTKC9A3nui35xs7h_34;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTouchDownPress:Z

    goto/16 :goto_2

    :pswitch_1
    const/16 v2, 0x1770

    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->acquireDVFS(I)V

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableTooShortDeliverForOptical:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-wide v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeForTouchDown:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTouchDownPress:Z

    sget-boolean v1, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleSystemUIEventForInDisplaySensor: display = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->handleWakeUp()V

    :cond_4
    const/16 v1, 0x4e21

    if-ne p1, v1, :cond_6

    iget v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->observe(Z)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableTouchDownDeliverForOptical:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->isMaxBrightness()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableTouchDownDeliverForOptical:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->observe(Z)V

    :goto_1
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/AuthenticationClient$2;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/AuthenticationClient$2;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$yrLsjDrI_Vxj7sq2LgQj6NIom8s;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$yrLsjDrI_Vxj7sq2LgQj6NIom8s;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsAdaptiveIconEnabled:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTouchDownPress:Z

    if-eqz v0, :cond_a

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "handleSystemUIEventForInDisplaySensor: Touch down status, skip FIS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$MwncI4GBDM7aI9b0I4ku_W7IKNE;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$MwncI4GBDM7aI9b0I4ku_W7IKNE;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_b
    :goto_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initForInDisplaySensor()V
    .locals 5

    new-instance v0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "FingerprintService"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v1, "FingerprintService"

    const/16 v3, 0x80

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->semIsDualDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x1000000a

    const-string/jumbo v3, "finger icon show in desktop mode"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDexWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDexWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_0
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintUtils;->semIsAdaptiveIconEnabled(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsAdaptiveIconEnabled:Z

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$a1iGOoRXTNvdCQ03uRzM-lun_cc;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$a1iGOoRXTNvdCQ03uRzM-lun_cc;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableTouchDownDeliverForOptical:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableTouchDownDeliverForOptical:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$33_u1AMVJuEg1oQ-lj67aGmta10;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$33_u1AMVJuEg1oQ-lj67aGmta10;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableTooShortDeliverForOptical:Ljava/lang/Runnable;

    :cond_1
    return-void
.end method

.method public static synthetic lambda$M-r1K2NwYPN_MTEgsSsCiwfUspU(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHideFingerIcon()V

    return-void
.end method

.method public static synthetic lambda$handleSystemUIEventForInDisplaySensor$5(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->handleFIS()V

    return-void
.end method

.method public static synthetic lambda$handleSystemUIEventForInDisplaySensor$6(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalError(II)V

    return-void
.end method

.method public static synthetic lambda$handleSystemUIEventForInDisplaySensor$7(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semDeliveryTouchEvent(Z)I

    return-void
.end method

.method public static synthetic lambda$initForInDisplaySensor$3(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mTimeForTouchDown:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semDeliveryTouchEvent(Z)I

    return-void
.end method

.method public static synthetic lambda$initForInDisplaySensor$4(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x2712

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalAcquired(II)V

    const/16 v0, 0x2713

    invoke-virtual {p0, v1, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalAcquired(II)V

    const/16 v0, 0x2716

    invoke-virtual {p0, v1, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalAcquired(II)V

    const/4 v0, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalAcquired(II)V

    const/16 v0, 0x2714

    invoke-virtual {p0, v1, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalAcquired(II)V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/fingerprint/AuthenticationClient;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semHandleInternalError(II)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$86KO7z9M7RpWIoHxhA7DzXG_vQE;

    invoke-direct {v1, p0}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$86KO7z9M7RpWIoHxhA7DzXG_vQE;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic lambda$start$2(Lcom/android/server/fingerprint/AuthenticationClient;ILjava/util/ArrayList;)V
    .locals 0

    iput p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRequestApiResult:I

    return-void
.end method

.method private releaseDVFS()V
    .locals 2

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "releaseDVFS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDvfsFreqManager:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v0}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDrawWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseWakeLock: failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private semDexWakeLock()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintUtils;->semIsDualDexMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAttr:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAttr:Landroid/os/Bundle;

    const-string v1, "DISPLAY_TYPE"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDexWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "semDexWakeLock acquire"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "sem_fingerprint_dex_guide_toast"

    invoke-static {v2, v3}, Lcom/android/server/fingerprint/FingerprintUtils$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->semSetPreferredDisplayType(I)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDexWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDexWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private semHideFingerIcon()V
    .locals 2

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSkipSystemUiMessage:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->hideFingerprintGuideView(I)V

    :cond_1
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->handleOverlayMaskView(Z)V

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSkipSystemUiMessage:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, v1, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semLimitDisplayState(ZZ)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semLimitDisplayState(ZZ)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->hideView()V

    :cond_4
    iput-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsFingerIconShowing:Z

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->releaseWakeLock()V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private semShowFingerIcon(I)V
    .locals 7

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semShowFingerIcon: called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsFingerIconShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsFingerIconShowing:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semShowFingerIcon: called with: event = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], already show"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v0, 0x2710

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->acquireWakeLock(J)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->requestDozeHlpmMode(Z)V

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semLimitDisplayState(ZZ)V

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semMoveSensorIcon(I)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->startSensorIconAnimation(I)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerIconHideTime:J

    iput-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsFingerIconShowing:Z

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FPMV"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x2

    invoke-static/range {v1 .. v6}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    :cond_3
    :goto_0
    return-void
.end method

.method private semWriteEventLog(I)V
    .locals 2

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLatestError:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLatestError:I

    neg-int p1, v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "fingerprint_stop"

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private showPromptOrCue()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyShowing:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string v1, "AuthenticationClient: showPromptOrCue: Already showing"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eqz v0, :cond_2

    :try_start_0
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_1

    new-array v0, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorAreaWidth:Ljava/lang/String;

    aput-object v5, v0, v4

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorAreaHeight:Ljava/lang/String;

    aput-object v4, v0, v6

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorMarginBottom:Ljava/lang/String;

    aput-object v4, v0, v3

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorMarginLeft:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorImageSize:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v2, "sem_area"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v1, "token"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBarService;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Unable to show fingerprint dialog"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v7, 0x1

    new-array v5, v5, [Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorAreaWidth:Ljava/lang/String;

    aput-object v8, v5, v4

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorAreaHeight:Ljava/lang/String;

    aput-object v4, v5, v6

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorMarginBottom:Ljava/lang/String;

    aput-object v4, v5, v3

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorMarginLeft:Ljava/lang/String;

    aput-object v3, v5, v2

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemSensorImageSize:Ljava/lang/String;

    aput-object v2, v5, v1

    const-string/jumbo v1, "sem_area"

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v1, "token"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    const-string/jumbo v1, "sem_adaptive_icon"

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsAdaptiveIconEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->semHasPrivilegedAttr(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v1, :cond_3

    const/16 v7, 0x10

    goto :goto_1

    :cond_3
    const/4 v7, 0x2

    :cond_4
    :goto_1
    const-string/jumbo v1, "sem_ux_type"

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-boolean v1, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start : MASK TYPE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->showAuthenticationCue(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    :cond_6
    :goto_2
    iput-boolean v6, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyShowing:Z

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semClientDied(Lcom/android/server/fingerprint/ClientMonitor;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/server/fingerprint/ClientMonitor;->destroy()V

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->bSelfStop:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semWriteEventLog(I)V

    return-void
.end method

.method public getDozeManager()Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    return-object v0
.end method

.method public abstract handleFailedAttempt()I
.end method

.method public onAcquired(II)Z
    .locals 10

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHasReceivedCaptureFailedEvent:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const-string v1, "FingerprintService"

    const-string/jumbo v3, "onAcquired: Invalid capture feedback change to FINGERPRINT_ACQUIRED_IMAGER_DIRTY"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHasReceivedCaptureFailedEvent:Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(II)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const/4 v4, 0x6

    if-eqz v3, :cond_5

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->USE_AOSP_PROMPT:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    if-ne v4, p1, :cond_2

    move v3, p2

    goto :goto_0

    :cond_2
    move v3, p1

    :goto_0
    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v5, v3, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onHelp(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_1
    const-string v5, "FingerprintService"

    const-string v6, "Remote exception when sending acquired message"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    if-nez p1, :cond_9

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    goto :goto_6

    :goto_2
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    :cond_3
    throw v2

    :cond_4
    :goto_3
    const/4 v0, 0x0

    if-nez p1, :cond_9

    goto :goto_1

    :cond_5
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    invoke-virtual {v3, p1, p2, v1}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->onAcquired(IILjava/lang/String;)V

    goto :goto_5

    :cond_6
    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->semHasPrivilegedAttr(I)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v1, :cond_8

    if-ne v4, p1, :cond_7

    move v3, p2

    goto :goto_4

    :cond_7
    move v3, p1

    :goto_4
    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v5, v3, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onHelp(ILjava/lang/String;)V

    :cond_8
    :goto_5
    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result v0

    :cond_9
    :goto_6
    const/4 v3, 0x1

    if-ne p1, v4, :cond_11

    const/4 v4, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    add-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_a
    iget v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatus:I

    if-ne v4, v3, :cond_11

    const/4 v4, 0x2

    iput v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatus:I

    iget v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPromptPrivilegedFlag:I

    and-int/2addr v4, v3

    if-nez v4, :cond_b

    invoke-virtual {p0, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    const/4 v0, 0x1

    goto/16 :goto_7

    :cond_b
    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsDone:Z

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/fingerprint/-$$Lambda$7N9c8BJ1q2kD2rOr-cJ8b4Oy3UU;

    invoke-direct {v5, p0}, Lcom/android/server/fingerprint/-$$Lambda$7N9c8BJ1q2kD2rOr-cJ8b4Oy3UU;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_7

    :pswitch_1
    sget-boolean v5, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v5, :cond_11

    const/16 v5, 0x2716

    if-ne p2, v5, :cond_c

    iput-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHasReceivedCaptureFailedEvent:Z

    :cond_c
    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v5, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->handleSensorView(Z)V

    iput-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPendingDozeOptical:Ljava/lang/Runnable;

    goto :goto_7

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mCaptureStartTime:J

    iget-wide v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mCaptureStartTime:J

    invoke-static {v5, v6}, Lcom/android/server/fingerprint/BioLoggingManager;->setStartTime(J)V

    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHasReceivedCaptureFailedEvent:Z

    sget-boolean v5, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v5, :cond_10

    iget-boolean v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v5, :cond_10

    iget v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mScreenStatus:I

    if-ne v5, v3, :cond_e

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v6

    invoke-static {v5, v6, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->semIsAODShowState(Landroid/content/Context;IZ)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v5, v3}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->hideFingerprintGuideView(I)V

    :cond_d
    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v5, 0x2710

    invoke-direct {p0, v5, v6}, Lcom/android/server/fingerprint/AuthenticationClient;->acquireWakeLock(J)V

    iget-object v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerIconHideTime:J

    :cond_e
    sget-boolean v5, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    if-nez v5, :cond_f

    new-instance v5, Lcom/android/server/fingerprint/SemVisualEffectView;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/fingerprint/SemVisualEffectView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    :cond_f
    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    invoke-virtual {v5, v4}, Lcom/android/server/fingerprint/SemVisualEffectView;->start(Lcom/android/server/fingerprint/SemVisualEffectView$IVisualEffectViewListener;)V

    :cond_10
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_11
    :goto_7
    invoke-virtual {p0, p1, p2}, Lcom/android/server/fingerprint/AuthenticationClient;->semIsQualityFailedInfo(II)Z

    move-result v4

    if-eqz v4, :cond_14

    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    invoke-virtual {v4, v2, v2}, Lcom/android/server/fingerprint/SemVisualEffectView;->setReadTouchMap(ZZ)V

    :cond_12
    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->showHelpMessage(I)V

    :cond_13
    iget v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mQualityErrorCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mQualityErrorCount:I

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/server/fingerprint/AuthenticationClient;->semHasPrivilegedAttr(I)Z

    move-result v2

    if-nez v2, :cond_14

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->vibrateError()V

    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/AuthenticationClient;->semLoggingQualityErrorInfo(I)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAuthenticated(II)Z
    .locals 27

    move-object/from16 v1, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v8, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    move v13, v0

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mVisualEffectView:Lcom/android/server/fingerprint/SemVisualEffectView;

    iget v2, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mScreenStatus:I

    if-ne v2, v12, :cond_1

    move v2, v12

    goto :goto_1

    :cond_1
    move v2, v11

    :goto_1
    invoke-virtual {v0, v11, v2}, Lcom/android/server/fingerprint/SemVisualEffectView;->setReadTouchMap(ZZ)V

    :cond_2
    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ClientMonitor["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] : onAuthenticated : fpId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v13, :cond_4

    iput v12, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatus:I

    iput-boolean v12, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mSkipSystemUiMessage:Z

    :cond_4
    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const v2, 0x104097b

    if-eqz v0, :cond_9

    if-eqz v13, :cond_7

    :try_start_0
    iget v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mPromptPrivilegedFlag:I

    and-int/2addr v0, v12

    if-eqz v0, :cond_6

    iget-boolean v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->USE_AOSP_PROMPT:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v4

    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/fingerprint/FingerprintUtils;->semGetFingerprintName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v4

    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/fingerprint/FingerprintUtils;->semGetFingerprintName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onAuthenticatedName(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAuthenticated()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_7
    iget-boolean v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->USE_AOSP_PROMPT:Z

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104036d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onAuthenticationFailed(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    nop

    const-string v2, "FingerprintService"

    const-string v3, "Failed to notify Authenticated:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    goto :goto_5

    :cond_9
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_b

    if-eqz v13, :cond_a

    :try_start_1
    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAuthenticated()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to notify Authenticated:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    goto :goto_5

    :cond_a
    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onAuthenticationFailed(Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->showHelpMessage(I)V

    :cond_b
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v14

    if-eqz v14, :cond_f

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v2, 0xfc

    invoke-static {v0, v2, v13}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    if-nez v13, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v2

    invoke-interface {v14, v2, v3}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V

    const-string v0, "N"

    invoke-static {v0}, Lcom/android/server/fingerprint/BioLoggingManager;->setResult(Ljava/lang/String;)V

    goto :goto_7

    :cond_c
    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAuthenticated(owner="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getIsRestricted()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const-string v3, ""

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v6

    move-object v2, v0

    move v4, v9

    move v5, v8

    invoke-direct/range {v2 .. v7}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v4

    invoke-interface {v14, v2, v3, v0, v4}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V

    iput-boolean v12, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mIsDone:Z

    const-string v2, "M"

    invoke-static {v2}, Lcom/android/server/fingerprint/BioLoggingManager;->setResult(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    const-string v2, "FingerprintService"

    const-string v3, "Failed to notify Authenticated:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x1

    iput v11, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatus:I

    const-string v2, "E"

    invoke-static {v2}, Lcom/android/server/fingerprint/BioLoggingManager;->setResult(Ljava/lang/String;)V

    :goto_7
    goto :goto_8

    :cond_f
    const/4 v10, 0x1

    iput v11, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatus:I

    const-string v0, ""

    invoke-static {v0}, Lcom/android/server/fingerprint/BioLoggingManager;->setResult(Ljava/lang/String;)V

    :goto_8
    if-nez v13, :cond_16

    if-eqz v14, :cond_10

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHasPrivilegedAttr(I)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->vibrateError()V

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->handleFailedAttempt()I

    move-result v2

    if-eqz v2, :cond_14

    :try_start_3
    iput-boolean v12, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    const-string v0, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Forcing lockout (fp driver code should do this!), mode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v11}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    iput v11, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatus:I

    if-ne v2, v12, :cond_11

    const/4 v0, 0x7

    goto :goto_9

    :cond_11
    const/16 v0, 0x9

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v3

    invoke-interface {v14, v3, v4, v0, v11}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JII)V

    iget-object v3, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_12

    iget-object v3, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v4, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4, v0, v11}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(Ljava/lang/String;)V

    goto :goto_a

    :cond_12
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v3, :cond_13

    iget-object v3, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    iget-object v4, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4, v0, v11}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onError(ILjava/lang/String;)V

    :cond_13
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "FPIB"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, -0x1

    const/16 v20, 0x3

    invoke-static/range {v15 .. v20}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    const-string v3, "FingerprintService"

    const-string v4, "Failed to notify lockout:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_14
    :goto_b
    if-eqz v2, :cond_15

    move v11, v12

    nop

    :cond_15
    or-int v0, v10, v11

    iget v3, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mRejectCount:I

    add-int/2addr v3, v12

    iput v3, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mRejectCount:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "FPIF"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, -0x1

    const/16 v20, 0x3

    invoke-static/range {v15 .. v20}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "FPTF"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mCaptureStartTime:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    const-wide/16 v24, -0x1

    const/16 v26, 0x1

    invoke-static/range {v21 .. v26}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    goto :goto_c

    :cond_16
    or-int/lit8 v0, v10, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->resetFailedAttempts()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStop()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "FPIS"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    const/4 v7, 0x3

    invoke-static/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "FPTS"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mCaptureStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v17

    const-wide/16 v18, -0x1

    const/16 v20, 0x1

    invoke-static/range {v15 .. v20}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "FPSF"

    iget v4, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mRejectCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, -0x1

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v15

    const-string v16, "FPSQ"

    iget v2, v1, Lcom/android/server/fingerprint/AuthenticationClient;->mQualityErrorCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v20}, Lcom/android/server/fingerprint/FingerprintService;->semInsertSurveyLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V

    :goto_c
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v2, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->releaseDVFS()V

    :cond_17
    sget-boolean v2, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v2, :cond_18

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientMonitor["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] : onAuthenticated : result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return v0
.end method

.method public onEnrollResult(III)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(III)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onError(II)Z
    .locals 4

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->releaseDVFS()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    iput p2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLatestError:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    iput p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mLatestError:I

    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "FingerprintService"

    const-string v3, "Remote exception when sending error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_2

    :cond_5
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->onError(ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHideFingerIcon()V

    :cond_6
    :goto_2
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "fod_enable,0"

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->observe(Z)V

    :cond_7
    iput-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSkipSystemUiMessage:Z

    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    move-result v0

    return v0
.end method

.method public onRemoved(III)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract resetFailedAttempts()V
.end method

.method public abstract semClientDied(Lcom/android/server/fingerprint/ClientMonitor;)V
.end method

.method public abstract semGetAodListener()Landroid/hardware/fingerprint/ISemFingerprintViewCallback;
.end method

.method public semGetRemainTimeFingerIcon()J
    .locals 5

    iget-wide v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerIconHideTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-wide v2

    :cond_0
    return-wide v0
.end method

.method semHandleDisplayChanged(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    iget v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDisplayState:I

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->onDisplayChanged(I)V

    :cond_0
    return-void
.end method

.method public abstract semHandleInternalAcquired(II)V
.end method

.method public abstract semHandleInternalError(II)V
.end method

.method semHandlePendingStatus()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->showPromptOrCue()V

    return-void
.end method

.method semHandleRequestCommand(I)I
    .locals 3

    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semHandleRequestCommand: called with: cmd = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x3f4

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHideFingerIcon()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract semLimitDisplayState(ZZ)V
.end method

.method public semMoveSensorIcon(I)V
    .locals 1

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->moveSensorIcon(I)V

    :cond_0
    return-void
.end method

.method public semScreenStatus(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semScreenStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, "ON"

    goto :goto_0

    :cond_0
    const-string v2, "OFF"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_3

    iput p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mScreenStatus:I

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDozeManager:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    if-nez p1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->setScreenStatus(Z)V

    :cond_3
    return-void
.end method

.method public start()I
    .locals 11

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;

    const/4 v7, 0x3

    if-nez v0, :cond_0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "start authentication: no fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    :try_start_0
    const-string v1, "A"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/fingerprint/BioLoggingManager;->setType(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->semGetAspLevel(Landroid/content/Context;I)I

    move-result v1

    move v8, v1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    move-wide v9, v1

    const/16 v2, 0x14

    const/4 v3, 0x0

    new-instance v6, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$Tp0IKZYJemoYLZ7_x9pyQQR8pbA;

    invoke-direct {v6, p0}, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$Tp0IKZYJemoYLZ7_x9pyQQR8pbA;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    move-object v1, v0

    move v4, v8

    invoke-interface/range {v1 .. v6}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->request(IIILjava/util/ArrayList;Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint$requestCallback;)V

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAuthentication("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") FP_FINISH ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms) RESULT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRequestApiResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "fod_enable,1,1"

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v5

    invoke-interface {v0, v3, v4, v5}, Lvendor/samsung/hardware/biometrics/fingerprint/V2_1/ISecBiometricsFingerprint;->authenticate(JI)I

    move-result v3

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAuthentication FP_FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v1

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms) RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const-string v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startAuthentication failed, result="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "fingeprintd_auth_start_error"

    invoke-static {v5, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    return v3

    :cond_2
    sget-boolean v5, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "client "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is authenticating..."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStart()V

    iput-boolean v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semDexWakeLock()V

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->showPromptOrCue()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return v4

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startAuthentication failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v7
.end method

.method public stop(Z)I
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v2, "stopAuthentication: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->bSelfStop:Z

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mRunnableHandlePromptTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsKeyguard:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemHideFingerIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->semHideFingerIcon()V

    :cond_2
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "fod_enable,0"

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintUtils;->semWriteTSP(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mHbmFileObserver:Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemBrightnessFileObserver;->observe(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStop()V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    const/4 v2, 0x3

    if-nez v0, :cond_4

    const-string v1, "FingerprintService"

    const-string/jumbo v3, "stopAuthentication: no fingerprint HAL!"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v5

    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopAuthentication FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_8

    const-string v1, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "stopAuthentication failed, result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSkipSystemUiMessage:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v1, :cond_6

    :try_start_1
    sget-boolean v1, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "stopAuthentication : hideFingerprintDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    const-string v6, "Unable to hide fingerprint dialog"

    invoke-static {v2, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_0
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->hideAuthenticationCue()V

    :cond_7
    return v5

    :cond_8
    :try_start_2
    sget-boolean v6, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v6, :cond_9

    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "client "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is no longer authenticating"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_9
    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSkipSystemUiMessage:Z

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v2, :cond_b

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v2, :cond_b

    :try_start_3
    sget-boolean v2, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "stopAuthentication : hideFingerprintDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_1
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->hideAuthenticationCue()V

    :cond_c
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    return v1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_4
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopAuthentication failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSkipSystemUiMessage:Z

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_e

    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v3, :cond_e

    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v3, :cond_e

    :try_start_5
    sget-boolean v3, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v3, :cond_d

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopAuthentication : hideFingerprintDialog"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v3

    const-string v4, "FingerprintService"

    const-string v5, "Unable to hide fingerprint dialog"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    :goto_2
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->hideAuthenticationCue()V

    :cond_f
    return v2

    :goto_3
    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSkipSystemUiMessage:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v2, :cond_11

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v2, :cond_11

    :try_start_6
    sget-boolean v2, Lcom/android/server/fingerprint/AuthenticationClient;->DEBUG:Z

    if-eqz v2, :cond_10

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "stopAuthentication : hideFingerprintDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    :goto_4
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintUtils$SemConfig;->FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v2, :cond_12

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSemUiHelper:Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/FingerprintUtils$SemUiHelper;->hideAuthenticationCue()V

    :cond_12
    throw v1
.end method
