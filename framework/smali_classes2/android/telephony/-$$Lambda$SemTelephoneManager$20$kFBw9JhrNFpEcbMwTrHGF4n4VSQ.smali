.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$20$kFBw9JhrNFpEcbMwTrHGF4n4VSQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager$OnResultListener;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$kFBw9JhrNFpEcbMwTrHGF4n4VSQ;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iput-boolean p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$kFBw9JhrNFpEcbMwTrHGF4n4VSQ;->f$1:Z

    iput-object p3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$kFBw9JhrNFpEcbMwTrHGF4n4VSQ;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$kFBw9JhrNFpEcbMwTrHGF4n4VSQ;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iget-boolean v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$kFBw9JhrNFpEcbMwTrHGF4n4VSQ;->f$1:Z

    iget-object v2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$kFBw9JhrNFpEcbMwTrHGF4n4VSQ;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/telephony/SemTelephoneManager$20;->lambda$onResult$1(Landroid/telephony/SemTelephoneManager$OnResultListener;ZLjava/lang/String;)V

    return-void
.end method
