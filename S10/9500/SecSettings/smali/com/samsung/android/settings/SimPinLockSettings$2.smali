.class Lcom/samsung/android/settings/SimPinLockSettings$2;
.super Landroid/os/Handler;
.source "SimPinLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SimPinLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SimPinLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SimPinLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SimPinLockSettings$2;->this$0:Lcom/samsung/android/settings/SimPinLockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/SimPinLockSettings$2;->this$0:Lcom/samsung/android/settings/SimPinLockSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/SimPinLockSettings;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/SimPinLockSettings$2;->this$0:Lcom/samsung/android/settings/SimPinLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/SimPinLockSettings;->access$300(Lcom/samsung/android/settings/SimPinLockSettings;)V

    :goto_0
    return-void
.end method
