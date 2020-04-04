.class Lcom/android/systemui/sidescreen/appdock/AppDockWindow$3;
.super Ljava/lang/Object;
.source "AppDockWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->onStart()V
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

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$3;->this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$3;->this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-virtual {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->startEnterAnimation()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$3;->this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    iget-object v0, v0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    return v0
.end method
