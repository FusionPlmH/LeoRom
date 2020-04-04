.class Lcom/android/systemui/fusionleo/LeoMainBattery$1;
.super Landroid/content/BroadcastReceiver;
.source "LeoMainBattery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/fusionleo/LeoMainBattery;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fusionleo/LeoMainBattery;


# direct methods
.method constructor <init>(Lcom/android/systemui/fusionleo/LeoMainBattery;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoMainBattery$1;->this$0:Lcom/android/systemui/fusionleo/LeoMainBattery;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const-string v2, "level"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "plugged"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoMainBattery$1;->this$0:Lcom/android/systemui/fusionleo/LeoMainBattery;

    invoke-static {v1, v2, v0}, Lcom/android/systemui/fusionleo/LeoMainBattery;->access$000(Lcom/android/systemui/fusionleo/LeoMainBattery;IZ)V

    :cond_1
    return-void
.end method
