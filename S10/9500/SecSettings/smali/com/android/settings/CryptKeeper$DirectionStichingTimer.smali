.class Lcom/android/settings/CryptKeeper$DirectionStichingTimer;
.super Ljava/lang/Thread;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectionStichingTimer"
.end annotation


# instance fields
.field Msg:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->Msg:Landroid/os/Message;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;-><init>(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "CryptKeeper"

    const-string v1, "Stitching Timer Thread started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/CryptKeeper;->access$2102(Lcom/android/settings/CryptKeeper;Z)Z

    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1, v0}, Lcom/android/settings/CryptKeeper;->access$2102(Lcom/android/settings/CryptKeeper;Z)Z

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$300(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    const-string v1, "CryptKeeper"

    const-string v2, "Checking direction lock password"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$300(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DirectionLockView;->setAllow(Z)V

    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->access$2200(Lcom/android/settings/CryptKeeper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2, v0}, Lcom/android/settings/CryptKeeper;->access$2102(Lcom/android/settings/CryptKeeper;Z)Z

    const-string v0, "CryptKeeper"

    const-string v2, "Interrupted before waking up naturally"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
