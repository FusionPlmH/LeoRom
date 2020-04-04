.class public Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;
.super Ljava/lang/Object;
.source "ConfirmUCMLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateMachine"
.end annotation


# instance fields
.field private mAtmRemain:I

.field private mErrorState:I

.field mInputPin:Ljava/lang/String;

.field mInputPuk:Ljava/lang/String;

.field private mState:I

.field final synthetic this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttemptsRemaining()I
    .locals 1

    iget v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    return v0
.end method

.method public getErrorState()I
    .locals 1

    iget v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    return v0
.end method

.method public getState()I
    .locals 3

    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConfirmUCMLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    return v0
.end method

.method public next(Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->getState()I

    move-result v0

    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ConfirmUCMLockPassword"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "next mCurState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x63

    const v3, 0x10002

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x2

    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPuk:Ljava/lang/String;

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    aput-object v3, v1, v4

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    const v3, 0x10006

    iput v3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    goto :goto_0

    :pswitch_1
    iput-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPin:Ljava/lang/String;

    const v3, 0x10003

    iput v3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    :pswitch_2
    iput-object p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mInputPuk:Ljava/lang/String;

    iput v3, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x0

    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v5

    nop

    :goto_0
    new-instance v3, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;

    iget-object v4, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    iget-object v5, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->this$0:Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v5}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->access$1200(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v2}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;-><init>(Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;Ljava/lang/String;I)V

    invoke-virtual {v3, v1}, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$UCMAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10000
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAttemptsRemaining(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    return-void
.end method

.method public setErrorState(I)V
    .locals 0

    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    return-void
.end method

.method public setState(I)V
    .locals 3

    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConfirmUCMLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    return-void
.end method

.method public setState(II)V
    .locals 3

    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ConfirmUCMLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/settings/password/ConfirmUCMLockPassword;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ConfirmUCMLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remainCnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p2, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mAtmRemain:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mErrorState:I

    packed-switch p1, :pswitch_data_0

    const v0, 0x10005

    iput v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    :pswitch_0
    const v0, 0x10001

    iput v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    goto :goto_0

    :pswitch_1
    const/high16 v0, 0x10000

    iput v0, p0, Lcom/android/settings/password/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$StateMachine;->mState:I

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
