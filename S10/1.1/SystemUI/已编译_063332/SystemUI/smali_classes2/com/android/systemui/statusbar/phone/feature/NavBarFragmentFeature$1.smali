.class Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;
.super Ljava/lang/Object;
.source "NavBarFragmentFeature.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;IILcom/android/systemui/statusbar/phone/StatusBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

.field final synthetic val$statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->val$statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$000(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$200(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->repositionNavigationBar()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->val$statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$000(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/cover/CoverHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/cover/CoverHost;

    invoke-interface {v0}, Lcom/android/systemui/cover/CoverHost;->isCoverViewShowing()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$200(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getDisabledFlags1()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWakeAndUnlocking(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$000(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/cover/CoverHost;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/cover/CoverHost;

    invoke-interface {v0}, Lcom/android/systemui/cover/CoverHost;->isCoverViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->this$0:Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;->access$100(Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->val$statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavbarFeature()Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->getKnoxNavbarHiddenChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/feature/NavBarFragmentFeature$1;->val$statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavbarFeature()Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/feature/StatusBarNavBarFeature;->updateNavigationBarHidden()V

    :cond_2
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
