.class Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$2;
.super Ljava/lang/Object;
.source "BluetoothIBRSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/bluetooth/BluetoothFunctionSettingsBase$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogCanceled()V
    .locals 2

    const-string v0, "BluetoothIBRSettings"

    const-string v1, "onDialogCanceled ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDialogNegativeClicked()V
    .locals 3

    const-string v0, "BluetoothIBRSettings"

    const-string v1, "onDialogNegativeClicked ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->access$000(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1208a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDialogPositiveClicked()V
    .locals 5

    const-string v0, "BluetoothIBRSettings"

    const-string v1, "onDialogPositiveClicked ::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->access$000(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1208a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->access$100(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xb

    if-eq v0, v2, :cond_0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->access$100(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->disable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "bluetooth_restart"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "key_bluetooth_restart"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings$2;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;

    invoke-static {v3}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->access$200(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v2, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;->access$300(Lcom/samsung/android/settings/bluetooth/BluetoothIBRSettings;Z)V

    return-void
.end method
