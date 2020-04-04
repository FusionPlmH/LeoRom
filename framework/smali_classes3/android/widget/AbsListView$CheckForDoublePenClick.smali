.class final Landroid/widget/AbsListView$CheckForDoublePenClick;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForDoublePenClick"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;

.field x:I

.field y:I


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$CheckForDoublePenClick;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$2500(Landroid/widget/AbsListView;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$2600(Landroid/widget/AbsListView;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mChoiceMode:I

    if-ne v1, v4, :cond_5

    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$2700(Landroid/widget/AbsListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v5, v6}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget v1, v1, Landroid/widget/AbsListView;->mChoiceMode:I

    const/4 v3, 0x1

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v1, :cond_3

    if-ne v0, v3, :cond_3

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v5, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v5, v5, Landroid/widget/AbsListView;->mMultiChoiceModeCallback:Landroid/widget/AbsListView$MultiChoiceModeWrapper;

    invoke-virtual {v4, v5}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v4

    iput-object v4, v1, Landroid/widget/AbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    :cond_3
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$2800(Landroid/widget/AbsListView;)Z

    move-result v1

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mSemMultiSelectionListener:Landroid/widget/AdapterView$SemMultiSelectionListener;

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$2700(Landroid/widget/AbsListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v7

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_4
    goto :goto_2

    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    iget v3, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->x:I

    iget v4, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->y:I

    invoke-static {v1, v3, v4}, Landroid/widget/AbsListView;->access$2900(Landroid/widget/AbsListView;II)V

    :cond_6
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1}, Landroid/widget/AbsListView;->access$2700(Landroid/widget/AbsListView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1, v2}, Landroid/widget/AbsListView;->access$2602(Landroid/widget/AbsListView;I)I

    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView$CheckForDoublePenClick;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1, v2}, Landroid/widget/AbsListView;->access$2502(Landroid/widget/AbsListView;Z)Z

    return-void
.end method
