.class Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$4;
.super Ljava/lang/Object;
.source "SecZenModeDNDAutomationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->updateControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$4;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$4;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->access$200(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings$4;->this$0:Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;->access$200(Lcom/samsung/android/settings/notification/SecZenModeDNDAutomationSettings;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
