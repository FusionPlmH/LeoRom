.class Lcom/android/settings/CryptKeeper$10;
.super Landroid/content/BroadcastReceiver;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
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

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$10;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CryptKeeper"

    const-string v2, "CryptKeeper received ACTION_BOOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$10;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/CryptKeeper;->access$4102(Lcom/android/settings/CryptKeeper;Z)Z

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$10;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$4200(Lcom/android/settings/CryptKeeper;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$10;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$4200(Lcom/android/settings/CryptKeeper;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$10;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$4300(Lcom/android/settings/CryptKeeper;)Lcom/android/settings/widget/ImeAwareEditText;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "CryptKeeper"

    const-string/jumbo v2, "showSoftInput"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$10;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$4300(Lcom/android/settings/CryptKeeper;)Lcom/android/settings/widget/ImeAwareEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    :cond_1
    return-void
.end method
