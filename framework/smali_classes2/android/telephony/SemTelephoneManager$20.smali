.class Landroid/telephony/SemTelephoneManager$20;
.super Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;
.source "SemTelephoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SemTelephoneManager;->lambda$invokeOemRilRequestRaw$100(I[BLandroid/telephony/SemTelephoneManager$OnResultListener;)V
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

    iput-object p1, p0, Landroid/telephony/SemTelephoneManager$20;->this$0:Landroid/telephony/SemTelephoneManager;

    iput-object p2, p0, Landroid/telephony/SemTelephoneManager$20;->val$listener:Landroid/telephony/SemTelephoneManager$OnResultListener;

    invoke-direct {p0}, Lcom/samsung/telephony/phone/service/internalservice/IOnListResultListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onResult$0(Landroid/telephony/SemTelephoneManager$OnResultListener;Z[BLjava/lang/String;)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onResult$1(Landroid/telephony/SemTelephoneManager$OnResultListener;ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2}, Landroid/telephony/SemTelephoneManager$OnResultListener;->onResult(ZLjava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onResult(ZLjava/util/List;Ljava/lang/String;)V
    .locals 9

    if-eqz p2, :cond_1

    move-object v0, p2

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Byte;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Byte;

    array-length v3, v2

    new-array v3, v3, [B

    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v2, v1

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    aput-byte v8, v3, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v7

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/telephony/SemTelephoneManager$20;->val$listener:Landroid/telephony/SemTelephoneManager$OnResultListener;

    new-instance v5, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$Accas0qgX1BTuvI6Xaw7glw9MRA;

    invoke-direct {v5, v1, p1, v3, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$Accas0qgX1BTuvI6Xaw7glw9MRA;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;Z[BLjava/lang/String;)V

    invoke-static {v5}, Landroid/telephony/SemTelephoneManager;->access$200(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/telephony/SemTelephoneManager$20;->val$listener:Landroid/telephony/SemTelephoneManager$OnResultListener;

    new-instance v1, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$kFBw9JhrNFpEcbMwTrHGF4n4VSQ;

    invoke-direct {v1, v0, p1, p3}, Landroid/telephony/-$$Lambda$SemTelephoneManager$20$kFBw9JhrNFpEcbMwTrHGF4n4VSQ;-><init>(Landroid/telephony/SemTelephoneManager$OnResultListener;ZLjava/lang/String;)V

    invoke-static {v1}, Landroid/telephony/SemTelephoneManager;->access$200(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method
