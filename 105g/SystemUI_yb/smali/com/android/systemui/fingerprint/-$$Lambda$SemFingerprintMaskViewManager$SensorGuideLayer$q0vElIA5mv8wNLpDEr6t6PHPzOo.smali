.class public final synthetic Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$SensorGuideLayer$q0vElIA5mv8wNLpDEr6t6PHPzOo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

.field private final synthetic f$1:F

.field private final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$SensorGuideLayer$q0vElIA5mv8wNLpDEr6t6PHPzOo;->f$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    iput p2, p0, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$SensorGuideLayer$q0vElIA5mv8wNLpDEr6t6PHPzOo;->f$1:F

    iput p3, p0, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$SensorGuideLayer$q0vElIA5mv8wNLpDEr6t6PHPzOo;->f$2:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$SensorGuideLayer$q0vElIA5mv8wNLpDEr6t6PHPzOo;->f$0:Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;

    iget v1, p0, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$SensorGuideLayer$q0vElIA5mv8wNLpDEr6t6PHPzOo;->f$1:F

    iget v2, p0, Lcom/android/systemui/fingerprint/-$$Lambda$SemFingerprintMaskViewManager$SensorGuideLayer$q0vElIA5mv8wNLpDEr6t6PHPzOo;->f$2:F

    invoke-static {v0, v1, v2}, Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;->lambda$moveIcon$0(Lcom/android/systemui/fingerprint/SemFingerprintMaskViewManager$SensorGuideLayer;FF)V

    return-void
.end method
