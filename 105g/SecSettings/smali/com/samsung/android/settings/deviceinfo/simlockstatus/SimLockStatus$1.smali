.class Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$1;
.super Landroid/os/Handler;
.source "SimLockStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$1;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

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
    const-string v0, "SimLockStatus"

    const-string v1, "MESSAGE_UPDATE_LIST -> updateSimStatus()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus$1;->this$0:Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;->access$000(Lcom/samsung/android/settings/deviceinfo/simlockstatus/SimLockStatus;)V

    :goto_0
    return-void
.end method
