.class Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;
.super Ljava/lang/Object;
.source "PaymentDropDownPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setResult(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field preferredClick:Z

.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

.field final synthetic val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

.field final synthetic val$handler2:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

.field final synthetic val$setClicked:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;ILcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iput p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    iput-object p4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler2:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->preferredClick:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$500(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->setPreferredSimSlot(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->preferredClick:Z

    const-string v0, "PaymentDropDownPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreferredSimSlot("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->preferredClick:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->preferredClick:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$600(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$600(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$600(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler2:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler2:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$600(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$600(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$600(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$200(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)I

    move-result v4

    if-nez v4, :cond_3

    move v1, v2

    nop

    :cond_3
    invoke-static {v3, v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$202(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;I)I

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$000(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->access$200(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method
