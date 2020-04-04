.class Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;
.super Ljava/lang/Object;
.source "BluetoothScanDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->updateScanStateView()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->access$000(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1206a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->access$000(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    sput-boolean v1, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->IS_ACTION_BUTTON:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1206a4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->access$000(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->startScanning(Z)Z

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->access$100(Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog$1;->this$0:Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;

    invoke-virtual {v2}, Lcom/samsung/android/settings/bluetooth/BluetoothScanDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120867

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
