.class Landroid/telephony/SemTelephoneManager$27;
.super Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
.source "SemTelephoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SemTelephoneManager;->lambda$getCsgList$114(ILandroid/telephony/SemTelephoneManager$OnResultListener;)V
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

    iput-object p1, p0, Landroid/telephony/SemTelephoneManager$27;->this$0:Landroid/telephony/SemTelephoneManager;

    iput-object p2, p0, Landroid/telephony/SemTelephoneManager$27;->val$listener:Landroid/telephony/SemTelephoneManager$OnResultListener;

    invoke-direct {p0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onResult$0(Ljava/util/List;)Landroid/telephony/SemTelephoneManager$CsgInfo;
    .locals 1

    invoke-static {p0}, Landroid/telephony/SemTelephoneManager$CsgInfo;->access$700(Ljava/util/List;)Landroid/telephony/SemTelephoneManager$CsgInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onResult$1(Landroid/telephony/SemTelephoneManager$OnResultListener;ZLjava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/util/List;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Landroid/telephony/-$$Lambda$SemTelephoneManager$27$2vKdbBwqTQJdzL79Pv9xBRksHJw;->INSTANCE:Landroid/telephony/-$$Lambda$SemTelephoneManager$27$2vKdbBwqTQJdzL79Pv9xBRksHJw;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/telephony/-$$Lambda$TnuBbhPixrFjSBw8atgHAlkhyb8;

    invoke-direct {v2, v0}, Landroid/telephony/-$$Lambda$TnuBbhPixrFjSBw8atgHAlkhyb8;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->count()J

    move-result-wide v1

    const-string v3, "SemTelephoneManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAvailableNetworkList size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/telephony/SemTelephoneManager$27;->val$listener:Landroid/telephony/SemTelephoneManager$OnResultListener;

    new-instance v2, Landroid/telephony/-$$Lambda$SemTelephoneManager$27$A8rqkvLsTUJouJtz-oykAC1HsAU;

    invoke-direct {v2, v1, p1, v0, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$27$A8rqkvLsTUJouJtz-oykAC1HsAU;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;ZLjava/util/List;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/telephony/SemTelephoneManager;->access$200(Ljava/lang/Runnable;)V

    return-void
.end method
