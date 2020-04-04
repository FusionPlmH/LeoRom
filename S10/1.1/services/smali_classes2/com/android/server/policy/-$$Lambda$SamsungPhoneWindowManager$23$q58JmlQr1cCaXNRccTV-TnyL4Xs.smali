.class public final synthetic Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$23$q58JmlQr1cCaXNRccTV-TnyL4Xs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/SamsungPhoneWindowManager$23;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager$23;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$23$q58JmlQr1cCaXNRccTV-TnyL4Xs;->f$0:Lcom/android/server/policy/SamsungPhoneWindowManager$23;

    iput-boolean p2, p0, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$23$q58JmlQr1cCaXNRccTV-TnyL4Xs;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$23$q58JmlQr1cCaXNRccTV-TnyL4Xs;->f$0:Lcom/android/server/policy/SamsungPhoneWindowManager$23;

    iget-boolean v1, p0, Lcom/android/server/policy/-$$Lambda$SamsungPhoneWindowManager$23$q58JmlQr1cCaXNRccTV-TnyL4Xs;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager$23;->lambda$onDesktopModeChanged$0(Lcom/android/server/policy/SamsungPhoneWindowManager$23;Z)V

    return-void
.end method
