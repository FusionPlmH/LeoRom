.class public Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;
.super Ljava/lang/Object;
.source "SafeModeActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

.field private mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field private final mKeyguardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

.field private final mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

.field private final mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

.field private final mToastController:Lcom/samsung/android/globalactions/util/ToastController;

.field private final mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SecGlobalActionsManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/presentation/SecGlobalActionsManager;Lcom/samsung/android/globalactions/util/ConditionChecker;Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;Lcom/samsung/android/globalactions/util/ResourcesWrapper;Lcom/samsung/android/globalactions/util/ToastController;Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SecGlobalActionsManager;

    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    iput-object p4, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mKeyguardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    iput-object p5, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    iput-object p6, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iput-object p7, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

    return-void
.end method

.method private isNeedSecureConfirm()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_RMM_LOCKED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SIM_LOCK:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_SECURE_KEYGUARD:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_LOCK_NETWORK_AND_SECURITY:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_ENCRYPTION_STATUS_ACTIVE:Lcom/samsung/android/globalactions/util/SystemConditions;

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

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public onPress()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_FMM_LOCKED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mToastController:Lcom/samsung/android/globalactions/util/ToastController;

    iget-object v1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    const v2, 0x10403dc

    invoke-virtual {v1, v2}, Lcom/samsung/android/globalactions/util/ResourcesWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/globalactions/util/ToastController;->showToast(Ljava/lang/String;I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->isNeedSecureConfirm()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    invoke-interface {v0, p0}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->registerSecureConfirmAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mKeyguardManagerWrapper:Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;

    const-string/jumbo v1, "shutdown"

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/KeyGuardManagerWrapper;->setPendingIntentAfterUnlock(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->hideDialogOnSecureConfirm()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->safeMode()V

    return-void
.end method

.method public onPressSecureConfirm()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->safeMode()V

    return-void
.end method

.method public safeMode()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

    const-string v1, "612"

    const-string v2, "6121"

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mWindowManagerFuncs:Lcom/samsung/android/globalactions/presentation/SecGlobalActionsManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/SecGlobalActionsManager;->reboot(Z)V

    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/SafeModeActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
