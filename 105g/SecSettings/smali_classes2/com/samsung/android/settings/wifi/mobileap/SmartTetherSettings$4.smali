.class Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$4;
.super Ljava/lang/Object;
.source "SmartTetherSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->setEditYourFamilyButton()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$800(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.mobileservice.action.ACTION_GROUP_DETAIL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "group_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x24000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings$4;->this$0:Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;->access$900(Lcom/samsung/android/settings/wifi/mobileap/SmartTetherSettings;)V

    :goto_0
    return-void
.end method
