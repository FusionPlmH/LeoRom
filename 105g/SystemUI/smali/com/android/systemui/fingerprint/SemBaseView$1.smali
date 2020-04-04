.class Lcom/android/systemui/fingerprint/SemBaseView$1;
.super Ljava/lang/Object;
.source "SemBaseView.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fingerprint/SemBaseView;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fingerprint/SemBaseView;


# direct methods
.method constructor <init>(Lcom/android/systemui/fingerprint/SemBaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fingerprint/SemBaseView$1;->this$0:Lcom/android/systemui/fingerprint/SemBaseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onViewAttachedToWindow$0(Lcom/android/systemui/fingerprint/SemBaseView$1;)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemBaseView;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView$1;->this$0:Lcom/android/systemui/fingerprint/SemBaseView;

    const-string v1, "dismiss: try again."

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/SemBaseView;->logd(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView$1;->this$0:Lcom/android/systemui/fingerprint/SemBaseView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemBaseView;->dismiss()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView$1;->this$0:Lcom/android/systemui/fingerprint/SemBaseView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onViewAttachedToWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/SemBaseView$1;->this$0:Lcom/android/systemui/fingerprint/SemBaseView;

    invoke-static {v2}, Lcom/android/systemui/fingerprint/SemBaseView;->access$000(Lcom/android/systemui/fingerprint/SemBaseView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/SemBaseView;->logi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView$1;->this$0:Lcom/android/systemui/fingerprint/SemBaseView;

    invoke-static {v0}, Lcom/android/systemui/fingerprint/SemBaseView;->access$000(Lcom/android/systemui/fingerprint/SemBaseView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView$1;->this$0:Lcom/android/systemui/fingerprint/SemBaseView;

    iget-object v0, v0, Lcom/android/systemui/fingerprint/SemBaseView;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fingerprint/-$$Lambda$SemBaseView$1$nuHv4TBhcrK4VvrRxisBRa7fd5E;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$SemBaseView$1$nuHv4TBhcrK4VvrRxisBRa7fd5E;-><init>(Lcom/android/systemui/fingerprint/SemBaseView$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView$1;->this$0:Lcom/android/systemui/fingerprint/SemBaseView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/SemBaseView;->updateViewLayout()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/fingerprint/SemBaseView;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/SemBaseView$1;->this$0:Lcom/android/systemui/fingerprint/SemBaseView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onViewDetachedFromWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/SemBaseView;->logi(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
