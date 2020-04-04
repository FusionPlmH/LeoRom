.class Lcom/samsung/android/bluetooth/BluetoothPageOffload$1;
.super Ljava/lang/Object;
.source "BluetoothPageOffload.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bluetooth/BluetoothPageOffload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bluetooth/BluetoothPageOffload;


# direct methods
.method constructor <init>(Lcom/samsung/android/bluetooth/BluetoothPageOffload;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload$1;->this$0:Lcom/samsung/android/bluetooth/BluetoothPageOffload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload$1;->this$0:Lcom/samsung/android/bluetooth/BluetoothPageOffload;

    invoke-static {p2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/bluetooth/IBluetoothPageOffload$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bluetooth/IBluetoothPageOffload;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->access$002(Lcom/samsung/android/bluetooth/BluetoothPageOffload;Lcom/samsung/android/bluetooth/IBluetoothPageOffload;)Lcom/samsung/android/bluetooth/IBluetoothPageOffload;

    iget-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload$1;->this$0:Lcom/samsung/android/bluetooth/BluetoothPageOffload;

    invoke-static {v0}, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->access$100(Lcom/samsung/android/bluetooth/BluetoothPageOffload;)Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload$1;->this$0:Lcom/samsung/android/bluetooth/BluetoothPageOffload;

    invoke-static {v0}, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->access$100(Lcom/samsung/android/bluetooth/BluetoothPageOffload;)Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload$1;->this$0:Lcom/samsung/android/bluetooth/BluetoothPageOffload;

    invoke-interface {v0, v1}, Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadListener;->onServiceConnected(Lcom/samsung/android/bluetooth/BluetoothPageOffload;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload$1;->this$0:Lcom/samsung/android/bluetooth/BluetoothPageOffload;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->access$002(Lcom/samsung/android/bluetooth/BluetoothPageOffload;Lcom/samsung/android/bluetooth/IBluetoothPageOffload;)Lcom/samsung/android/bluetooth/IBluetoothPageOffload;

    iget-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload$1;->this$0:Lcom/samsung/android/bluetooth/BluetoothPageOffload;

    invoke-static {v0}, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->access$100(Lcom/samsung/android/bluetooth/BluetoothPageOffload;)Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload$1;->this$0:Lcom/samsung/android/bluetooth/BluetoothPageOffload;

    invoke-static {v0}, Lcom/samsung/android/bluetooth/BluetoothPageOffload;->access$100(Lcom/samsung/android/bluetooth/BluetoothPageOffload;)Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadListener;->onServiceDisconnected()V

    :cond_0
    return-void
.end method
