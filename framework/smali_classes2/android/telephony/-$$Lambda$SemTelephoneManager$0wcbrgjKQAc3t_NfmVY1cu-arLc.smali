.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$0wcbrgjKQAc3t_NfmVY1cu-arLc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager$OnBiResultListener;

.field private final synthetic f$1:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager$OnBiResultListener;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$0wcbrgjKQAc3t_NfmVY1cu-arLc;->f$0:Landroid/telephony/SemTelephoneManager$OnBiResultListener;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$0wcbrgjKQAc3t_NfmVY1cu-arLc;->f$1:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$0wcbrgjKQAc3t_NfmVY1cu-arLc;->f$0:Landroid/telephony/SemTelephoneManager$OnBiResultListener;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$0wcbrgjKQAc3t_NfmVY1cu-arLc;->f$1:Ljava/lang/Exception;

    invoke-static {v0, v1}, Landroid/telephony/SemTelephoneManager;->lambda$getCdmaRoamingPreference$105(Landroid/telephony/SemTelephoneManager$OnBiResultListener;Ljava/lang/Exception;)V

    return-void
.end method
