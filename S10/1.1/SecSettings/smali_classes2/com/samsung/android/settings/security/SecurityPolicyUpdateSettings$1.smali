.class Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "SecurityPolicyUpdateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->initSecurityPolicyUpdateSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings$1;->this$0:Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "SecurityPolicyUpdateSettings"

    const-string v1, "Last checked date is updated"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings$1;->this$0:Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;->access$000(Lcom/samsung/android/settings/security/SecurityPolicyUpdateSettings;)V

    return-void
.end method
