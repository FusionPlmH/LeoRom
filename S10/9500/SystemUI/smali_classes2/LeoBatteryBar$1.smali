.class Lcom/android/systemui/fusionleo/LeoBatteryBar$1;
.super Landroid/content/BroadcastReceiver;
.source "LeoBatteryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fusionleo/LeoBatteryBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fusionleo/LeoBatteryBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/fusionleo/LeoBatteryBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar$1;->this$0:Lcom/android/systemui/fusionleo/LeoBatteryBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x64

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar$1;->this$0:Lcom/android/systemui/fusionleo/LeoBatteryBar;

    const/4 v3, 0x0

    const-string v4, "level"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->access$002(Lcom/android/systemui/fusionleo/LeoBatteryBar;I)I

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar$1;->this$0:Lcom/android/systemui/fusionleo/LeoBatteryBar;

    const-string v4, "status"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v1, v3}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->access$102(Lcom/android/systemui/fusionleo/LeoBatteryBar;Z)Z

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar$1;->this$0:Lcom/android/systemui/fusionleo/LeoBatteryBar;

    invoke-static {v1}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->access$100(Lcom/android/systemui/fusionleo/LeoBatteryBar;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar$1;->this$0:Lcom/android/systemui/fusionleo/LeoBatteryBar;

    invoke-static {v1}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->access$000(Lcom/android/systemui/fusionleo/LeoBatteryBar;)I

    move-result v1

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar$1;->this$0:Lcom/android/systemui/fusionleo/LeoBatteryBar;

    invoke-virtual {v1}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->start()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar$1;->this$0:Lcom/android/systemui/fusionleo/LeoBatteryBar;

    invoke-virtual {v1}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->stop()V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar$1;->this$0:Lcom/android/systemui/fusionleo/LeoBatteryBar;

    invoke-static {v1}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->access$000(Lcom/android/systemui/fusionleo/LeoBatteryBar;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->access$200(Lcom/android/systemui/fusionleo/LeoBatteryBar;I)V

    goto :goto_1

    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar$1;->this$0:Lcom/android/systemui/fusionleo/LeoBatteryBar;

    invoke-virtual {v1}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->stop()V

    goto :goto_1

    :cond_3
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar$1;->this$0:Lcom/android/systemui/fusionleo/LeoBatteryBar;

    invoke-static {v1}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->access$100(Lcom/android/systemui/fusionleo/LeoBatteryBar;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar$1;->this$0:Lcom/android/systemui/fusionleo/LeoBatteryBar;

    invoke-static {v1}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->access$000(Lcom/android/systemui/fusionleo/LeoBatteryBar;)I

    move-result v1

    if-ge v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBar$1;->this$0:Lcom/android/systemui/fusionleo/LeoBatteryBar;

    invoke-virtual {v1}, Lcom/android/systemui/fusionleo/LeoBatteryBar;->start()V

    :cond_4
    :goto_1
    return-void
.end method
