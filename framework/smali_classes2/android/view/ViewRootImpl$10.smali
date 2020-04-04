.class Landroid/view/ViewRootImpl$10;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewRootImpl;->endRemoteImAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;

.field final synthetic val$resizeFocus:Landroid/widget/EditText;

.field final synthetic val$showSoftInput:Z


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;Landroid/widget/EditText;Z)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$10;->this$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$10;->val$resizeFocus:Landroid/widget/EditText;

    iput-boolean p3, p0, Landroid/view/ViewRootImpl$10;->val$showSoftInput:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/view/ViewRootImpl$10;->val$resizeFocus:Landroid/widget/EditText;

    iget-boolean v1, p0, Landroid/view/ViewRootImpl$10;->val$showSoftInput:Z

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->semOnRemoteImAnimationEnd(Z)V

    return-void
.end method
