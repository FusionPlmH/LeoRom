.class Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiWindowSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->access$100(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->access$200(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v3, v2}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->access$300(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->access$100(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->access$200(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings$2;->this$0:Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;

    invoke-static {v2, v3}, Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;->access$300(Lcom/samsung/android/settings/usefulfeature/MultiWindowSettings;Z)V

    :cond_2
    :goto_1
    return-void
.end method
