.class Landroid/telephony/SemTelephoneManager$11;
.super Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
.source "SemTelephoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SemTelephoneManager;->createIcBarringResultListener(Landroid/telephony/SemTelephoneManager$OnResultListener;)Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
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

    iput-object p1, p0, Landroid/telephony/SemTelephoneManager$11;->this$0:Landroid/telephony/SemTelephoneManager;

    iput-object p2, p0, Landroid/telephony/SemTelephoneManager$11;->val$listener:Landroid/telephony/SemTelephoneManager$OnResultListener;

    invoke-direct {p0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onResult$0(Landroid/telephony/SemTelephoneManager$OnResultListener;Z[Landroid/telephony/SemTelephoneManager$CallBarringInfo;Ljava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/util/List;Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    move-object v1, p2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/telephony/SemTelephoneManager$CallBarringInfo;

    const/4 v3, 0x0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    add-int/lit8 v6, v3, 0x1

    new-instance v7, Landroid/telephony/SemTelephoneManager$CallBarringInfo;

    const-string/jumbo v8, "time"

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "icbnumber"

    const-string v11, ""

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "barringEnabled"

    invoke-virtual {v5, v11, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    invoke-direct {v7, v8, v10, v11, v9}, Landroid/telephony/SemTelephoneManager$CallBarringInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/telephony/SemTelephoneManager$1;)V

    aput-object v7, v2, v3

    nop

    move v3, v6

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    new-array v2, v0, [Landroid/telephony/SemTelephoneManager$CallBarringInfo;

    :goto_1
    move-object v0, v2

    iget-object v1, p0, Landroid/telephony/SemTelephoneManager$11;->val$listener:Landroid/telephony/SemTelephoneManager$OnResultListener;

    new-instance v2, Landroid/telephony/-$$Lambda$SemTelephoneManager$11$k84c7Q3KZx--NmJ1PLTWArGF5XY;

    invoke-direct {v2, v1, p1, v0, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$11$k84c7Q3KZx--NmJ1PLTWArGF5XY;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Z[Landroid/telephony/SemTelephoneManager$CallBarringInfo;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/telephony/SemTelephoneManager;->access$200(Ljava/lang/Runnable;)V

    return-void
.end method
