.class public Lcom/android/internal/telephony/CsgInfo;
.super Ljava/lang/Object;
.source "CsgInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CsgInfo$CsgListCat;
    }
.end annotation


# instance fields
.field private mCsgCat:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

.field private mCsgId:I

.field private mCsgName:Ljava/lang/String;

.field private mOperatorNumeric:Ljava/lang/String;

.field private mRat:I

.field private mSignalStrength:I


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgId:I

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgName:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/CsgInfo;->mOperatorNumeric:Ljava/lang/String;

    iput v0, p0, Lcom/android/internal/telephony/CsgInfo;->mRat:I

    sget-object v1, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->UNKNOWN:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    iput-object v1, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgCat:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    iput v0, p0, Lcom/android/internal/telephony/CsgInfo;->mSignalStrength:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;III)V
    .locals 7

    invoke-static {p5}, Lcom/android/internal/telephony/CsgInfo;->convertFromInt(I)Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/CsgInfo;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/CsgInfo$CsgListCat;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/CsgInfo$CsgListCat;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgId:I

    iput-object p2, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/CsgInfo;->mOperatorNumeric:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/telephony/CsgInfo;->mRat:I

    iput-object p5, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgCat:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    iput p6, p0, Lcom/android/internal/telephony/CsgInfo;->mSignalStrength:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CsgInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CsgInfo;->copyFrom(Lcom/android/internal/telephony/CsgInfo;)V

    return-void
.end method

.method public static convertFromInt(I)Lcom/android/internal/telephony/CsgInfo$CsgListCat;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->UNKNOWN:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->CONNECTED:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->OPERATOR:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/CsgInfo$CsgListCat;->ALLOWED:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected copyFrom(Lcom/android/internal/telephony/CsgInfo;)V
    .locals 1

    iget v0, p1, Lcom/android/internal/telephony/CsgInfo;->mCsgId:I

    iput v0, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgId:I

    iget-object v0, p1, Lcom/android/internal/telephony/CsgInfo;->mCsgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/internal/telephony/CsgInfo;->mOperatorNumeric:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CsgInfo;->mOperatorNumeric:Ljava/lang/String;

    iget v0, p1, Lcom/android/internal/telephony/CsgInfo;->mRat:I

    iput v0, p0, Lcom/android/internal/telephony/CsgInfo;->mRat:I

    iget-object v0, p1, Lcom/android/internal/telephony/CsgInfo;->mCsgCat:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    iput-object v0, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgCat:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    iget v0, p1, Lcom/android/internal/telephony/CsgInfo;->mSignalStrength:I

    iput v0, p0, Lcom/android/internal/telephony/CsgInfo;->mSignalStrength:I

    return-void
.end method

.method public getCategory()Lcom/android/internal/telephony/CsgInfo$CsgListCat;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgCat:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgName:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/CsgInfo;->mOperatorNumeric:Ljava/lang/String;

    return-object v0
.end method

.method public getRat()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/CsgInfo;->mRat:I

    return v0
.end method

.method public getSignalStrength()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/CsgInfo;->mSignalStrength:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CsgInfo: { ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", plmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CsgInfo;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", RAT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CsgInfo;->mRat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CsgInfo;->mCsgCat:Lcom/android/internal/telephony/CsgInfo$CsgListCat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CsgInfo;->mSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "dBm }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
