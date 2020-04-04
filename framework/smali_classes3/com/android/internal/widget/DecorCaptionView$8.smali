.class Lcom/android/internal/widget/DecorCaptionView$8;
.super Ljava/lang/Object;
.source "DecorCaptionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/DecorCaptionView;->showResizeDialogForCompatMode(Landroid/view/Window$WindowControllerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/DecorCaptionView;

.field final synthetic val$callback:Landroid/view/Window$WindowControllerCallback;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/DecorCaptionView;Landroid/view/Window$WindowControllerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView$8;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    iput-object p2, p0, Lcom/android/internal/widget/DecorCaptionView$8;->val$callback:Landroid/view/Window$WindowControllerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$8;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$1100(Lcom/android/internal/widget/DecorCaptionView;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$8;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    invoke-static {v0}, Lcom/android/internal/widget/DecorCaptionView;->access$1100(Lcom/android/internal/widget/DecorCaptionView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$8;->this$0:Lcom/android/internal/widget/DecorCaptionView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->access$1202(Lcom/android/internal/widget/DecorCaptionView;Z)Z

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView$8;->val$callback:Landroid/view/Window$WindowControllerCallback;

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->exitFreeformMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DecorCaptionView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException occurred when calling exitFreeformMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
