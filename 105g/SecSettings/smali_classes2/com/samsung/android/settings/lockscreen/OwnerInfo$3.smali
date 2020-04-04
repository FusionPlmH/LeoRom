.class Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;
.super Ljava/lang/Object;
.source "OwnerInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/OwnerInfo;->showInputMethod()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x20

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$000(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$3;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->access$000(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void

    :cond_3
    :goto_1
    return-void
.end method
