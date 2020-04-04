.class Lcom/android/systemui/statusbar/phone/NavigationBarFrame$LeoGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "NavigationBarFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LeoGestureDetector"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFrame;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarFrame;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame$LeoGestureDetector;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    invoke-static {p2}, Lcom/fusionleo/LeoProvider/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame$LeoGestureDetector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame$LeoGestureDetector;->mContext:Landroid/content/Context;

    sget v1, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNavGesture:I

    if-gtz v1, :cond_0

    const/16 v1, 0xca

    const-string v2, "Leo Salt"

    const-string v3, "LeoNavGesture"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    sget v2, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNavGestureVibratorEnable:I

    sget v3, Lcom/fusionleo/LeoProvider/LeoManages;->setLeoNavGestureVibratorLevel:I

    invoke-static {v0, v2, v3}, Lcom/fusionleo/LeoX/systemui/LeoConfig;->setLeoHaptics(Landroid/content/Context;II)V

    const/4 v2, 0x1

    return v2
.end method
