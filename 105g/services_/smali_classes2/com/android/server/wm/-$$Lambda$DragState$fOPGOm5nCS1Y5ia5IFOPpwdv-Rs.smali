.class public final synthetic Lcom/android/server/wm/-$$Lambda$DragState$fOPGOm5nCS1Y5ia5IFOPpwdv-Rs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DragState$fOPGOm5nCS1Y5ia5IFOPpwdv-Rs;->f$0:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DragState$fOPGOm5nCS1Y5ia5IFOPpwdv-Rs;->f$0:Landroid/animation/ValueAnimator;

    invoke-static {v0}, Lcom/android/server/wm/DragState;->lambda$createReturnAnimationLocked$2(Landroid/animation/ValueAnimator;)V

    return-void
.end method
