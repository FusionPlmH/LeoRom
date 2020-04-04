.class Lcom/android/systemui/statusbar/policy/MobileSignalController$3;
.super Landroid/database/ContentObserver;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_network_status"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$2802(Lcom/android/systemui/statusbar/policy/MobileSignalController;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMobileNetworkStatusObserver onChange():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$3;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$2800(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
