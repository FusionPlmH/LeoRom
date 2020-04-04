.class final Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LidStateChangedListenerRecord"
.end annotation


# instance fields
.field private final mListener:Landroid/hardware/input/ISemLidStateChangedListener;

.field private final mPid:I

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;ILandroid/hardware/input/ISemLidStateChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mPid:I

    iput-object p3, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mListener:Landroid/hardware/input/ISemLidStateChangedListener;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->this$0:Lcom/android/server/input/InputManagerService;

    iget v1, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mPid:I

    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$3800(Lcom/android/server/input/InputManagerService;I)V

    return-void
.end method

.method public notifyLidStateChanged(JZ)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mListener:Landroid/hardware/input/ISemLidStateChangedListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/ISemLidStateChangedListener;->onLidStateChanged(JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "InputManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to notify process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " that lid state changed, assuming it died."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$LidStateChangedListenerRecord;->binderDied()V

    :goto_0
    return-void
.end method
