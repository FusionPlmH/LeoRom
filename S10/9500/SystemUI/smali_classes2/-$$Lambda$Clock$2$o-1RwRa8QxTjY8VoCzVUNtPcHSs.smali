.class public final synthetic Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$o-1RwRa8QxTjY8VoCzVUNtPcHSs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/policy/Clock$2;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/Clock$2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$o-1RwRa8QxTjY8VoCzVUNtPcHSs;->f$0:Lcom/android/systemui/statusbar/policy/Clock$2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$$Lambda$Clock$2$o-1RwRa8QxTjY8VoCzVUNtPcHSs;->f$0:Lcom/android/systemui/statusbar/policy/Clock$2;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Clock$2;->lambda$onReceive$3$Clock$2()V

    return-void
.end method