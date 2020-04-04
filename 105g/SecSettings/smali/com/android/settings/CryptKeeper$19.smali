.class Lcom/android/settings/CryptKeeper$19;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->preparePasswordEntry(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->access$4300(Lcom/android/settings/CryptKeeper;)Lcom/android/settings/widget/ImeAwareEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->getSelectionEnd()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$5000(Lcom/android/settings/CryptKeeper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$5100(Lcom/android/settings/CryptKeeper;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f0804c6

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$4300(Lcom/android/settings/CryptKeeper;)Lcom/android/settings/widget/ImeAwareEditText;

    move-result-object v1

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/CryptKeeper;->access$5002(Lcom/android/settings/CryptKeeper;Z)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$5100(Lcom/android/settings/CryptKeeper;)Landroid/widget/ImageButton;

    move-result-object v1

    const v2, 0x7f0804c7

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$4300(Lcom/android/settings/CryptKeeper;)Lcom/android/settings/widget/ImeAwareEditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ImeAwareEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/CryptKeeper;->access$5002(Lcom/android/settings/CryptKeeper;Z)Z

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$19;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$4300(Lcom/android/settings/CryptKeeper;)Lcom/android/settings/widget/ImeAwareEditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ImeAwareEditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    :goto_1
    return-void
.end method
