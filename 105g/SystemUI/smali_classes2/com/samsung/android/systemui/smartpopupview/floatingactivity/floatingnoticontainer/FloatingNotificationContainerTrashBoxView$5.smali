.class Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView$5;
.super Ljava/lang/Object;
.source "FloatingNotificationContainerTrashBoxView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView;->animateToHideTrashBoxGroupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView$5;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView$5;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView$5;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView;

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView;->clearAllAnimations()V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView$5;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView;->access$900(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerPolicyController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerPolicyController;->setTrashBoxShownState(Z)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView$5;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView;->access$900(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerTrashBoxView;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerPolicyController;

    move-result-object v0

    const-string v1, "fullscreen_mode_request_trash_box"

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerPolicyController;->closeFullscreenMode(Ljava/lang/String;)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
