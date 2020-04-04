.class Landroid/sec/enterprise/WifiPolicyCache$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiPolicyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/sec/enterprise/WifiPolicyCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/enterprise/WifiPolicyCache;


# direct methods
.method constructor <init>(Landroid/sec/enterprise/WifiPolicyCache;)V
    .locals 0

    iput-object p1, p0, Landroid/sec/enterprise/WifiPolicyCache$1;->this$0:Landroid/sec/enterprise/WifiPolicyCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.intent.action.WIFI_POLICY_STATE_CHANGED_INTERNAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "com.samsung.android.knox.intent.extra.WIFI_TYPE_CHANGED_INTERNAL"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Landroid/sec/enterprise/WifiPolicyCache$1;->this$0:Landroid/sec/enterprise/WifiPolicyCache;

    invoke-static {v4, v2, v3}, Landroid/sec/enterprise/WifiPolicyCache;->access$000(Landroid/sec/enterprise/WifiPolicyCache;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/sec/enterprise/WifiPolicyCache$1;->this$0:Landroid/sec/enterprise/WifiPolicyCache;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/sec/enterprise/WifiPolicyCache;->access$000(Landroid/sec/enterprise/WifiPolicyCache;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
