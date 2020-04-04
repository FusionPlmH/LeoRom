.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$PdRbFpBtvmG8D_l4QAayeJa1chA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/recents/RecentsOnboarding;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/RecentsOnboarding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$PdRbFpBtvmG8D_l4QAayeJa1chA;->f$0:Lcom/android/systemui/recents/RecentsOnboarding;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$RecentsOnboarding$PdRbFpBtvmG8D_l4QAayeJa1chA;->f$0:Lcom/android/systemui/recents/RecentsOnboarding;

    invoke-static {v0}, Lcom/android/systemui/recents/RecentsOnboarding;->lambda$showTipPopup$2(Lcom/android/systemui/recents/RecentsOnboarding;)V

    return-void
.end method
