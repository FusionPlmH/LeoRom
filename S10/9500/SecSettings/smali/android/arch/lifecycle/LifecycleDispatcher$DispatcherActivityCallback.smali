.class Landroid/arch/lifecycle/LifecycleDispatcher$DispatcherActivityCallback;
.super Landroid/arch/lifecycle/EmptyActivityLifecycleCallbacks;
.source "LifecycleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LifecycleDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DispatcherActivityCallback"
.end annotation


# instance fields
.field private final mFragmentCallback:Landroid/arch/lifecycle/LifecycleDispatcher$FragmentCallback;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/arch/lifecycle/EmptyActivityLifecycleCallbacks;-><init>()V

    new-instance v0, Landroid/arch/lifecycle/LifecycleDispatcher$FragmentCallback;

    invoke-direct {v0}, Landroid/arch/lifecycle/LifecycleDispatcher$FragmentCallback;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleDispatcher$DispatcherActivityCallback;->mFragmentCallback:Landroid/arch/lifecycle/LifecycleDispatcher$FragmentCallback;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Landroid/arch/lifecycle/LifecycleDispatcher$DispatcherActivityCallback;->mFragmentCallback:Landroid/arch/lifecycle/LifecycleDispatcher$FragmentCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentManager;->registerFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    :cond_0
    invoke-static {p1}, Landroid/arch/lifecycle/ReportFragment;->injectIfNeededIn(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v0, v1}, Landroid/arch/lifecycle/LifecycleDispatcher;->access$000(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/Lifecycle$State;)V

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->CREATED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v0, v1}, Landroid/arch/lifecycle/LifecycleDispatcher;->access$000(Landroid/support/v4/app/FragmentActivity;Landroid/arch/lifecycle/Lifecycle$State;)V

    :cond_0
    return-void
.end method
