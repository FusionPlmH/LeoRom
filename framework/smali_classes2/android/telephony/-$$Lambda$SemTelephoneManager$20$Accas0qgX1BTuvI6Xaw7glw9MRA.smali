.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$20$Accas0qgX1BTuvI6Xaw7glw9MRA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

.field private final synthetic f$1:Z

.field private final synthetic f$2:[B

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Z[BLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$Accas0qgX1BTuvI6Xaw7glw9MRA;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iput-boolean p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$Accas0qgX1BTuvI6Xaw7glw9MRA;->f$1:Z

    iput-object p3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$Accas0qgX1BTuvI6Xaw7glw9MRA;->f$2:[B

    iput-object p4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$Accas0qgX1BTuvI6Xaw7glw9MRA;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$Accas0qgX1BTuvI6Xaw7glw9MRA;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iget-boolean v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$Accas0qgX1BTuvI6Xaw7glw9MRA;->f$1:Z

    iget-object v2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$Accas0qgX1BTuvI6Xaw7glw9MRA;->f$2:[B

    iget-object v3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$Accas0qgX1BTuvI6Xaw7glw9MRA;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/telephony/SemTelephoneManager$20;->lambda$onResult$0(Landroid/telephony/SemTelephoneManager$OnResultListener;Z[BLjava/lang/String;)V

    return-void
.end method
