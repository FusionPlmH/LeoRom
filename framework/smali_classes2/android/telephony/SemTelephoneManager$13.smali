.class Landroid/telephony/SemTelephoneManager$13;
.super Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
.source "SemTelephoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SemTelephoneManager;->lambda$setCallForwardingOption$56(IZIZLjava/lang/String;ILandroid/telephony/SemTelephoneManager$OnTriResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SemTelephoneManager;

.field final synthetic val$listener:Landroid/telephony/SemTelephoneManager$OnTriResultListener;


# direct methods
.method constructor <init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnTriResultListener;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SemTelephoneManager$13;->this$0:Landroid/telephony/SemTelephoneManager;

    iput-object p2, p0, Landroid/telephony/SemTelephoneManager$13;->val$listener:Landroid/telephony/SemTelephoneManager$OnTriResultListener;

    invoke-direct {p0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/util/List;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/SemTelephoneManager$13;->this$0:Landroid/telephony/SemTelephoneManager;

    iget-object v1, p0, Landroid/telephony/SemTelephoneManager$13;->val$listener:Landroid/telephony/SemTelephoneManager$OnTriResultListener;

    invoke-static {v0, p1, p2, p3, v1}, Landroid/telephony/SemTelephoneManager;->access$1200(Landroid/telephony/SemTelephoneManager;ZLjava/util/List;Ljava/lang/String;Landroid/telephony/SemTelephoneManager$OnTriResultListener;)V

    return-void
.end method
