.class Lcom/android/systemui/sidescreen/appdock/AppDockWindow$2;
.super Ljava/lang/Object;
.source "AppDockWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->startBlurAnimator(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/sidescreen/appdock/AppDockWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$2;->this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$2;->this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-static {v1, v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->access$000(Lcom/android/systemui/sidescreen/appdock/AppDockWindow;F)V

    return-void
.end method
