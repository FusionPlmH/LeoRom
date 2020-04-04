.class public Lcom/samsung/android/globalactions/features/BikeModeStrategy;
.super Ljava/lang/Object;
.source "BikeModeStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/ActionsCreationStrategy;


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field private final mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;Lcom/samsung/android/globalactions/util/ConditionChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/features/BikeModeStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    iput-object p2, p0, Lcom/samsung/android/globalactions/features/BikeModeStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    return-void
.end method

.method static synthetic lambda$onCreateActions$0(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 0

    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;->updateState()V

    return-void
.end method


# virtual methods
.method public onCreateActions(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/BikeModeStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_BIKE_MODE_INSTALLED:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/BikeModeStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_ULTRA_POWER_SAVING_MODE:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/BikeModeStrategy;->mViewModelFactory:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;

    const-string v1, "bike_mode"

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModelFactory;->createActionViewModel(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Ljava/lang/String;)Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->addAction(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    const-string v1, "isBikeMode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/globalactions/features/-$$Lambda$BikeModeStrategy$PVgo2LEG-5GQHTRz_5eyRcagdSs;

    invoke-direct {v2, v0}, Lcom/samsung/android/globalactions/features/-$$Lambda$BikeModeStrategy$PVgo2LEG-5GQHTRz_5eyRcagdSs;-><init>(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;)V

    invoke-interface {p1, v1, v2}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->registerContentObserver(Landroid/net/Uri;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
