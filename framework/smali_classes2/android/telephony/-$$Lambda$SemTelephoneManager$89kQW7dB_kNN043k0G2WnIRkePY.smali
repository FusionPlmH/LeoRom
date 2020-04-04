.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$89kQW7dB_kNN043k0G2WnIRkePY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z

.field private final synthetic f$3:Landroid/telephony/SemTelephoneManager$OnCompleteListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager;IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$89kQW7dB_kNN043k0G2WnIRkePY;->f$0:Landroid/telephony/SemTelephoneManager;

    iput p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$89kQW7dB_kNN043k0G2WnIRkePY;->f$1:I

    iput-boolean p3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$89kQW7dB_kNN043k0G2WnIRkePY;->f$2:Z

    iput-object p4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$89kQW7dB_kNN043k0G2WnIRkePY;->f$3:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$89kQW7dB_kNN043k0G2WnIRkePY;->f$0:Landroid/telephony/SemTelephoneManager;

    iget v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$89kQW7dB_kNN043k0G2WnIRkePY;->f$1:I

    iget-boolean v2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$89kQW7dB_kNN043k0G2WnIRkePY;->f$2:Z

    iget-object v3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$89kQW7dB_kNN043k0G2WnIRkePY;->f$3:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/SemTelephoneManager;->lambda$setInternalPdnEnabled$134(Landroid/telephony/SemTelephoneManager;IZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    return-void
.end method
