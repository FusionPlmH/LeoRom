.class Lcom/android/server/notification/SmartAlertController$3;
.super Ljava/lang/Thread;
.source "SmartAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/SmartAlertController;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/SmartAlertController;


# direct methods
.method constructor <init>(Lcom/android/server/notification/SmartAlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->access$600(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->access$700(Lcom/android/server/notification/SmartAlertController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->access$800(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v0}, Lcom/android/server/notification/SmartAlertController;->access$800(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionRecognitionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    invoke-static {v1}, Lcom/android/server/notification/SmartAlertController;->access$900(Lcom/android/server/notification/SmartAlertController;)Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V

    iget-object v0, p0, Lcom/android/server/notification/SmartAlertController$3;->this$0:Lcom/android/server/notification/SmartAlertController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/notification/SmartAlertController;->access$602(Lcom/android/server/notification/SmartAlertController;Z)Z

    const-string v0, "SmartAlertController"

    const-string v1, "SmartAlert - registerListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "SmartAlertController"

    const-string v1, "SmartAlert - mSmartAlertMotionManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "SmartAlertController"

    const-string v1, "SmartAlert - already registered or Setting disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
