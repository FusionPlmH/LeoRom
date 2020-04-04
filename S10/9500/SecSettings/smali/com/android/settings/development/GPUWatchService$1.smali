.class Lcom/android/settings/development/GPUWatchService$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "GPUWatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/GPUWatchService;->initGameSdk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/GPUWatchService;


# direct methods
.method constructor <init>(Lcom/android/settings/development/GPUWatchService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/development/GPUWatchService$1;->this$0:Lcom/android/settings/development/GPUWatchService;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method
