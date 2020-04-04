.class Landroid/telephony/SemTelephoneManager$3;
.super Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;
.source "SemTelephoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SemTelephoneManager;->lambda$setIccLoci$28(I[BLandroid/telephony/SemTelephoneManager$OnCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SemTelephoneManager;

.field final synthetic val$listener:Landroid/telephony/SemTelephoneManager$OnCompleteListener;


# direct methods
.method constructor <init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnCompleteListener;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SemTelephoneManager$3;->this$0:Landroid/telephony/SemTelephoneManager;

    iput-object p2, p0, Landroid/telephony/SemTelephoneManager$3;->val$listener:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    invoke-direct {p0}, Lcom/samsung/telephony/phone/service/internalservice/IOnResultListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onResult$0(Landroid/telephony/SemTelephoneManager$OnCompleteListener;ZLjava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/telephony/SemTelephoneManager$OnCompleteListener;->onCompleted(ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/SemTelephoneManager$3;->val$listener:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SemTelephoneManager$3;->val$listener:Landroid/telephony/SemTelephoneManager$OnCompleteListener;

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$3$QL4RFuCR3xJtJQL0yQpILz4NqeE;

    invoke-direct {v1, v0, p1, p2}, Landroid/telephony/-$$Lambda$SemTelephoneManager$3$QL4RFuCR3xJtJQL0yQpILz4NqeE;-><init>(Landroid/telephony/SemTelephoneManager$OnCompleteListener;ZLjava/lang/String;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->access$200(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
