.class public Lcom/samsung/android/globalactions/presentation/viewmodel/BugReportActionViewModel;
.super Ljava/lang/Object;
.source "BugReportActionViewModel.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/viewmodel/ActionViewModel;


# instance fields
.field private final mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

.field private mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

.field private final mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

.field private final mSystemController:Lcom/samsung/android/globalactions/util/SystemController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/globalactions/presentation/SecGlobalActions;Lcom/samsung/android/globalactions/util/SystemController;Lcom/samsung/android/globalactions/util/ResourcesWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BugReportActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    iput-object p2, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BugReportActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    iput-object p3, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BugReportActionViewModel;->mResourcesWrapper:Lcom/samsung/android/globalactions/util/ResourcesWrapper;

    return-void
.end method


# virtual methods
.method public getActionInfo()Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BugReportActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-object v0
.end method

.method public onLongPress()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BugReportActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/SystemController;->doBugReport(Z)V

    return-void
.end method

.method public onPress()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BugReportActionViewModel;->mSystemController:Lcom/samsung/android/globalactions/util/SystemController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/globalactions/util/SystemController;->doBugReport(Z)V

    iget-object v0, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BugReportActionViewModel;->mGlobalActions:Lcom/samsung/android/globalactions/presentation/SecGlobalActions;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/globalactions/presentation/SecGlobalActions;->dismissDialog(Z)V

    return-void
.end method

.method public setActionInfo(Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/globalactions/presentation/viewmodel/BugReportActionViewModel;->mInfo:Lcom/samsung/android/globalactions/presentation/viewmodel/ActionInfo;

    return-void
.end method
