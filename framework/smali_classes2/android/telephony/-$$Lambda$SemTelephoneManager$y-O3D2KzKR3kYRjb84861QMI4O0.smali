.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$y-O3D2KzKR3kYRjb84861QMI4O0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager$OnResultListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$y-O3D2KzKR3kYRjb84861QMI4O0;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iput p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$y-O3D2KzKR3kYRjb84861QMI4O0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$y-O3D2KzKR3kYRjb84861QMI4O0;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iget v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$y-O3D2KzKR3kYRjb84861QMI4O0;->f$1:I

    invoke-static {v0, v1}, Landroid/telephony/SemTelephoneManager;->lambda$getIccPin2RetryCount$5(Landroid/telephony/SemTelephoneManager$OnResultListener;I)V

    return-void
.end method
