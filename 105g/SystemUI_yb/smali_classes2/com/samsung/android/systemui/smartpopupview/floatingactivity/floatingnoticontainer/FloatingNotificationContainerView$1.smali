.class Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView$1;
.super Ljava/lang/Object;
.source "FloatingNotificationContainerView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView;


# direct methods
.method constructor <init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V
    .locals 2

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v0, p1, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView$1;->this$0:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView;

    invoke-static {v1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView;->access$000(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/floatingnoticontainer/FloatingNotificationContainerView;)Landroid/graphics/Region;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->setTouchableInsets(I)V

    return-void
.end method
