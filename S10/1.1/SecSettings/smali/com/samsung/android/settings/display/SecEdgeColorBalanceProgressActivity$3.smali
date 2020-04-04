.class Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;
.super Landroid/os/Handler;
.source "SecEdgeColorBalanceProgressActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x63

    const/4 v2, 0x1

    const/16 v3, 0x64

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iput v3, v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->currentPos:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget v0, v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->currentPos:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$000(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)I

    move-result v0

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget v4, v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->currentPos:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->currentPos:I

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget v0, v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->currentPos:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$400(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipEdgeColorBalance(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$100(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "SecEdgeColorBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stpoc] complete progress due to : D2 short:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$100(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " / SecDisplayUtils.isPocDream1NA() : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$400(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipEdgeColorBalance(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SecEdgeColorBalanceProgressActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[stpoc] complete progress DB result : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$000(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/display/DisplayLog;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$002(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iput v3, v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->currentPos:I

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget v0, v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->currentPos:I

    if-le v0, v3, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$500(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "100%"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget-object v0, v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget v1, v1, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->currentPos:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->access$500(Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget v2, v2, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->currentPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    iget v0, v0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->currentPos:I

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity$3;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceProgressActivity;->finishReadEdgeColor()V

    :cond_5
    return-void
.end method
