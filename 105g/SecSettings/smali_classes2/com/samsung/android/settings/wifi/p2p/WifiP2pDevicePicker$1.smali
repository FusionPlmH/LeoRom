.class Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;
.super Ljava/lang/Object;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$000(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    instance-of v4, v3, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$100(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/CheckBox;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    invoke-virtual {v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v5

    iget-object v6, v4, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v5, v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v5

    iget-object v6, v4, Lcom/samsung/android/settings/wifi/p2p/WifiP2pAvailablePeer;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v5, v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$302(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;Ljava/lang/String;)Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f1216eb

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$200(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$300(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$400(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker$1;->this$0:Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;->access$500(Lcom/samsung/android/settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_2
    return-void
.end method
