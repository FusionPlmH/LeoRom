.class Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;
.super Ljava/lang/Object;
.source "FindMyMobileSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/fmm/FindMyMobileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x117b

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->access$900(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    array-length v3, v2

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->access$900(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/android/settings/fmm/SamsungAccountValidationActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->access$1000(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->access$900(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/fmm/FindMyMobileSettings$6;->this$0:Lcom/samsung/android/settings/fmm/FindMyMobileSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/fmm/FindMyMobileSettings;->access$900(Lcom/samsung/android/settings/fmm/FindMyMobileSettings;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
