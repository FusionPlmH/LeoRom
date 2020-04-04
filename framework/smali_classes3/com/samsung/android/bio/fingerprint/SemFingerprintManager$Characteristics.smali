.class public Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;
.super Ljava/lang/Object;
.source "SemFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Characteristics"
.end annotation


# static fields
.field public static final SENSOR_POSITION_HOME_KEY:I = 0x1

.field public static final SENSOR_POSITION_IN_DISPLAY:I = 0x2

.field public static final SENSOR_POSITION_POWER_KEY:I = 0x4

.field public static final SENSOR_POSITION_REAR:I = 0x3

.field public static final SENSOR_TYPE_CAPACITANCE:I = 0x1

.field public static final SENSOR_TYPE_OPTICAL:I = 0x2

.field public static final SENSOR_TYPE_ULTRASONIC:I = 0x3

.field private static final mConfig:Ljava/lang/String; = "google_touch_rear,navi=1"


# instance fields
.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method private constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    return-void
.end method


# virtual methods
.method public getMaxFingerprintCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetMaxEnrollmentNumber()I

    move-result v0

    return v0
.end method

.method public getSensorAreaInDisplay()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetFingerIconRectInDisplay()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getSensorPosition()I
    .locals 1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v0

    return v0
.end method

.method public getSensorType()I
    .locals 2

    const-string v0, "google_touch_rear,navi=1"

    const-string/jumbo v1, "ultrasonic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const-string v0, "google_touch_rear,navi=1"

    const-string/jumbo v1, "optical"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
