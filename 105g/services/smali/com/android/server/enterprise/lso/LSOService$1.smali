.class Lcom/android/server/enterprise/lso/LSOService$1;
.super Landroid/content/BroadcastReceiver;
.source "LSOService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/lso/LSOService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/lso/LSOService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/lso/LSOService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/lso/LSOService$1;->this$0:Lcom/android/server/enterprise/lso/LSOService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/enterprise/lso/LSOService$1;->this$0:Lcom/android/server/enterprise/lso/LSOService;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/lso/LSOService;->access$000(Lcom/android/server/enterprise/lso/LSOService;I)V

    :cond_0
    return-void
.end method