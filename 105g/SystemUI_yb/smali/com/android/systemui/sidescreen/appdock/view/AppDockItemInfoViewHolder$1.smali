.class Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppDockItemInfoViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->animateIconLoaded(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;

.field final synthetic val$iconView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder$1;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;

    iput-object p2, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder$1;->val$iconView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder$1;->this$0:Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;

    iget-object v1, p0, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder$1;->val$iconView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/sidescreen/appdock/view/AppDockItemInfoViewHolder;->resetViewAttrs(Landroid/view/View;)V

    return-void
.end method
