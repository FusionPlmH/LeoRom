.class Lcom/android/systemui/fusionleo/LeoBatteryBarController$1;
.super Landroid/content/BroadcastReceiver;
.source "LeoBatteryBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fusionleo/LeoBatteryBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fusionleo/LeoBatteryBarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/fusionleo/LeoBatteryBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController$1;->this$0:Lcom/android/systemui/fusionleo/LeoBatteryBarController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController$1;->this$0:Lcom/android/systemui/fusionleo/LeoBatteryBarController;

    const/4 v2, 0x0

    const-string v3, "level"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->access$002(Lcom/android/systemui/fusionleo/LeoBatteryBarController;I)I

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController$1;->this$0:Lcom/android/systemui/fusionleo/LeoBatteryBarController;

    const-string v3, "status"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v1, v2}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->access$102(Lcom/android/systemui/fusionleo/LeoBatteryBarController;Z)Z

    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoBatteryBarController$1;->this$0:Lcom/android/systemui/fusionleo/LeoBatteryBarController;

    invoke-static {v1}, Lcom/android/systemui/fusionleo/LeoBatteryBarController;->access$000(Lcom/android/systemui/fusionleo/LeoBatteryBarController;)I

    move-result v1

    invoke-static {p1, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig$Prefs;->setLastBatteryLevel(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method
