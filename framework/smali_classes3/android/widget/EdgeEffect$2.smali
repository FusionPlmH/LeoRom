.class Landroid/widget/EdgeEffect$2;
.super Ljava/lang/Object;
.source "EdgeEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/EdgeEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/EdgeEffect;


# direct methods
.method constructor <init>(Landroid/widget/EdgeEffect;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/EdgeEffect$2;->this$0:Landroid/widget/EdgeEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Landroid/widget/EdgeEffect$2;->this$0:Landroid/widget/EdgeEffect;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/EdgeEffect;->access$002(Landroid/widget/EdgeEffect;Z)Z

    iget-object v0, p0, Landroid/widget/EdgeEffect$2;->this$0:Landroid/widget/EdgeEffect;

    iget-object v2, p0, Landroid/widget/EdgeEffect$2;->this$0:Landroid/widget/EdgeEffect;

    invoke-static {v2}, Landroid/widget/EdgeEffect;->access$100(Landroid/widget/EdgeEffect;)F

    move-result v2

    iget-object v3, p0, Landroid/widget/EdgeEffect$2;->this$0:Landroid/widget/EdgeEffect;

    invoke-static {v3}, Landroid/widget/EdgeEffect;->access$200(Landroid/widget/EdgeEffect;)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iget-object v0, p0, Landroid/widget/EdgeEffect$2;->this$0:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Landroid/widget/EdgeEffect;->access$300(Landroid/widget/EdgeEffect;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
