.class Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;
.super Landroid/os/Handler;
.source "CaTimeChangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1011

    if-ne v0, v1, :cond_0

    const-string v0, "context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1012

    if-ne v0, v1, :cond_1

    const-string v0, "intent is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1013

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    move v1, v0

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->access$100(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v3, :cond_2

    move v0, v2

    nop

    :cond_2
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "settings not found"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time Change, auto old:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->access$200(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " new:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->access$200(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eq v1, v2, :cond_4

    :cond_3
    if-nez v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->access$300(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->access$202(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;Z)Z

    :cond_6
    :goto_1
    return-void
.end method
