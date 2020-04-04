.class public Lcom/samsung/android/globalactions/features/SafetyCareStrategy;
.super Ljava/lang/Object;
.source "SafetyCareStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;


# static fields
.field private static final TAG:Ljava/lang/String; = "SafetyCareStrategy"


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

.field mIsFirstEmergencyActionCheck:Z

.field mLastEmergencyActionResult:Z

.field private final mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/LogWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    iput-object p2, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p3, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mIsFirstEmergencyActionCheck:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLastEmergencyActionResult:Z

    return-void
.end method


# virtual methods
.method public onCreateEmergencyAction()Z
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mIsFirstEmergencyActionCheck:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mIsFirstEmergencyActionCheck:Z

    iget-object v1, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_DOMESTIC_OTA_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v2, "SafetyCareStrategy"

    const-string v3, "EmergenceyMode is disable on OTA mode."

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactions/util/LogWrapper;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLastEmergencyActionResult:Z

    iget-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLastEmergencyActionResult:Z

    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_MISSING_PHONE_LOCK:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->CAN_SET_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_UPSM_ENABLED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_KIDS_HOME_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_COM_CONTAINER_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLastEmergencyActionResult:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLastEmergencyActionResult:Z

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLastEmergencyActionResult:Z

    return v0
.end method

.method public onInitialize(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_MODIFYING:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mLogWrapper:Lcom/samsung/android/globalactions/util/LogWrapper;

    const-string v1, "SafetyCareStrategy"

    const-string v2, "Cannot use Global Action because Emergency mode entering.."

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/LogWrapper;->elog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/SafetyCareStrategy;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->setDisabled()V

    :cond_0
    return-void
.end method
