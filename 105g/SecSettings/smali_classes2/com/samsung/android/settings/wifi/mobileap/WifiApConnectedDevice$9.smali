.class Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$9;
.super Ljava/lang/Object;
.source "WifiApConnectedDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

.field final synthetic val$msgId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    iput p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$9;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060396

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#ff"

    const-string v2, "#"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$9;->val$msgId:I

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$300(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice$9;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;->access$200(Lcom/samsung/android/settings/wifi/mobileap/WifiApConnectedDevice;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method
