.class Lcom/android/internal/os/BatteryStatsImpl$3;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->updateDischargeScreenLevelsLocked(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$newState:I

.field final synthetic val$oldState:I


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput p2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$oldState:I

    iput p3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$newState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryPermil()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryCCInfo()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$oldState:I

    invoke-static {v2, v3, v0}, Lcom/android/internal/os/BatteryStatsImpl;->access$1800(Lcom/android/internal/os/BatteryStatsImpl;II)V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$newState:I

    invoke-static {v2, v3, v0}, Lcom/android/internal/os/BatteryStatsImpl;->access$1900(Lcom/android/internal/os/BatteryStatsImpl;II)V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$oldState:I

    invoke-static {v2, v3, v1}, Lcom/android/internal/os/BatteryStatsImpl;->access$2000(Lcom/android/internal/os/BatteryStatsImpl;II)V

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget v3, p0, Lcom/android/internal/os/BatteryStatsImpl$3;->val$newState:I

    invoke-static {v2, v3, v1}, Lcom/android/internal/os/BatteryStatsImpl;->access$2100(Lcom/android/internal/os/BatteryStatsImpl;II)V

    return-void
.end method
