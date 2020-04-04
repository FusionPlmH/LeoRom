.class public Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadCallbackWrapper;
.super Lcom/samsung/android/bluetooth/IBluetoothPageOffloadCallback$Stub;
.source "BluetoothPageOffload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bluetooth/BluetoothPageOffload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageOffloadCallbackWrapper"
.end annotation


# instance fields
.field private mCallBack:Lcom/samsung/android/bluetooth/BluetoothPageOffloadCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/bluetooth/BluetoothPageOffloadCallback;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bluetooth/IBluetoothPageOffloadCallback$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadCallbackWrapper;->mCallBack:Lcom/samsung/android/bluetooth/BluetoothPageOffloadCallback;

    return-void
.end method


# virtual methods
.method public onPageOffloadCallback(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/bluetooth/BluetoothPageOffload$PageOffloadCallbackWrapper;->mCallBack:Lcom/samsung/android/bluetooth/BluetoothPageOffloadCallback;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/bluetooth/BluetoothPageOffloadCallback;->onPageOffloadCallback(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method
