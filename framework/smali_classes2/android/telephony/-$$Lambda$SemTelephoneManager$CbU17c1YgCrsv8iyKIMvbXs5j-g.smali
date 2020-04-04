.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$CbU17c1YgCrsv8iyKIMvbXs5j-g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

.field private final synthetic f$1:Landroid/telephony/SemTelephoneManager$CallState;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Landroid/telephony/SemTelephoneManager$CallState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$CbU17c1YgCrsv8iyKIMvbXs5j-g;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$CbU17c1YgCrsv8iyKIMvbXs5j-g;->f$1:Landroid/telephony/SemTelephoneManager$CallState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$CbU17c1YgCrsv8iyKIMvbXs5j-g;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$CbU17c1YgCrsv8iyKIMvbXs5j-g;->f$1:Landroid/telephony/SemTelephoneManager$CallState;

    invoke-static {v0, v1}, Landroid/telephony/SemTelephoneManager;->lambda$getActiveFgCall$64(Landroid/telephony/SemTelephoneManager$OnResultListener;Landroid/telephony/SemTelephoneManager$CallState;)V

    return-void
.end method
