.class Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder$2;
.super Ljava/lang/Object;
.source "AppDockItemInfoViewHolder.java"

# interfaces
.implements Lcom/android/systemui/shared/dnd/DragAndDropHelper$DragClientListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;


# virtual methods
.method public onDragEnd(IZ)V
    .locals 5

    const-string/jumbo v0, "toWindowingMode=%d, forceFullPrimary=%b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/android/systemui/sidescreen/LogHelper;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder$2;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;

    invoke-static {v0}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->access$000(Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;)Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder$2;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;

    iget-object v1, v1, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/sidescreen/appdock/model/AppDockItemInfo;->startApp(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/sidescreen/appdock/event/DismissAppDockEvent;

    invoke-direct {v1}, Lcom/android/systemui/sidescreen/appdock/event/DismissAppDockEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/sidescreen/appdock/event/AppDockMinimizeEvent;

    invoke-direct {v1, v3}, Lcom/android/systemui/sidescreen/appdock/event/AppDockMinimizeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :goto_0
    return-void
.end method

.method public onDragStart()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/sidescreen/appdock/event/AppDockMinimizeEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/systemui/sidescreen/appdock/event/AppDockMinimizeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method
