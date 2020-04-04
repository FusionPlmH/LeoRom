.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$5EJNT5ArVOnwa6upzV_LzHhC04c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z

.field private final synthetic f$3:I

.field private final synthetic f$4:Landroid/telephony/SemTelephoneManager$OnTriResultListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager;IZILandroid/telephony/SemTelephoneManager$OnTriResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$5EJNT5ArVOnwa6upzV_LzHhC04c;->f$0:Landroid/telephony/SemTelephoneManager;

    iput p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$5EJNT5ArVOnwa6upzV_LzHhC04c;->f$1:I

    iput-boolean p3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$5EJNT5ArVOnwa6upzV_LzHhC04c;->f$2:Z

    iput p4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$5EJNT5ArVOnwa6upzV_LzHhC04c;->f$3:I

    iput-object p5, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$5EJNT5ArVOnwa6upzV_LzHhC04c;->f$4:Landroid/telephony/SemTelephoneManager$OnTriResultListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$5EJNT5ArVOnwa6upzV_LzHhC04c;->f$0:Landroid/telephony/SemTelephoneManager;

    iget v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$5EJNT5ArVOnwa6upzV_LzHhC04c;->f$1:I

    iget-boolean v2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$5EJNT5ArVOnwa6upzV_LzHhC04c;->f$2:Z

    iget v3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$5EJNT5ArVOnwa6upzV_LzHhC04c;->f$3:I

    iget-object v4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$5EJNT5ArVOnwa6upzV_LzHhC04c;->f$4:Landroid/telephony/SemTelephoneManager$OnTriResultListener;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/telephony/SemTelephoneManager;->lambda$getCallForwardingOption$54(Landroid/telephony/SemTelephoneManager;IZILandroid/telephony/SemTelephoneManager$OnTriResultListener;)V

    return-void
.end method
