.class final Lcom/android/server/desktopmode/UiManager$UiCommandHandler;
.super Landroid/os/Handler;
.source "UiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/UiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UiCommandHandler"
.end annotation


# static fields
.field private static final DELAY:I = 0x3e8

.field private static final MSG_DOCK_TA_WARNING_DIALOG:I = 0x1

.field private static final MSG_ONGOING_NOTIFICATION:I = 0x2

.field private static final NO_NEED_FOR_DELAY:I = -0x1


# instance fields
.field private final mDockTaWarningDialogMessage:Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;-><init>(Lcom/android/server/desktopmode/UiManager$1;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->mDockTaWarningDialogMessage:Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;

    return-void
.end method

.method private static getDelayedUiCommandMessageId(I)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_2

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->getNotificationId(I)I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method static messageIdToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "MSG_ONGOING_NOTIFICATION"

    return-object v0

    :pswitch_1
    const-string v0, "MSG_DOCK_TA_WARNING_DIALOG"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/UiManager;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage(), msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->messageIdToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method schedule(ILjava/lang/Runnable;)V
    .locals 5

    invoke-static {p1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->getDelayedUiCommandMessageId(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_0
    sget-boolean v1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/desktopmode/UiManager;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedule(), type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/desktopmode/DesktopModeUiConstants;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->messageIdToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->mDockTaWarningDialogMessage:Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;->setCommand(ILjava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->mDockTaWarningDialogMessage:Lcom/android/server/desktopmode/UiManager$DockTaWarningDialogMessage;

    goto :goto_0

    :cond_2
    move-object v1, p2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->removeMessages(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/desktopmode/UiManager$UiCommandHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void
.end method
