.class Lcom/samsung/android/settings/accessibility/SecInstalledServices$1;
.super Landroid/content/BroadcastReceiver;
.source "SecInstalledServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/SecInstalledServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/SecInstalledServices;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/SecInstalledServices;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices$1;->this$0:Lcom/samsung/android/settings/accessibility/SecInstalledServices;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private sendUpdate()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices$1;->this$0:Lcom/samsung/android/settings/accessibility/SecInstalledServices;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->access$100(Lcom/samsung/android/settings/accessibility/SecInstalledServices;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/SecInstalledServices$1;->this$0:Lcom/samsung/android/settings/accessibility/SecInstalledServices;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/SecInstalledServices;->access$000(Lcom/samsung/android/settings/accessibility/SecInstalledServices;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xa480416

    if-eq v1, v2, :cond_2

    const v2, 0x1f50b9c2

    if-eq v1, v2, :cond_1

    const v2, 0x5c1076e2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices$1;->sendUpdate()V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices$1;->sendUpdate()V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/SecInstalledServices$1;->sendUpdate()V

    nop

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
