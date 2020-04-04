.class Lcom/android/systemui/sidescreen/appdock/AppDockWindow$4;
.super Lcom/android/systemui/shared/system/TaskStackChangeListener;
.source "AppDockWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sidescreen/appdock/AppDockWindow;
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

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$4;->this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-direct {p0}, Lcom/android/systemui/shared/system/TaskStackChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPinnedStackAnimationEnded()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$4;->this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-static {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->access$100(Lcom/android/systemui/sidescreen/appdock/AppDockWindow;)V

    return-void
.end method

.method public onTaskRemoved(I)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$4;->this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-static {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->access$100(Lcom/android/systemui/sidescreen/appdock/AppDockWindow;)V

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/AppDockWindow$4;->this$0:Lcom/android/systemui/sidescreen/appdock/AppDockWindow;

    invoke-static {v0}, Lcom/android/systemui/sidescreen/appdock/AppDockWindow;->access$100(Lcom/android/systemui/sidescreen/appdock/AppDockWindow;)V

    return-void
.end method
