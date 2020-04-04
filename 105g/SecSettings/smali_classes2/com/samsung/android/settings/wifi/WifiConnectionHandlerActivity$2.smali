.class Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;
.super Ljava/lang/Object;
.source "WifiConnectionHandlerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->showdataConnectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

.field final synthetic val$mcheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->val$mcheck:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const-string v0, "WifiConnectionHandlerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected button is Disconnect , Do not Show again : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->val$mcheck:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->access$300(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "connhan_do_not_show"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->access$400(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "WifiConnectionHandlerActivity"

    const-string v4, "donotshow checked. connhan_value : BUTTON_DISCONNECT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "connhan_value"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->OnOffData(Z)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0xf1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "parameters"

    const-string v3, "EVENT_WATCHDOG_SETTINGS_CHANGE"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->access$500(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->access$500(Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    :cond_1
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity$2;->this$0:Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/WifiConnectionHandlerActivity;->finish()V

    return-void
.end method
