.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$uYcdKH_D7UF7jWR51-ERgke33_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Landroid/telephony/SemTelephoneManager$OnCompleteListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager;IZLjava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uYcdKH_D7UF7jWR51-ERgke33_4;->f$0:Landroid/telephony/SemTelephoneManager;

    iput p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uYcdKH_D7UF7jWR51-ERgke33_4;->f$1:I

    iput-boolean p3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uYcdKH_D7UF7jWR51-ERgke33_4;->f$2:Z

    iput-object p4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uYcdKH_D7UF7jWR51-ERgke33_4;->f$3:Ljava/lang/String;

    iput-object p5, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uYcdKH_D7UF7jWR51-ERgke33_4;->f$4:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uYcdKH_D7UF7jWR51-ERgke33_4;->f$0:Landroid/telephony/SemTelephoneManager;

    iget v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uYcdKH_D7UF7jWR51-ERgke33_4;->f$1:I

    iget-boolean v2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uYcdKH_D7UF7jWR51-ERgke33_4;->f$2:Z

    iget-object v3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uYcdKH_D7UF7jWR51-ERgke33_4;->f$3:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$uYcdKH_D7UF7jWR51-ERgke33_4;->f$4:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/telephony/SemTelephoneManager;->lambda$setIccFdnEnabled$21(Landroid/telephony/SemTelephoneManager;IZLjava/lang/String;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V

    return-void
.end method