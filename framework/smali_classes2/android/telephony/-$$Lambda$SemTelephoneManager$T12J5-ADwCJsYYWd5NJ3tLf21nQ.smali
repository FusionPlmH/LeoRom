.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$T12J5-ADwCJsYYWd5NJ3tLf21nQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$T12J5-ADwCJsYYWd5NJ3tLf21nQ;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$T12J5-ADwCJsYYWd5NJ3tLf21nQ;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$T12J5-ADwCJsYYWd5NJ3tLf21nQ;->f$0:Landroid/telephony/SemTelephoneManager$OnResultListener;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$T12J5-ADwCJsYYWd5NJ3tLf21nQ;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/telephony/SemTelephoneManager;->lambda$getLine1Number$36(Landroid/telephony/SemTelephoneManager$OnResultListener;Ljava/lang/String;)V

    return-void
.end method