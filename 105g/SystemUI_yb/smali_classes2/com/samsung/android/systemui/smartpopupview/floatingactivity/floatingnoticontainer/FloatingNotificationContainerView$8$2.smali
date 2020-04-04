.class Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView$8$2;
.super Ljava/lang/Object;
.source "FloatingNotificationContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView$8;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView$8;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView$8;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView$8$2;->this$1:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView$8$2;->this$1:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView$8;

    iget-object v0, v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView$8;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView;->access$2700(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView;)Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerManager;->removeAllNotifications()V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView$8$2;->this$1:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView$8;

    iget-object v0, v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView$8;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView;

    invoke-static {v0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView;->access$2800(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView;)V

    return-void
.end method
