.class Lcom/android/settings/UCSCryptKeeperTask$3;
.super Ljava/lang/Object;
.source "UCSCryptKeeperTask.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UCSCryptKeeperTask;
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

    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$3;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x6

    if-ne p2, v1, :cond_6

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    return v3

    :cond_1
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$3;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v2, v2, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    invoke-virtual {v2}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->getStatus()I

    move-result v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v2, v4, :cond_2

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$3;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v2}, Lcom/android/settings/UCSCryptKeeperTask;->access$600(Lcom/android/settings/UCSCryptKeeperTask;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ""

    invoke-static {v2}, Lcom/android/settings/UCSCryptKeeperTask;->access$702(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$3;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v2}, Lcom/android/settings/UCSCryptKeeperTask;->access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/android/settings/UCSCryptKeeperTask;->access$800()I

    move-result v4

    if-lt v2, v4, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {}, Lcom/android/settings/UCSCryptKeeperTask;->access$900()I

    move-result v4

    if-gt v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$3;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v2}, Lcom/android/settings/UCSCryptKeeperTask;->access$1000(Lcom/android/settings/UCSCryptKeeperTask;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask$3;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {v2, v4, v5}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$1;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v3, [Ljava/lang/String;

    aput-object v1, v5, v0

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;

    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask$3;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {v2, v4, v5}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$1;)V

    sget-object v4, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v5, v3, [Ljava/lang/String;

    aput-object v1, v5, v0

    invoke-virtual {v2, v4, v5}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$3;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->access$1100(Lcom/android/settings/UCSCryptKeeperTask;)V

    :goto_0
    return v3

    :cond_5
    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->access$702(Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask$3;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v2, v2, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    invoke-virtual {v2}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->next()V

    :cond_6
    return v0
.end method
