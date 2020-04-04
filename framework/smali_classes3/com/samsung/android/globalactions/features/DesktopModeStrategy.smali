.class public Lcom/samsung/android/globalactions/features/DesktopModeStrategy;
.super Ljava/lang/Object;
.source "DesktopModeStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;


# instance fields
.field private final mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field mContext:Landroid/content/Context;

.field mDesktopModeManager:Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

.field mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iput-object p3, p0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->mDesktopModeManager:Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iput-object p4, p0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    return-void
.end method

.method public static synthetic lambda$onInitialize$0(Lcom/samsung/android/globalactions/features/DesktopModeStrategy;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {v0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreateEmergencyAction()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_DESKTOP_MODE_DUAL_VIEW:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onDispose()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->mDesktopModeManager:Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->dispose()V

    return-void
.end method

.method public onInitialize(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->mDesktopModeManager:Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    new-instance v1, Lcom/samsung/android/globalactions/features/-$$Lambda$DesktopModeStrategy$tjYkoDHaH4IR7NoGVJo47ReaxP8;

    invoke-direct {v1, p0}, Lcom/samsung/android/globalactions/features/-$$Lambda$DesktopModeStrategy$tjYkoDHaH4IR7NoGVJo47ReaxP8;-><init>(Lcom/samsung/android/globalactions/features/DesktopModeStrategy;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->registerModeChangedListener(Ljava/lang/Runnable;)V

    return-void
.end method
