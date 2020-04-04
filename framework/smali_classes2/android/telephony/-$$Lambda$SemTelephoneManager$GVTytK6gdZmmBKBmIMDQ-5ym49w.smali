.class public final synthetic Landroid/telephony/-$$Lambda$SemTelephoneManager$GVTytK6gdZmmBKBmIMDQ-5ym49w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/telephony/SemTelephoneManager;

.field private final synthetic f$1:Landroid/telephony/SemTelephoneManager$OnResultListener;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$GVTytK6gdZmmBKBmIMDQ-5ym49w;->f$0:Landroid/telephony/SemTelephoneManager;

    iput-object p2, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$GVTytK6gdZmmBKBmIMDQ-5ym49w;->f$1:Landroid/telephony/SemTelephoneManager$OnResultListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$GVTytK6gdZmmBKBmIMDQ-5ym49w;->f$0:Landroid/telephony/SemTelephoneManager;

    iget-object v1, p0, Landroid/telephony/-$$Lambda$SemTelephoneManager$GVTytK6gdZmmBKBmIMDQ-5ym49w;->f$1:Landroid/telephony/SemTelephoneManager$OnResultListener;

    invoke-static {v0, v1}, Landroid/telephony/SemTelephoneManager;->lambda$hasVoLteVideoCall$72(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V

    return-void
.end method
