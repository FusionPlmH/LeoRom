.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$wr4vI61HexPpEGvPeExUrn7iaGE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager$OnResultListener;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$wr4vI61HexPpEGvPeExUrn7iaGE;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iput p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$wr4vI61HexPpEGvPeExUrn7iaGE;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$wr4vI61HexPpEGvPeExUrn7iaGE;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iget v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$wr4vI61HexPpEGvPeExUrn7iaGE;->f$1:I

    invoke-static {v0, v1}, Landroid/telephony/SemTelephoneManager;->lambda$getIccPuk2RetryCount$11(Landroid/telephony/SemTelephoneManager$OnResultListener;I)V

    return-void
.end method
