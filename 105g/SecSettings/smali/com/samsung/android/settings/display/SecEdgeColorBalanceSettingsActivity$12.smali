.class Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$12;
.super Landroid/content/BroadcastReceiver;
.source "SecEdgeColorBalanceSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$12;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity$12;->this$0:Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;

    invoke-static {p2}, Lcom/android/settings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;->access$302(Lcom/samsung/android/settings/display/SecEdgeColorBalanceSettingsActivity;I)I

    :cond_0
    return-void
.end method
