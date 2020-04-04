.class Lcom/android/internal/app/ResolverActivity$9;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->semStartActivtyAsUserAfterAnimation(Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$cti:Lcom/android/internal/app/ResolverActivity$TargetInfo;

.field final synthetic val$options:Landroid/os/Bundle;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$9;->this$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$9;->val$cti:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$9;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$9;->val$options:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$9;->val$user:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$9;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->access$2302(Lcom/android/internal/app/ResolverActivity;Landroid/animation/Animator;)Landroid/animation/Animator;

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$9;->val$cti:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$9;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$9;->val$options:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$9;->val$user:Landroid/os/UserHandle;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/ResolverActivity$TargetInfo;->startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ResolverActivity"

    const-string/jumbo v2, "startActivity failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$9;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
