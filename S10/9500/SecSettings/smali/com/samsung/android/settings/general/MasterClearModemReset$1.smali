.class Lcom/samsung/android/settings/general/MasterClearModemReset$1;
.super Landroid/os/Handler;
.source "MasterClearModemReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/general/MasterClearModemReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/general/MasterClearModemReset;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/general/MasterClearModemReset;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/general/MasterClearModemReset$1;->this$0:Lcom/samsung/android/settings/general/MasterClearModemReset;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3f2

    if-eq v0, v1, :cond_0

    const-string v0, "MasterClearModemReset"

    const-string v1, "Something weird happened"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "MasterClearModemReset"

    const-string v1, "modem CP2 reset done"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/general/MasterClearModemReset$1;->this$0:Lcom/samsung/android/settings/general/MasterClearModemReset;

    invoke-static {v0}, Lcom/samsung/android/settings/general/MasterClearModemReset;->access$000(Lcom/samsung/android/settings/general/MasterClearModemReset;)V

    goto :goto_0

    :cond_1
    const-string v0, "MasterClearModemReset"

    const-string v1, "Modem reset is done"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/general/MasterClearModemReset$1;->this$0:Lcom/samsung/android/settings/general/MasterClearModemReset;

    invoke-static {v0}, Lcom/samsung/android/settings/general/MasterClearModemReset;->access$000(Lcom/samsung/android/settings/general/MasterClearModemReset;)V

    nop

    :goto_0
    return-void
.end method
