.class Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$1;
.super Ljava/lang/Object;
.source "SecZenModeDNDAutomationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->showDeleteRuleDialog(Ljava/lang/String;Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

.field final synthetic val$ruleId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    iput-object p2, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$1;->val$ruleId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->access$000(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$1;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$1;->val$ruleId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->access$100(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;Ljava/lang/String;)Z

    const/16 v0, 0x1036

    const/16 v1, 0x103b

    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method
