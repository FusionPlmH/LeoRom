.class Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;
.super Ljava/lang/Object;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "AlertDialog OnClickListener :: Positive "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$400(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$200(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$200(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$700(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$800(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1208a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    :pswitch_1
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "AlertDialog OnClickListener :: Negative "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$800(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1208a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$4;->this$0:Lcom/android/settings/bluetooth/DeviceProfilesSettings;

    invoke-static {v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->access$200(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mTempName:Ljava/lang/String;

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
