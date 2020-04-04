.class Landroid/widget/Editor$InsertionHandleView$1;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$InsertionHandleView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$InsertionHandleView;


# direct methods
.method constructor <init>(Landroid/widget/Editor$InsertionHandleView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Editor$InsertionHandleView$1;->this$1:Landroid/widget/Editor$InsertionHandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->VIEWROOT_REMOTE_IM_ANIM:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView$1;->this$1:Landroid/widget/Editor$InsertionHandleView;

    iget-object v0, v0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isRemoteImAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView$1;->this$1:Landroid/widget/Editor$InsertionHandleView;

    iget-object v0, v0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isShownSoftInput()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView$1;->this$1:Landroid/widget/Editor$InsertionHandleView;

    iget-object v0, v0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startInsertionActionMode()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView$1;->this$1:Landroid/widget/Editor$InsertionHandleView;

    iget-object v0, v0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setWaitMode(IZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$InsertionHandleView$1;->this$1:Landroid/widget/Editor$InsertionHandleView;

    iget-object v0, v0, Landroid/widget/Editor$InsertionHandleView;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->startInsertionActionMode()V

    :goto_0
    return-void
.end method
