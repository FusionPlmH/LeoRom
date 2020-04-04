.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$_GE4AUpWt3SBAYoyghIMMfYclcs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/Clock;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$_GE4AUpWt3SBAYoyghIMMfYclcs;->f$0:Lcom/android/systemui/statusbar/policy/Clock;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$_GE4AUpWt3SBAYoyghIMMfYclcs;->f$0:Lcom/android/systemui/statusbar/policy/Clock;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Clock;->lambda$updateClockVisibility$0$Clock()V

    return-void
.end method
