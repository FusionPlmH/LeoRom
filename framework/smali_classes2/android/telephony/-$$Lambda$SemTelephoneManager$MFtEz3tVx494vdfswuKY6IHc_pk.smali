.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$MFtEz3tVx494vdfswuKY6IHc_pk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Landroid/telephony/SemTelephoneManager$OnCompleteListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager;IILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$MFtEz3tVx494vdfswuKY6IHc_pk;->f$0:Landroid/telephony/SemTelephoneManager;

    iput p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$MFtEz3tVx494vdfswuKY6IHc_pk;->f$1:I

    iput p3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$MFtEz3tVx494vdfswuKY6IHc_pk;->f$2:I

    iput-object p4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$MFtEz3tVx494vdfswuKY6IHc_pk;->f$3:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$MFtEz3tVx494vdfswuKY6IHc_pk;->f$0:Landroid/telephony/SemTelephoneManager;

    iget v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$MFtEz3tVx494vdfswuKY6IHc_pk;->f$1:I

    iget v2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$MFtEz3tVx494vdfswuKY6IHc_pk;->f$2:I

    iget-object v3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$MFtEz3tVx494vdfswuKY6IHc_pk;->f$3:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/SemTelephoneManager;->lambda$setPreferredNetworkType$98(Landroid/telephony/SemTelephoneManager;IILandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    return-void
.end method
