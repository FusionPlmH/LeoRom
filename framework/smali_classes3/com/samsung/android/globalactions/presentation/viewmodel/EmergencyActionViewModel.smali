.class public Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;
.super Ljava/lang/Object;
.source "EmergencyActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

.field private final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

.field private mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field private final mKeyguardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

.field private final mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

.field private final mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

.field private final mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

.field private final mToastController:Lcom/samsung/android/globalactions/util/ToastController;

.field private mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;Lcom/samsung/android/globalactions/util/SystemController;Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

    iput-object p4, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p5, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iput-object p6, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mKeyguardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    iput-object p7, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iput-object p8, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    return-void
.end method

.method private isNeedSecureConfirm()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_RMM_LOCKED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SIM_LOCK:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SECURE_KEYGUARD:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_LOCK_NETWORK_AND_SECURITY:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public getState()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    return-object v0
.end method

.method public onPress()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createActionInteractionStrategies(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;

    invoke-interface {v2}, Lcom/samsung/android/globalactions/presentation/strategies/ActionInteractionStrategy;->onPressEmergencyModeAction()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v2, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FMM_LOCKED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v4, 0x10403d8

    invoke-virtual {v3, v4}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->isNeedSecureConfirm()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mFeatureFactory:Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {v2}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/features/FeatureFactory;->createSecureConfirmStrategy(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;

    invoke-interface {v3}, Lcom/samsung/android/globalactions/presentation/strategies/SecureConfirmStrategy;->doActionBeforeSecureConfirm()V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    invoke-interface {v2, p0}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->registerSecureConfirmAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mKeyguardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    const-string v3, "emergencymode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setPendingIntentAfterUnlock(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    invoke-interface {v2}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->hideDialogOnSecureConfirm()V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    invoke-interface {v1, v2}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->dismissDialog(Z)V

    iget-object v3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

    const-string v4, "611"

    const-string v5, "6111"

    const-string v6, "Emergency mode"

    const-wide/16 v7, 0x3

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    invoke-virtual {v1}, Lcom/samsung/android/globalactions/util/SystemController;->toggleEmergencyMode()V

    return-void
.end method

.method public onPressSecureConfirm()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->dismissDialog(Z)V

    iget-object v2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

    const-string v3, "611"

    const-string v4, "6111"

    const-string v5, "Emergency mode"

    const-wide/16 v6, 0x3

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/SystemController;->toggleEmergencyMode()V

    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->setStateLabel()V

    return-void
.end method

.method public setState(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    return-void
.end method

.method public setStateLabel()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_EMERGENCY_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->on:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v2, 0x10403a5

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;->off:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    iput-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mToggleState:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel$ToggleState;

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/EmergencyActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v2, 0x10403a4

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;->setStateLabel(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
