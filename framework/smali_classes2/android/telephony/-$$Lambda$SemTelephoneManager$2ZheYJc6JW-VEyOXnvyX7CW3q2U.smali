.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$2ZheYJc6JW-VEyOXnvyX7CW3q2U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

.field private final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$2ZheYJc6JW-VEyOXnvyX7CW3q2U;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$2ZheYJc6JW-VEyOXnvyX7CW3q2U;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$2ZheYJc6JW-VEyOXnvyX7CW3q2U;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$2ZheYJc6JW-VEyOXnvyX7CW3q2U;->f$1:Ljava/lang/Exception;

    invoke-static {v0, v1}, Landroid/telephony/SemTelephoneManager;->lambda$setIncomingCallBarringInfoList$51(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Exception;)V

    return-void
.end method
