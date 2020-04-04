.class Lcom/android/systemui/sidescreen/appdock/AppDockWindow$EventBusObject;
.super Ljava/lang/Object;
.source "AppDockWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sidescreen/appdock/AppDockWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventBusObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/sidescreen/appdock/AppDockWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$EventBusObject;->this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBusEvent(Lcom/android/systemui/sidescreen/appdock/event/AppDataReloadedEvent;)V
    .locals 2

    const-string v0, "AppDataReloadedEvent"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/sidescreen/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$EventBusObject;->this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->get(Landroid/content/Context;)Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$EventBusObject;->this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader;->preload(Lcom/android/systemui/sidescreen/appdock/model/AppDockAppListLoader$LoadingTaskCallbacks;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/sidescreen/appdock/event/AppDockMinimizeEvent;)V
    .locals 4

    const-string v0, "AppDockMinimizeEvent : minimize=%b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-boolean v2, p1, Lcom/android/systemui/sidescreen/appdock/event/AppDockMinimizeEvent;->minimize:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/systemui/sidescreen/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$EventBusObject;->this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    iget-object v0, v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mSideView:Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;

    iget-boolean v1, p1, Lcom/android/systemui/sidescreen/appdock/event/AppDockMinimizeEvent;->minimize:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockSideView;->animateMinimize(Z)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/sidescreen/appdock/event/DismissAppDockEvent;)V
    .locals 2

    const-string v0, "DismissAppDockEvent"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/systemui/sidescreen/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$EventBusObject;->this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->startExitAnimation()V

    return-void
.end method
