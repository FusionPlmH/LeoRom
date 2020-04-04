.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$wlUFUy39TJ5y1yuSlzFOI5-CKYk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$wlUFUy39TJ5y1yuSlzFOI5-CKYk;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iput-boolean p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$wlUFUy39TJ5y1yuSlzFOI5-CKYk;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$wlUFUy39TJ5y1yuSlzFOI5-CKYk;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iget-boolean v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$wlUFUy39TJ5y1yuSlzFOI5-CKYk;->f$1:Z

    invoke-static {v0, v1}, Landroid/telephony/SemTelephoneManager;->lambda$getIccPin2Blocked$8(Landroid/telephony/SemTelephoneManager$OnResultListener;Z)V

    return-void
.end method
