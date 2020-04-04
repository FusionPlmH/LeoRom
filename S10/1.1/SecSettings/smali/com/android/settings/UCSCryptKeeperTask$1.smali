.class Lcom/android/settings/UCSCryptKeeperTask$1;
.super Ljava/lang/Object;
.source "UCSCryptKeeperTask.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UCSCryptKeeperTask;->passwordEntryInitForUCS()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UCSCryptKeeperTask;


# direct methods
.method constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$1;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$1;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->access$600(Lcom/android/settings/UCSCryptKeeperTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$1;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v0, v0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    invoke-virtual {v0}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$1;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v0, v0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    invoke-virtual {v0}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$1;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const v1, 0x7f121a97

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$1;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->access$702(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
