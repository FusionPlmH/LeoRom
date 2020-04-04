.class Lcom/android/systemui/sidescreen/appdock/AppDockWindow$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppDockWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->startExitAnimation()V
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

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$5;->this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$5;->this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->executeDismiss()V

    return-void
.end method
