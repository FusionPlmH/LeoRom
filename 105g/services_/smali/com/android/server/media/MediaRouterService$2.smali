.class Lcom/android/server/media/MediaRouterService$2;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->access$400(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget v2, v2, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    if-eq v1, v2, :cond_4

    iget v1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    and-int/lit8 v1, v1, 0x13

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object v3, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-object v3, v3, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v1, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    iget-object v1, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget-boolean v1, v1, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    if-eqz v1, :cond_3

    const-string v1, "MediaRouterService"

    const-string/jumbo v2, "force restoreBluetoothA2dp()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iput-boolean v2, v1, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget v2, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iput v2, v1, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
