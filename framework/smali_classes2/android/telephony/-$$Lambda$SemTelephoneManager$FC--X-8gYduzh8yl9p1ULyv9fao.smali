.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$FC--X-8gYduzh8yl9p1ULyv9fao;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Landroid/telephony/SemTelephoneManager$OnResultListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FC--X-8gYduzh8yl9p1ULyv9fao;->f$0:Landroid/telephony/SemTelephoneManager;

    iput p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FC--X-8gYduzh8yl9p1ULyv9fao;->f$1:I

    iput-object p3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FC--X-8gYduzh8yl9p1ULyv9fao;->f$2:Ljava/lang/String;

    iput-object p4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FC--X-8gYduzh8yl9p1ULyv9fao;->f$3:Ljava/lang/String;

    iput-object p5, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FC--X-8gYduzh8yl9p1ULyv9fao;->f$4:Landroid/telephony/SemTelephoneManager$OnResultListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FC--X-8gYduzh8yl9p1ULyv9fao;->f$0:Landroid/telephony/SemTelephoneManager;

    iget v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FC--X-8gYduzh8yl9p1ULyv9fao;->f$1:I

    iget-object v2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FC--X-8gYduzh8yl9p1ULyv9fao;->f$2:Ljava/lang/String;

    iget-object v3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FC--X-8gYduzh8yl9p1ULyv9fao;->f$3:Ljava/lang/String;

    iget-object v4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$FC--X-8gYduzh8yl9p1ULyv9fao;->f$4:Landroid/telephony/SemTelephoneManager$OnResultListener;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/telephony/SemTelephoneManager;->lambda$changeCallBarringPassword$48(Landroid/telephony/SemTelephoneManager;ILjava/lang/String;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    return-void
.end method
