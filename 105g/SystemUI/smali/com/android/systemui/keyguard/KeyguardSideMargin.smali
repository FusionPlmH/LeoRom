.class public Lcom/android/systemui/keyguard/KeyguardSideMargin;
.super Ljava/lang/Object;
.source "KeyguardSideMargin.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field private static final sInstance:Lcom/android/systemui/keyguard/KeyguardSideMargin;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCutoutPadding:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSideMargin;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/KeyguardSideMargin;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->sInstance:Lcom/android/systemui/keyguard/KeyguardSideMargin;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mCutoutPadding:I

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/keyguard/KeyguardSideMargin;
    .locals 1

    sget-object v0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->sInstance:Lcom/android/systemui/keyguard/KeyguardSideMargin;

    return-object v0
.end method

.method public static getTabletClockSidePadding(IZ)I
    .locals 2

    int-to-float v0, p0

    if-eqz p1, :cond_0

    const v1, 0x3e3851ec    # 0.18f

    goto :goto_0

    :cond_0
    const v1, 0x3d99999a    # 0.075f

    :goto_0
    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private isInDisplayFpSensorPositionHigh()Z
    .locals 4

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_0
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :goto_1
    sget v2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SEC_IN_DISPLAY_FINGERPRINT_HEIGHT:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    const v3, 0x3e6b851f    # 0.23f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isLandscape()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private update(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "  KeyguardSideMargin"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      FingerPrint in display Area: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getFingerPrintInDisplay(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      isFingerPrintInDisplay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->isFingerPrintInDisplay()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      Cutout Padding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mCutoutPadding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getClockSidePadding(Landroid/content/Context;)I
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->update(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->isLandscape()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getTabletClockSidePadding(IZ)I

    move-result v1

    return v1

    :cond_0
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->isFingerPrintInDisplay()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->getFingerPrintInDisplay(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e25e354    # 0.162f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mCutoutPadding:I

    sub-int/2addr v1, v2

    :goto_0
    return v1

    :cond_2
    const v1, 0x7f07073a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method public getCutoutPadding()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mCutoutPadding:I

    return v0
.end method

.method public getFingerPrintInDisplay(Landroid/content/Context;)I
    .locals 3

    sget v0, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SEC_IN_DISPLAY_FINGERPRINT_HEIGHT:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07073b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mCutoutPadding:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/keyguard/KeyguardSideMargin;->isInDisplayFpSensorPositionHigh()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget v2, Lcom/android/systemui/Rune;->SECURITY_SUPPORT_SEC_IN_DISPLAY_FINGERPRINT_IMAGE_SIZE:I

    sub-int/2addr v0, v2

    :cond_0
    return v0
.end method

.method public isFingerPrintInDisplay()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/Rune;->isFingerprintSensorInDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setCutoutPadding(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mCutoutPadding:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isDisplayCutoutHideNotch()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput p1, p0, Lcom/android/systemui/keyguard/KeyguardSideMargin;->mCutoutPadding:I

    :cond_2
    return-void
.end method
