.class Lcom/samsung/android/settings/SimPersoLockSettings$2;
.super Landroid/os/Handler;
.source "SimPersoLockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SimPersoLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/SimPersoLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SimPersoLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SimPersoLockSettings$2;->this$0:Lcom/samsung/android/settings/SimPersoLockSettings;

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
    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings$2;->this$0:Lcom/samsung/android/settings/SimPersoLockSettings;

    iget-object v0, v0, Lcom/samsung/android/settings/SimPersoLockSettings;->mH:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/SimPersoLockSettings$2;->this$0:Lcom/samsung/android/settings/SimPersoLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/SimPersoLockSettings;->access$200(Lcom/samsung/android/settings/SimPersoLockSettings;)V

    :goto_0
    return-void
.end method
