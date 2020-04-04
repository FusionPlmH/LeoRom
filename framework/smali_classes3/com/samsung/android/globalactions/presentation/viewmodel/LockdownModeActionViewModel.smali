.class public Lcom/samsung/android/globalactions/presentation/viewmodel/LockdownModeActionViewModel;
.super Ljava/lang/Object;
.source "LockdownModeActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

.field private mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field private final mLockPatternUtilsWrapper:Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

.field private final mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LockdownModeActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LockdownModeActionViewModel;->mLockPatternUtilsWrapper:Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LockdownModeActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LockdownModeActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public onLongPress()V
    .locals 0

    return-void
.end method

.method public onPress()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LockdownModeActionViewModel;->mSAnalytics:Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;

    const-string v1, "611"

    const-string v2, "6111"

    const-string v3, "Lock down"

    const-wide/16 v4, 0x4

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/globalactions/util/SecGlobalActionsAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LockdownModeActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->dismissDialog(Z)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LockdownModeActionViewModel;->mLockPatternUtilsWrapper:Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/LockPatternUtilsWrapper;->lockDownDelayed(I)V

    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/LockdownModeActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-void
.end method
