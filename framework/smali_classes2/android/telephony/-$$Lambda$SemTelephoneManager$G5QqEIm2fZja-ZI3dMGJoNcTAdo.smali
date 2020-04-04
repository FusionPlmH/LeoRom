.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$G5QqEIm2fZja-ZI3dMGJoNcTAdo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/telephony/SemTelephoneManager$OperatorInfo;

.field private final synthetic f$3:Z

.field private final synthetic f$4:Landroid/telephony/SemTelephoneManager$OnCompleteListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OperatorInfo;ZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$G5QqEIm2fZja-ZI3dMGJoNcTAdo;->f$0:Landroid/telephony/SemTelephoneManager;

    iput p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$G5QqEIm2fZja-ZI3dMGJoNcTAdo;->f$1:I

    iput-object p3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$G5QqEIm2fZja-ZI3dMGJoNcTAdo;->f$2:Landroid/telephony/SemTelephoneManager$OperatorInfo;

    iput-boolean p4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$G5QqEIm2fZja-ZI3dMGJoNcTAdo;->f$3:Z

    iput-object p5, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$G5QqEIm2fZja-ZI3dMGJoNcTAdo;->f$4:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$G5QqEIm2fZja-ZI3dMGJoNcTAdo;->f$0:Landroid/telephony/SemTelephoneManager;

    iget v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$G5QqEIm2fZja-ZI3dMGJoNcTAdo;->f$1:I

    iget-object v2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$G5QqEIm2fZja-ZI3dMGJoNcTAdo;->f$2:Landroid/telephony/SemTelephoneManager$OperatorInfo;

    iget-boolean v3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$G5QqEIm2fZja-ZI3dMGJoNcTAdo;->f$3:Z

    iget-object v4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$G5QqEIm2fZja-ZI3dMGJoNcTAdo;->f$4:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/telephony/SemTelephoneManager;->lambda$setNetwork$112(Landroid/telephony/SemTelephoneManager;ILandroid/telephony/SemTelephoneManager$OperatorInfo;ZLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    return-void
.end method
