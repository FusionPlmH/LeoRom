.class Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;
.super Ljava/lang/Object;
.source "SemFingerprintMaskViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;,
        Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;,
        Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;,
        Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;,
        Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private final ACTION_FOD_PRESS:I

.field private final ACTION_FOD_RELEASE:I

.field private final ACTION_SINGLE_TAP:I

.field private final NEED_WAKELOCK:I

.field private final NO_NEED_WAKELOCK:I

.field private final TAG:Ljava/lang/String;

.field private final VIEW_FINGERPRINT_ICON:I

.field private mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

.field private mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

.field private mBackgroundLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

.field mBiometricPromptReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHandler:Landroid/os/Handler;

.field private mHasBackgroundLayer:Z

.field private mIsAdaptiveIconEnabled:Z

.field private mIsAlphaMaskStandAlone:Z

.field private mIsDozeByFinger:Z

.field private mIsKeyguard:Z

.field private mIsNaviHide:Z

.field private mIsPaused:Z

.field private mIsPrompt:Z

.field private mIsScreenOn:Z

.field private mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

.field private mMaskType:I

.field private mOrientationScreen:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreOrientationScreen:I

.field private mSensorAreaHeight:I

.field private mSensorAreaSizeInfo:[Ljava/lang/String;

.field private mSensorAreaWidth:I

.field private mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

.field private mSensorImageSize:I

.field private mSensorMarginBottom:I

.field private mSensorMarginLeft:I

.field private mToken:Landroid/os/IBinder;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/WindowManager;Landroid/os/Bundle;ILandroid/hardware/biometrics/IBiometricPromptReceiver;Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemFingerprintMaskViewManager@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->ACTION_SINGLE_TAP:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->ACTION_FOD_PRESS:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->ACTION_FOD_RELEASE:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->NO_NEED_WAKELOCK:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->NEED_WAKELOCK:I

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPreOrientationScreen:I

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOrientationScreen:I

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsScreenOn:Z

    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->VIEW_FINGERPRINT_ICON:I

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsNaviHide:Z

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Type : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    iput-object p6, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBiometricPromptReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    and-int/lit8 v2, p5, 0x20

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsAlphaMaskStandAlone:Z

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    or-int/2addr v2, p5

    iput v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    const-string/jumbo v2, "sem_area"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaSizeInfo:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateDisplayMetrics(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsAlphaMaskStandAlone:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->loadResource()Z

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->setBroadcastReceiverForTSP()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p4, p5, p7, p6}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updaterClientInfo(Landroid/os/Bundle;IZLandroid/hardware/biometrics/IBiometricPromptReceiver;)V

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsKeyguard:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsDozeByFinger:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsPrompt:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsDozeByFinger:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->getAlphaBackgroundColor(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;D)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->getPxValue(D)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorMarginBottom:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->onConfigurationChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsNaviHide:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorImageSize:I

    return v0
.end method

.method private getAlphaBackgroundColor(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->getOverlayMaskAlphaLevel(I)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    return v0
.end method

.method private getOverlayMaskAlphaLevel(I)F
    .locals 10

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPowerManager:Landroid/os/PowerManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v0

    goto :goto_0

    :cond_0
    int-to-float v0, p1

    :goto_0
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v3, "getOverlayMaskAlphaLevel: invalid brightness value, set to default"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x42fe0000    # 127.0f

    :cond_1
    const v2, 0x44034000    # 525.0f

    const v3, 0x3fd26e98    # 1.644f

    mul-float/2addr v3, v0

    const/high16 v4, 0x43000000    # 128.0f

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_2

    const v4, 0x3e6b851f    # 0.23f

    mul-float/2addr v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    sub-float/2addr v4, v5

    goto :goto_1

    :cond_2
    const/high16 v4, 0x437f0000    # 255.0f

    cmpg-float v5, v0, v4

    if-gtz v5, :cond_3

    sub-float/2addr v4, v0

    const v5, 0x3e5c28f6    # 0.215f

    mul-float/2addr v4, v5

    goto :goto_1

    :cond_3
    move v4, v1

    :goto_1
    sub-float/2addr v3, v4

    cmpl-float v4, v3, v2

    if-lez v4, :cond_4

    goto :goto_2

    :cond_4
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-float v1, v3, v2

    float-to-double v6, v1

    const-wide v8, 0x3fe14c1bacf914c1L    # 0.5405405405405405

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v1, v4

    :goto_2
    sget-boolean v4, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOverlayMaskAlphaLevel : brightness="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", nit_max="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", nit_curr="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", alpha="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1
.end method

.method private getPxValue(D)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private loadResource()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mToken:Landroid/os/IBinder;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->loadResource()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->updateResource()V

    :goto_0
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mToken:Landroid/os/IBinder;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->loadResource()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mToken:Landroid/os/IBinder;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->loadResource()V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateLayoutSpec()V

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsKeyguard:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mToken:Landroid/os/IBinder;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->loadResource()V

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHasBackgroundLayer:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mToken:Landroid/os/IBinder;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->loadResource()V

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method private onConfigurationChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOrientationScreen:I

    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPreOrientationScreen:I

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mOrientationScreen:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v1, "change orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateRotationInfo()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->updateViewLayout()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->updateFailTextView()V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x5

    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-static {v3, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateDisplayMetrics(Z)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->updateViewLayout()V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->updateFailTextView()V

    :cond_3
    :goto_0
    return-void
.end method

.method private semGetAcquiredString(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_acquired_image_dirty_for_aod"

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_acquired_partial_for_aod"

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    return-object v1

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_no_match_for_aod"

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_acquired_light_for_aod"

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_acquired_too_wet_for_aod"

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "sem_fingerprint_acquired_too_fast_for_aod"

    invoke-static {v0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl$SemResourceManager;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    nop

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "semGetAcquiredString : Exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v1

    nop

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setBroadcastReceiverForTSP()V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setBroadcastReceiverForTSP called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$2;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "set BroadcastReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updaterClientInfo: failed to register BR for FOD"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_1
    :goto_0
    return-void
.end method

.method private showTemporaryMessage(ILjava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showTemporaryMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHasBackgroundLayer:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->updateIcon(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    invoke-virtual {v0, p2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->showTemporaryMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private updateDisplayMetrics(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDisplayMetrics called : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaSizeInfo:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaSizeInfo:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v3, 0x5

    invoke-static {v3, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaHeight:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaSizeInfo:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaWidth:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaSizeInfo:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorMarginBottom:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaSizeInfo:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorMarginLeft:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaSizeInfo:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v0, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorImageSize:I

    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorMarginBottom:I

    sget-object v4, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->SENSOR_BOTTOM_MARGIN_BOUNDARY_RECENT_HOME_KEY:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    if-ge v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsNaviHide:Z

    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateLayoutSpec()V

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateRotationInfo()V

    :cond_2
    return-void
.end method

.method private updateLayoutSpec()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->updateLayoutSpec()V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->updateLayoutSpec()V

    :cond_1
    return-void
.end method

.method private updateRotationInfo()V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPreOrientationScreen:I

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRotationInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPreOrientationScreen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v7, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorImageSize:I

    iget v8, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorImageSize:I

    div-int/lit8 v1, v7, 0x2

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorMarginLeft:I

    sub-int v9, v1, v2

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorMarginBottom:I

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v2, v7, 0x2

    add-int v10, v1, v2

    div-int/lit8 v1, v8, 0x2

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorMarginLeft:I

    sub-int v11, v1, v2

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorMarginBottom:I

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorAreaHeight:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v2, v8, 0x2

    add-int v12, v1, v2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPreOrientationScreen:I

    move-object v3, v0

    move v4, v7

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->handleRotation(ILandroid/graphics/Point;III)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->updateViewLayout()V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPreOrientationScreen:I

    invoke-virtual {v1, v2, v0, v7}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->handleRotation(ILandroid/graphics/Point;I)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPreOrientationScreen:I

    move-object v3, v0

    move v4, v8

    move v5, v11

    move v6, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->handleRotation(ILandroid/graphics/Point;III)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->updateViewLayout()V

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHasBackgroundLayer:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mPreOrientationScreen:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->handleRotation(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method addAlphaMask()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAlphaMask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->show()V

    :cond_0
    return-void
.end method

.method addBackgroundAuthLayer()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHasBackgroundLayer:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->show()V

    :cond_0
    return-void
.end method

.method addGreenIcon()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->show()V

    :cond_0
    return-void
.end method

.method addHelpMsgLayerForAOD()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsKeyguard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->show()V

    :cond_0
    return-void
.end method

.method addMaskType(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    return-void
.end method

.method addSensorIcon()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v1, "addSensorIcon: View for Sensor is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->show()V

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsAlphaMaskStandAlone:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->hide()V

    :cond_1
    return-void
.end method

.method clearMaskType(I)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    return-void
.end method

.method handleOverlayMaskView(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsPrompt:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHasBackgroundLayer:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->show()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsKeyguard:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsScreenOn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v1, "handleOverlayMaskView: Keyguard & Screen ON : SKIP THIS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->hide()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v1, "handleOverlayMaskView: Prompt or Background : SKIP THIS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method handleScreenEvent(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsScreenOn:Z

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleScreenEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "ON"

    goto :goto_0

    :cond_0
    const-string v2, "OFF"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->show()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsDozeByFinger:Z

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->handleScreenEvent(Z)V

    :cond_4
    return-void
.end method

.method handleSensorView(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSensorView: called with: showState = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsPaused:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string v1, "handleSensorView: Paused, Skip this"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->setVisibilityForIcon(I)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    invoke-virtual {v2, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->setVisibilityForIcon(I)V

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->setVisibility(I)V

    :cond_7
    :goto_0
    return-void
.end method

.method handleTouchEvent(Z)V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchEvent: called with: down = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsPaused:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchEvent: Paused, Skip this, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x4e21

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->show()V

    :cond_3
    const/16 v0, 0x4e23

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->handleSensorView(Z)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x4e22

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->handleSensorView(Z)V

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBiometricPromptReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBiometricPromptReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-interface {v1, v0}, Landroid/hardware/biometrics/IBiometricPromptReceiver;->onDialogDismissed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_2

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to send event"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method hasMaskType(I)Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hideFingerprintGuideView(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsScreenOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    return-void
.end method

.method isKeepInstance()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public moveFingerIcon(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->moveIcon(II)V

    :cond_0
    return-void
.end method

.method pauseIcon()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsPaused:Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->setVisibility(I)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method removeAlphaMask()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    :cond_0
    return-void
.end method

.method removeGreenIcon()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    :cond_0
    return-void
.end method

.method removeSensorIcon()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    :cond_0
    return-void
.end method

.method resetMessage(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->resetMessage()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->resetMessage()V

    :cond_1
    :goto_0
    return-void
.end method

.method resumeIcon()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsPaused:Z

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->setVisibility(I)V

    :cond_0
    sget-boolean v1, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method setVisibleForAlphaMask(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->hide()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->show()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mLightSourceLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$LightSourceLayer;->hide()V

    :cond_3
    :goto_1
    return-void
.end method

.method show()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show : start,  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsPaused:Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/SemStatusBarManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SemStatusBarManager;

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateRotationInfo()V

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->addBackgroundAuthLayer()V

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->addHelpMsgLayerForAOD()V

    sget-boolean v1, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->FEATURE_SENSOR_IS_OPTICAL:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->hasMaskType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->setVisibleForAlphaMask(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->addSensorIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->addAlphaMask()V

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->addGreenIcon()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->addSensorIcon()V

    :goto_0
    return v2
.end method

.method showAlphaSA()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showAlphaSA: called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->updateRotationInfo()V

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->addSensorIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->addAlphaMask()V

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->addGreenIcon()V

    return-void
.end method

.method showErrorMessage(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHasBackgroundLayer:Z

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->showTemporaryMessage(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method showHelpMessage(ILjava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsKeyguard:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsScreenOn:Z

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->semGetAcquiredString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->showHelpMessageOnAod(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHasBackgroundLayer:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->showTemporaryMessage(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method showHelpMessageOnAod(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showHelpMessageOnAod: called with: message = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->showHelpMessage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method startDismiss()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDismiss : start, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsPaused:Z

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsKeyguard:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;->dismiss()V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAodFeedbackLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AodFeedbackLayer;

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHasBackgroundLayer:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;->dismiss()V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBackgroundLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$BackgroundLayer;

    :cond_1
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->hasMaskType(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->setVisibleForAlphaMask(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->removeGreenIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->removeSensorIcon()V

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->removeAlphaMask()V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startDismiss : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5
    sget-boolean v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->DEBUG:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDismiss: end, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mAlphaMaskLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$AlphaMaskLayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method startIconAnimation(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsKeyguard:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mSensorGuideLayer:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->startAnimation()V

    :cond_2
    return-void
.end method

.method updaterClientInfo(Landroid/os/Bundle;IZLandroid/hardware/biometrics/IBiometricPromptReceiver;)V
    .locals 3

    iput-object p4, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mBiometricPromptReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsPaused:Z

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsAlphaMaskStandAlone:Z

    const-string/jumbo v1, "token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mToken:Landroid/os/IBinder;

    iget v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    or-int/2addr v1, p2

    iput v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mMaskType:I

    iput-boolean p3, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsPrompt:Z

    const-string/jumbo v1, "sem_adaptive_icon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsAdaptiveIconEnabled:Z

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHasBackgroundLayer:Z

    and-int/lit8 v1, p2, 0x10

    if-eqz v1, :cond_1

    move v0, v2

    nop

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mIsKeyguard:Z

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->loadResource()Z

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->setBroadcastReceiverForTSP()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$1;-><init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_2
    return-void
.end method
