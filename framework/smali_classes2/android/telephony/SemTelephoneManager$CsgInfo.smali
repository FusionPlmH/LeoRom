.class public final Landroid/telephony/SemTelephoneManager$CsgInfo;
.super Ljava/lang/Object;
.source "SemTelephoneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SemTelephoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CsgInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SemTelephoneManager$CsgInfo$Category;
    }
.end annotation


# instance fields
.field public category:Ljava/lang/String;

.field public id:I

.field public name:Ljava/lang/String;

.field public plmn:Ljava/lang/String;

.field public rat:I

.field public signalStrength:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->id:I

    const-string v1, ""

    iput-object v1, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->name:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->plmn:Ljava/lang/String;

    iput v0, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->rat:I

    const-string v1, "UNKNOWN"

    iput-object v1, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->category:Ljava/lang/String;

    iput v0, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->signalStrength:I

    return-void
.end method

.method static synthetic access$600(Landroid/telephony/SemTelephoneManager$CsgInfo;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Landroid/telephony/SemTelephoneManager$CsgInfo;->toList(Landroid/telephony/SemTelephoneManager$CsgInfo;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Ljava/util/List;)Landroid/telephony/SemTelephoneManager$CsgInfo;
    .locals 1

    invoke-static {p0}, Landroid/telephony/SemTelephoneManager$CsgInfo;->fromList(Ljava/util/List;)Landroid/telephony/SemTelephoneManager$CsgInfo;

    move-result-object v0

    return-object v0
.end method

.method private static fromList(Ljava/util/List;)Landroid/telephony/SemTelephoneManager$CsgInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/SemTelephoneManager$CsgInfo;"
        }
    .end annotation

    new-instance v0, Landroid/telephony/SemTelephoneManager$CsgInfo;

    invoke-direct {v0}, Landroid/telephony/SemTelephoneManager$CsgInfo;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/telephony/SemTelephoneManager$CsgInfo;->id:I

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/SemTelephoneManager$CsgInfo;->name:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/SemTelephoneManager$CsgInfo;->plmn:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/telephony/SemTelephoneManager$CsgInfo;->rat:I

    const/4 v1, 0x4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Landroid/telephony/SemTelephoneManager$CsgInfo;->category:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroid/telephony/SemTelephoneManager$CsgInfo;->signalStrength:I

    return-object v0
.end method

.method private static toList(Landroid/telephony/SemTelephoneManager$CsgInfo;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SemTelephoneManager$CsgInfo;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x6

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget v2, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->plmn:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->rat:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->category:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v2, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->signalStrength:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CsgInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->plmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->rat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SemTelephoneManager$CsgInfo;->signalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
