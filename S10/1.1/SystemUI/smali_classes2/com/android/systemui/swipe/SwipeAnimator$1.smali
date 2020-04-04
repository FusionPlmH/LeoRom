.class Lcom/android/systemui/swipe/SwipeAnimator$1;
.super Ljava/lang/Object;
.source "SwipeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/swipe/SwipeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/swipe/SwipeAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/swipe/SwipeAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/swipe/SwipeAnimator;->access$000(Lcom/android/systemui/swipe/SwipeAnimator;Z)V

    iget-object v0, p0, Lcom/android/systemui/swipe/SwipeAnimator$1;->this$0:Lcom/android/systemui/swipe/SwipeAnimator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/swipe/SwipeAnimator;->access$102(Lcom/android/systemui/swipe/SwipeAnimator;J)J

    return-void
.end method
