.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$23$U8p6c4Cruy0SjKw7gHRiyMHwrG8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager$OnBiResultListener;

.field private final synthetic f$1:Z

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager$OnBiResultListener;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$23$U8p6c4Cruy0SjKw7gHRiyMHwrG8;->f$0:Landroid/telephony/SemTelephoneManager$OnBiResultListener;

    iput-boolean p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$23$U8p6c4Cruy0SjKw7gHRiyMHwrG8;->f$1:Z

    iput p3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$23$U8p6c4Cruy0SjKw7gHRiyMHwrG8;->f$2:I

    iput-object p4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$23$U8p6c4Cruy0SjKw7gHRiyMHwrG8;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$23$U8p6c4Cruy0SjKw7gHRiyMHwrG8;->f$0:Landroid/telephony/SemTelephoneManager$OnBiResultListener;

    iget-boolean v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$23$U8p6c4Cruy0SjKw7gHRiyMHwrG8;->f$1:Z

    iget v2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$23$U8p6c4Cruy0SjKw7gHRiyMHwrG8;->f$2:I

    iget-object v3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$23$U8p6c4Cruy0SjKw7gHRiyMHwrG8;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/SemTelephoneManager$23;->lambda$onResult$0(Landroid/telephony/SemTelephoneManager$OnBiResultListener;ZILjava/lang/String;)V

    return-void
.end method
