.class public final Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayPowerRequest"
.end annotation


# static fields
.field public static final POLICY_BRIGHT:I = 0x3

.field public static final POLICY_DIM:I = 0x2

.field public static final POLICY_DOZE:I = 0x1

.field public static final POLICY_OFF:I = 0x0

.field public static final POLICY_VR:I = 0x4


# instance fields
.field public autoBrightnessLowerLimit:I

.field public autoBrightnessUpperLimit:I

.field public batteryLevel:I

.field public batteryLevelCritical:Z

.field public blockScreenOn:Z

.field public boostScreenBrightness:Z

.field public coverClosed:Z

.field public dozeScreenBrightness:I

.field public dozeScreenState:I

.field public dualScreenPolicy:I

.field public earlyWakeUp:Z

.field public forceLcdBacklightOffEnabled:Z

.field public forceSlowChange:Z

.field public internalDisplayOff:Z

.field public isOutdoorMode:Z

.field public isPowered:Z

.field public lastGoToSleepReason:I

.field public lcdFlashMode:Z

.field public lowPowerMode:Z

.field public mFTAMode:Z

.field public maxBrightness:I

.field public minBrightness:I

.field public policy:I

.field public proximityNegativeDebounce:I

.field public proximityPositiveDebounce:I

.field public screenAutoBrightnessAdjustmentOverride:F

.field public screenBrightnessOverride:I

.field public screenBrightnessScaleFactor:F

.field public screenLowPowerBrightnessFactor:F

.field public useAutoBrightness:Z

.field public useClearViewBrightnessMode:Z

.field public useColorWeaknessMode:Z

.field public useProximitySensor:Z

.field public wakeUpEvenThoughProximityPositive:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    const/4 v2, 0x3

    iput v2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustmentOverride:F

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    return-void
.end method

.method private floatEquals(FF)Z
    .locals 1

    cmpl-float v0, p1, p2

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

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

.method public static policyToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "VR"

    return-object v0

    :pswitch_1
    const-string v0, "BRIGHT"

    return-object v0

    :pswitch_2
    const-string v0, "DIM"

    return-object v0

    :pswitch_3
    const-string v0, "DOZE"

    return-object v0

    :pswitch_4
    const-string v0, "OFF"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 1

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustmentOverride:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustmentOverride:F

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->internalDisplayOff:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->internalDisplayOff:Z

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useClearViewBrightnessMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useClearViewBrightnessMode:Z

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useColorWeaknessMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useColorWeaknessMode:Z

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    return-void
.end method

.method public equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustmentOverride:F

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustmentOverride:F

    invoke-direct {p0, v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->internalDisplayOff:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->internalDisplayOff:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useClearViewBrightnessMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useClearViewBrightnessMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useColorWeaknessMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useColorWeaknessMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    iget v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    iget-boolean v1, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isBrightOrDim()Z
    .locals 2

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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

.method public isVr()Z
    .locals 2

    iget v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-static {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", useProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", screenBrightnessOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", screenAutoBrightnessAdjustmentOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustmentOverride:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", screenLowPowerBrightnessFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", blockScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lowPowerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", boostScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dozeScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dozeScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", autoBrightnessLowerLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", autoBrightnessUpperLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", forceSlowChange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastGoToSleepReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wakeUpEvenThoughProximityPositive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", proximityPositiveDebounce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proximityNegativeDebounce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", coverClosed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", FTAMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", batteryLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", internalDisplayOff ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->internalDisplayOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dualScreenPolicy ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", useClearViewBrightnessMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useClearViewBrightnessMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useColorWeaknessMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useColorWeaknessMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", lcdFlashMode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOutdoorMode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", screenBrightnessScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", forceLcdBacklightOffEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", batteryLevelCritical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPowered="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", earlyWakeUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
