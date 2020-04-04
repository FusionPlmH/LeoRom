.class Lcom/samsung/android/systemui/sidescreen/SideScreenController$1;
.super Ljava/lang/Object;
.source "SideScreenController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/systemui/sidescreen/SideScreenController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;


# direct methods
.method public static synthetic lambda$onScreenTurnedOff$0(Lcom/samsung/android/systemui/sidescreen/SideScreenController$1;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$300(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/EdgeBackgroundWithDisplayCutout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/EdgeBackgroundWithDisplayCutout;->onSideScreenModeChanged(I)V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$000(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$102(Lcom/samsung/android/systemui/sidescreen/SideScreenController;Z)Z

    iget-object v0, p0, Lcom/samsung/android/systemui/sidescreen/SideScreenController$1;->this$0:Lcom/samsung/android/systemui/sidescreen/SideScreenController;

    invoke-static {v0}, Lcom/samsung/android/systemui/sidescreen/SideScreenController;->access$200(Lcom/samsung/android/systemui/sidescreen/SideScreenController;)Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$1$fze1_cI0tCJ0daJoTjxlZDXUeRQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/sidescreen/-$$Lambda$SideScreenController$1$fze1_cI0tCJ0daJoTjxlZDXUeRQ;-><init>(Lcom/samsung/android/systemui/sidescreen/SideScreenController$1;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/sidescreen/SideScreenController$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    return-void
.end method

.method public onScreenTurningOn()V
    .locals 0

    return-void
.end method
