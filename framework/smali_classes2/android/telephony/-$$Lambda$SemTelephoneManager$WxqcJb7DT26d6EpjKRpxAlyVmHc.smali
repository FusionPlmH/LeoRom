.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$WxqcJb7DT26d6EpjKRpxAlyVmHc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/telephony/SemTelephoneManager$OnBiResultListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnBiResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$WxqcJb7DT26d6EpjKRpxAlyVmHc;->f$0:Landroid/telephony/SemTelephoneManager;

    iput p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$WxqcJb7DT26d6EpjKRpxAlyVmHc;->f$1:I

    iput-object p3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$WxqcJb7DT26d6EpjKRpxAlyVmHc;->f$2:Landroid/telephony/SemTelephoneManager$OnBiResultListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$WxqcJb7DT26d6EpjKRpxAlyVmHc;->f$0:Landroid/telephony/SemTelephoneManager;

    iget v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$WxqcJb7DT26d6EpjKRpxAlyVmHc;->f$1:I

    iget-object v2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$WxqcJb7DT26d6EpjKRpxAlyVmHc;->f$2:Landroid/telephony/SemTelephoneManager$OnBiResultListener;

    invoke-static {v0, v1, v2}, Landroid/telephony/SemTelephoneManager;->lambda$getCdmaRoamingPreference$106(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OnBiResultListener;)V

    return-void
.end method