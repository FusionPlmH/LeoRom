.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$uxPb6_TdwYKOB5rjjrMloQihoMg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/telephony/SemTelephoneManager$OnCompleteListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uxPb6_TdwYKOB5rjjrMloQihoMg;->f$0:Landroid/telephony/SemTelephoneManager;

    iput p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uxPb6_TdwYKOB5rjjrMloQihoMg;->f$1:I

    iput-object p3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uxPb6_TdwYKOB5rjjrMloQihoMg;->f$2:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uxPb6_TdwYKOB5rjjrMloQihoMg;->f$0:Landroid/telephony/SemTelephoneManager;

    iget v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uxPb6_TdwYKOB5rjjrMloQihoMg;->f$1:I

    iget-object v2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uxPb6_TdwYKOB5rjjrMloQihoMg;->f$2:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    invoke-static {v0, v1, v2}, Landroid/telephony/SemTelephoneManager;->lambda$setCsg$126(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    return-void
.end method
