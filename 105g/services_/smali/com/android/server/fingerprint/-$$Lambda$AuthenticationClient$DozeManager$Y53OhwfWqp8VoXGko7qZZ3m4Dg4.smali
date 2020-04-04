.class public final synthetic Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$DozeManager$Y53OhwfWqp8VoXGko7qZZ3m4Dg4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$DozeManager$Y53OhwfWqp8VoXGko7qZZ3m4Dg4;->f$0:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    iput p2, p0, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$DozeManager$Y53OhwfWqp8VoXGko7qZZ3m4Dg4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$DozeManager$Y53OhwfWqp8VoXGko7qZZ3m4Dg4;->f$0:Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;

    iget v1, p0, Lcom/android/server/fingerprint/-$$Lambda$AuthenticationClient$DozeManager$Y53OhwfWqp8VoXGko7qZZ3m4Dg4;->f$1:I

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;->lambda$showHelpMessage$0(Lcom/android/server/fingerprint/AuthenticationClient$DozeManager;I)V

    return-void
.end method
