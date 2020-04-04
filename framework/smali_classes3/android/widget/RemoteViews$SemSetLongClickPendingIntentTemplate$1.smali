.class Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

.field final synthetic val$handler:Landroid/widget/RemoteViews$OnClickHandler;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

    iput-object p2, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    instance-of v0, p2, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v2, p1, Landroid/widget/AdapterViewAnimator;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    :cond_0
    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    nop

    :goto_0
    if-ge v3, v4, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x10202be

    invoke-virtual {v5, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Landroid/content/Intent;

    if-eqz v6, :cond_2

    move-object v2, v5

    check-cast v2, Landroid/content/Intent;

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    return v1

    :cond_4
    invoke-static {p2}, Landroid/widget/RemoteViews;->access$300(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    iget-object v6, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->val$handler:Landroid/widget/RemoteViews$OnClickHandler;

    iget-object v7, p0, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate$1;->this$1:Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;

    iget-object v7, v7, Landroid/widget/RemoteViews$SemSetLongClickPendingIntentTemplate;->pendingIntentTemplate:Landroid/app/PendingIntent;

    invoke-virtual {v6, p2, v7, v2}, Landroid/widget/RemoteViews$OnClickHandler;->onClickHandler(Landroid/view/View;Landroid/app/PendingIntent;Landroid/content/Intent;)Z

    :cond_5
    return v1
.end method
