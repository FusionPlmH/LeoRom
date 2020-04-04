.class Landroid/view/ViewRootImpl$InputMethodAnimationRunner$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl$InputMethodAnimationRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl$InputMethodAnimationRunner;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$1;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$1;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v0, v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$6202(Landroid/view/ViewRootImpl;Z)Z

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$1;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v0, v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$6302(Landroid/view/ViewRootImpl;Z)Z

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$1;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v0, v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->access$7402(Landroid/view/ViewRootImpl;Z)Z

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner$1;->this$1:Landroid/view/ViewRootImpl$InputMethodAnimationRunner;

    iget-object v0, v0, Landroid/view/ViewRootImpl$InputMethodAnimationRunner;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$1300(Landroid/view/ViewRootImpl;)V

    return-void
.end method
