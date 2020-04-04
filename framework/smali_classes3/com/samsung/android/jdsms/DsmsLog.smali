.class final Lcom/samsung/android/jdsms/DsmsLog;
.super Ljava/lang/Object;
.source "DsmsLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[DSMS-FRAMEWORK][LOG]"


# instance fields
.field private final mDetail:Ljava/lang/String;

.field private final mFeatureCode:Ljava/lang/String;

.field private final mValue:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/jdsms/DsmsLog;->validateFeatureCode(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsLog;->mFeatureCode:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsLog;->mDetail:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsLog;->mValue:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/jdsms/DsmsLog;->validateFeatureCode(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/jdsms/DsmsLog;->validateValue(Ljava/lang/Long;)V

    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsLog;->mFeatureCode:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsLog;->mDetail:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/jdsms/DsmsLog;->mValue:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/jdsms/DsmsLog;->validateFeatureCode(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/jdsms/DsmsLog;->validateDetail(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsLog;->mFeatureCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/jdsms/DsmsLog;->mDetail:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/jdsms/DsmsLog;->mValue:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/jdsms/DsmsLog;->validateFeatureCode(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/samsung/android/jdsms/DsmsLog;->validateDetail(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/samsung/android/jdsms/DsmsLog;->validateValue(Ljava/lang/Long;)V

    iput-object p1, p0, Lcom/samsung/android/jdsms/DsmsLog;->mFeatureCode:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/jdsms/DsmsLog;->mDetail:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/jdsms/DsmsLog;->mValue:Ljava/lang/Long;

    return-void
.end method

.method private static validateDetail(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[DSMS-FRAMEWORK][LOG] Detail field is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateFeatureCode(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[DSMS-FRAMEWORK][LOG] Identifier is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateValue(Ljava/lang/Long;)V
    .locals 2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "[DSMS-FRAMEWORK][LOG] Value field is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDetail()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsLog;->mDetail:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatureCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsLog;->mFeatureCode:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/jdsms/DsmsLog;->mValue:Ljava/lang/Long;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsLog;->mFeatureCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsLog;->mDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/jdsms/DsmsLog;->mValue:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
