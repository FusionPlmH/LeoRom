.class Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$7;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseBillingAsyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$7;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$7;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    invoke-static {v0}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler$7;->this$0:Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;

    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;->access$100(Lcom/android/server/enterprise/billing/EnterpriseBillingAsyncHandler;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
