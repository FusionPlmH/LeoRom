.class public Lcom/android/settings/UCSCryptKeeperTask$StateMachine;
.super Ljava/lang/Object;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UCSCryptKeeperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field protected state:I

.field final synthetic this$0:Lcom/android/settings/UCSCryptKeeperTask;


# direct methods
.method public constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->ENTER_PUK:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->ENTER_PIN:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->CONFIRM_PIN:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->DONE:I

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    return v0
.end method

.method public next()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    sget-object v3, Lcom/samsung/android/settings/ucm/UCMUtils;->miscInfo:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/settings/UCSCryptKeeperTask;->access$200(Lcom/android/settings/UCSCryptKeeperTask;Ljava/lang/String;I)V

    iget v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const/4 v3, 0x1

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v2}, Lcom/android/settings/UCSCryptKeeperTask;->checkPuk()Z

    move-result v2

    if-eqz v2, :cond_0

    iput v3, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const v0, 0x7f121acb

    goto :goto_0

    :cond_0
    const v0, 0x7f121ad2

    :goto_0
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v2, v3}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto :goto_2

    :cond_1
    iget v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const/4 v4, 0x2

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v2}, Lcom/android/settings/UCSCryptKeeperTask;->checkPin()Z

    move-result v2

    if-eqz v2, :cond_2

    iput v4, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const v0, 0x7f121ac8

    goto :goto_1

    :cond_2
    const v0, 0x7f121acc

    :goto_1
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v2, v3}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto :goto_2

    :cond_3
    iget v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v2}, Lcom/android/settings/UCSCryptKeeperTask;->confirmPin()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const v0, 0x7f1204bb

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v2}, Lcom/android/settings/UCSCryptKeeperTask;->access$300(Lcom/android/settings/UCSCryptKeeperTask;)V

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v2, v3}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto :goto_2

    :cond_4
    iput v3, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const v0, 0x7f120d8d

    const v1, 0x7f121acb

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v2}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v2, v3}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    :goto_2
    if-eqz v0, :cond_7

    if-eqz v1, :cond_6

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v4}, Lcom/android/settings/UCSCryptKeeperTask;->access$500(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v4}, Lcom/android/settings/UCSCryptKeeperTask;->access$500(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v2, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    :cond_7
    :goto_3
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v2}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v2}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v2}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$1;

    invoke-direct {v3, p0}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$1;-><init>(Lcom/android/settings/UCSCryptKeeperTask$StateMachine;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    return-void
.end method

.method varargs reset([I)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    iget v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const v3, 0x7f121ace

    aget v4, p1, v1

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    :cond_0
    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$2;

    invoke-direct {v1, p0}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$2;-><init>(Lcom/android/settings/UCSCryptKeeperTask$StateMachine;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
