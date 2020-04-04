.class Lcom/android/systemui/fusionleo/LeoNotificationPanelController$LeoGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LeoNotificationPanelController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/fusionleo/LeoNotificationPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeoGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/fusionleo/LeoNotificationPanelController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fusionleo/LeoNotificationPanelController;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController$LeoGestureDetector;->this$0:Lcom/android/systemui/fusionleo/LeoNotificationPanelController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    invoke-static {p2}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    sget v0, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoKeyguardDoubleTap:I

    if-gtz v0, :cond_0

    const/16 v0, 0xca

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fusionleo/LeoNotificationPanelController$LeoGestureDetector;->this$0:Lcom/android/systemui/fusionleo/LeoNotificationPanelController;

    invoke-static {v1}, Lcom/android/systemui/fusionleo/LeoNotificationPanelController;->access$000(Lcom/android/systemui/fusionleo/LeoNotificationPanelController;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x1

    return v1
.end method
