.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$UFnOMIvNnfgyLJuKVpfYjU3w-9g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$UFnOMIvNnfgyLJuKVpfYjU3w-9g;->f$0:Landroid/telephony/SemTelephoneManager;

    iput p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$UFnOMIvNnfgyLJuKVpfYjU3w-9g;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$UFnOMIvNnfgyLJuKVpfYjU3w-9g;->f$0:Landroid/telephony/SemTelephoneManager;

    iget v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$UFnOMIvNnfgyLJuKVpfYjU3w-9g;->f$1:I

    invoke-static {v0, v1}, Landroid/telephony/SemTelephoneManager;->lambda$notifyTtyPreferredModeChanged$0(Landroid/telephony/SemTelephoneManager;I)V

    return-void
.end method
