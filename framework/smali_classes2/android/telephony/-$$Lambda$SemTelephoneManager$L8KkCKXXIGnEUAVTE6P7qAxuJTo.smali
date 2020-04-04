.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$L8KkCKXXIGnEUAVTE6P7qAxuJTo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager$OnTriResultListener;

.field private final synthetic f$1:Z

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:Ljava/lang/String;

.field private final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager$OnTriResultListener;ZIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$L8KkCKXXIGnEUAVTE6P7qAxuJTo;->f$0:Landroid/telephony/SemTelephoneManager$OnTriResultListener;

    iput-boolean p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$L8KkCKXXIGnEUAVTE6P7qAxuJTo;->f$1:Z

    iput p3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$L8KkCKXXIGnEUAVTE6P7qAxuJTo;->f$2:I

    iput p4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$L8KkCKXXIGnEUAVTE6P7qAxuJTo;->f$3:I

    iput-object p5, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$L8KkCKXXIGnEUAVTE6P7qAxuJTo;->f$4:Ljava/lang/String;

    iput-object p6, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$L8KkCKXXIGnEUAVTE6P7qAxuJTo;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$L8KkCKXXIGnEUAVTE6P7qAxuJTo;->f$0:Landroid/telephony/SemTelephoneManager$OnTriResultListener;

    iget-boolean v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$L8KkCKXXIGnEUAVTE6P7qAxuJTo;->f$1:Z

    iget v2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$L8KkCKXXIGnEUAVTE6P7qAxuJTo;->f$2:I

    iget v3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$L8KkCKXXIGnEUAVTE6P7qAxuJTo;->f$3:I

    iget-object v4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$L8KkCKXXIGnEUAVTE6P7qAxuJTo;->f$4:Ljava/lang/String;

    iget-object v5, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$L8KkCKXXIGnEUAVTE6P7qAxuJTo;->f$5:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Landroid/telephony/SemTelephoneManager;->lambda$handleCallForwardingCallback$57(Landroid/telephony/SemTelephoneManager$OnTriResultListener;ZIILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
