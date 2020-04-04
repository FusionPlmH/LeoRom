.class Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService$WifiBnrHandler;
.super Landroid/os/Handler;
.source "WifiSmartSwitchBackupRestoreRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiBnrHandler"
.end annotation


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService$WifiBnrHandler;->mService:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService$WifiBnrHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;->access$000(Lcom/samsung/android/settings/wifi/WifiSmartSwitchBackupRestoreRemoteService;Landroid/os/Message;)V

    :cond_0
    return-void
.end method
