.class Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SemSetOnLongClickDragable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const-string v1, "RemoteViews"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Drag info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v3, v3, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->clipData:Landroid/content/ClipData;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v3, v3, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-boolean v3, v3, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->isNeedToRemove:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v1, v1, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->clipData:Landroid/content/ClipData;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    iget-object v1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v1, v1, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragStartIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-object v1, v1, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->dragStartIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    const/high16 v6, 0x10000000

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RemoteViews"

    const-string v3, "Cannot send pending intent: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/RemoteViews$SemSetOnLongClickDragable$1;->this$1:Landroid/widget/RemoteViews$SemSetOnLongClickDragable;

    iget-boolean v1, v1, Landroid/widget/RemoteViews$SemSetOnLongClickDragable;->isNeedToRemove:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v1, 0x1

    return v1
.end method
