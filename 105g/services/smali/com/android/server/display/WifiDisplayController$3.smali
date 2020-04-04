.class Lcom/android/server/display/WifiDisplayController$3;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->sendDeviceVolumeKeyEvent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$3;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$300()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$300()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$3;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$400(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$3;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$400(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040b3a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$3;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->access$500(Lcom/android/server/display/WifiDisplayController;)Landroid/hardware/display/SemDeviceInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/display/SemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$302(Landroid/widget/Toast;)Landroid/widget/Toast;

    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->access$300()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
