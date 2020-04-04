.class final Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;
.super Landroid/os/Handler;
.source "GearVrManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vr/GearVrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GearVrListenerDelegate"
.end annotation


# instance fields
.field public final mListener:Lcom/samsung/android/vr/GearVrManager$GearVrListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/vr/GearVrManager$GearVrListener;Landroid/os/Handler;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object p1, p0, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;->mListener:Lcom/samsung/android/vr/GearVrManager$GearVrListener;

    return-void
.end method


# virtual methods
.method public clearEvents()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;->mListener:Lcom/samsung/android/vr/GearVrManager$GearVrListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/vr/GearVrManager$GearVrListener;->onGearVrStateChanged(II)V

    :goto_0
    return-void
.end method

.method public sendGearVrEvent(III)V
    .locals 1

    invoke-virtual {p0, p3, p1, p2}, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/vr/GearVrManager$GearVrListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
