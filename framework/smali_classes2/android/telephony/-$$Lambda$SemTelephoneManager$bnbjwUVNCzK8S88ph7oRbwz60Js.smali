.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager;

.field private final synthetic f$1:I

.field private final synthetic f$2:Z

.field private final synthetic f$3:Ljava/lang/String;

.field private final synthetic f$4:Z

.field private final synthetic f$5:Ljava/lang/String;

.field private final synthetic f$6:Landroid/telephony/SemTelephoneManager$OnResultListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager;IZLjava/lang/String;ZLjava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;->f$0:Landroid/telephony/SemTelephoneManager;

    iput p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;->f$1:I

    iput-boolean p3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;->f$2:Z

    iput-object p4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;->f$3:Ljava/lang/String;

    iput-boolean p5, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;->f$4:Z

    iput-object p6, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;->f$5:Ljava/lang/String;

    iput-object p7, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;->f$6:Landroid/telephony/SemTelephoneManager$OnResultListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;->f$0:Landroid/telephony/SemTelephoneManager;

    iget v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;->f$1:I

    iget-boolean v2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;->f$2:Z

    iget-object v3, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;->f$3:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;->f$4:Z

    iget-object v5, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;->f$5:Ljava/lang/String;

    iget-object v6, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$bnbjwUVNCzK8S88ph7oRbwz60Js;->f$6:Landroid/telephony/SemTelephoneManager$OnResultListener;

    invoke-static/range {v0 .. v6}, Landroid/telephony/SemTelephoneManager;->lambda$setCallBarringEnabled$46(Landroid/telephony/SemTelephoneManager;IZLjava/lang/String;ZLjava/lang/String;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    return-void
.end method
