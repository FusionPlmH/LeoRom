.class final Lcom/samsung/android/sepunion/ExclusiveTaskManager$MyCallback;
.super Ljava/lang/Object;
.source "ExclusiveTaskManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sepunion/ExclusiveTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyCallback"
.end annotation


# static fields
.field public static final MSG_SET_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sepunion/ExclusiveTaskManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/sepunion/ExclusiveTaskManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager$MyCallback;->this$0:Lcom/samsung/android/sepunion/ExclusiveTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sepunion/ExclusiveTaskManager;Lcom/samsung/android/sepunion/ExclusiveTaskManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sepunion/ExclusiveTaskManager$MyCallback;-><init>(Lcom/samsung/android/sepunion/ExclusiveTaskManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/samsung/android/sepunion/ExclusiveTaskManager$MyCallback;->this$0:Lcom/samsung/android/sepunion/ExclusiveTaskManager;

    invoke-static {v2}, Lcom/samsung/android/sepunion/ExclusiveTaskManager;->access$100(Lcom/samsung/android/sepunion/ExclusiveTaskManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    monitor-exit v2

    :goto_0
    return v1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
