.class Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper$1;
.super Landroid/transition/TransitionListenerAdapter;
.source "AppDockAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;->requestLayoutChangeAnimation(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/sidescreen/LogHelper;->debug()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/sidescreen/appdock/AppDockAnimationHelper;->mIsLayoutChangeAnimRunning:Z

    return-void
.end method
