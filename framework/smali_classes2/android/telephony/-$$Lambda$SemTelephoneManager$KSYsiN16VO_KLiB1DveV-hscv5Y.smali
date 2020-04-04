.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$KSYsiN16VO_KLiB1DveV-hscv5Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

.field private final synthetic f$1:Ljava/lang/Throwable;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$KSYsiN16VO_KLiB1DveV-hscv5Y;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$KSYsiN16VO_KLiB1DveV-hscv5Y;->f$1:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$KSYsiN16VO_KLiB1DveV-hscv5Y;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$KSYsiN16VO_KLiB1DveV-hscv5Y;->f$1:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Landroid/telephony/SemTelephoneManager;->lambda$hasVoLteVideoCall$71(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/Throwable;)V

    return-void
.end method
