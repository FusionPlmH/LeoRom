.class Landroid/telephony/SemTelephoneManager$18;
.super Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
.source "SemTelephoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SemTelephoneManager;->lambda$getPreferredNetworkType$96(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/SemTelephoneManager;

.field final synthetic val$listener:Landroid/telephony/SemTelephoneManager$OnResultListener;


# direct methods
.method constructor <init>(Landroid/telephony/SemTelephoneManager;Landroid/telephony/SemTelephoneManager$OnResultListener;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SemTelephoneManager$18;->this$0:Landroid/telephony/SemTelephoneManager;

    iput-object p2, p0, Landroid/telephony/SemTelephoneManager$18;->val$listener:Landroid/telephony/SemTelephoneManager$OnResultListener;

    invoke-direct {p0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onResult$0(Landroid/telephony/SemTelephoneManager$OnResultListener;ZILjava/lang/String;)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0, p3}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/util/List;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    iget-object v1, p0, Landroid/telephony/SemTelephoneManager$18;->val$listener:Landroid/telephony/SemTelephoneManager$OnResultListener;

    new-instance v2, Landroid/telephony/-$$Lambda$SemTelephoneManager$18$0JhK5L0yQdNJnWceOvz0butj4Gk;

    invoke-direct {v2, v1, p1, v0, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$18$0JhK5L0yQdNJnWceOvz0butj4Gk;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;ZILjava/lang/String;)V

    invoke-static {v2}, Landroid/telephony/SemTelephoneManager;->access$200(Ljava/lang/Runnable;)V

    return-void
.end method
