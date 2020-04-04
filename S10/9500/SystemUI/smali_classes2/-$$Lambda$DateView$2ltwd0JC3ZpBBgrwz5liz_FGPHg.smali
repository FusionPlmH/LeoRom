.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$2ltwd0JC3ZpBBgrwz5liz_FGPHg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/DateView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/DateView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$2ltwd0JC3ZpBBgrwz5liz_FGPHg;->f$0:Lcom/android/systemui/statusbar/policy/DateView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$DateView$2ltwd0JC3ZpBBgrwz5liz_FGPHg;->f$0:Lcom/android/systemui/statusbar/policy/DateView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/DateView;->lambda$updateStatus$0$DateView()V

    return-void
.end method
