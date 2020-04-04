.class Lcom/android/settings/TetherSettings$15;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->updateBluetoothSubText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;

.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/TetherSettings$15;->this$0:Lcom/android/settings/TetherSettings;

    iput-object p2, p0, Lcom/android/settings/TetherSettings$15;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6

    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "TetheringSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConnectedDevices : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/TetherSettings$15;->this$0:Lcom/android/settings/TetherSettings;

    const v2, 0x7f12042c

    invoke-virtual {v1, v2}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/TetherSettings$15;->this$0:Lcom/android/settings/TetherSettings;

    const v2, 0x7f12042b

    invoke-virtual {v1, v2}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings$15;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->access$1400(Lcom/android/settings/TetherSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/TetherSettings$15;->this$0:Lcom/android/settings/TetherSettings;

    const v2, 0x7f12042f

    invoke-virtual {v1, v2}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/TetherSettings$15;->this$0:Lcom/android/settings/TetherSettings;

    const v2, 0x7f12042e

    invoke-virtual {v1, v2}, Lcom/android/settings/TetherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/android/settings/TetherSettings$15;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->access$1400(Lcom/android/settings/TetherSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/TetherSettings$15;->this$0:Lcom/android/settings/TetherSettings;

    const v4, 0x7f120431

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-virtual {v2, v4, v1}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/settings/TetherSettings$15;->this$0:Lcom/android/settings/TetherSettings;

    const v4, 0x7f120430

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-virtual {v2, v4, v1}, Lcom/android/settings/TetherSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v2, p0, Lcom/android/settings/TetherSettings$15;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v2}, Lcom/android/settings/TetherSettings;->access$1400(Lcom/android/settings/TetherSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v1, p0, Lcom/android/settings/TetherSettings$15;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    return-void
.end method
