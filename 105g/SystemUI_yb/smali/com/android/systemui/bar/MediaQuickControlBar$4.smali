.class Lcom/android/systemui/bar/MediaQuickControlBar$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MediaQuickControlBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bar/MediaQuickControlBar;->startSizeChangeAnimation(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/MediaQuickControlBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/MediaQuickControlBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/MediaQuickControlBar$4;->this$0:Lcom/android/systemui/bar/MediaQuickControlBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/MediaQuickControlBar$4;->this$0:Lcom/android/systemui/bar/MediaQuickControlBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/bar/MediaQuickControlBar;->access$102(Lcom/android/systemui/bar/MediaQuickControlBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
