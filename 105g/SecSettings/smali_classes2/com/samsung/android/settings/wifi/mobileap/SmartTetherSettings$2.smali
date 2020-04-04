.class Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "SmartTetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$300(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
