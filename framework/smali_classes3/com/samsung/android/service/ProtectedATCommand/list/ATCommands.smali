.class public Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
.super Ljava/lang/Object;
.source "ATCommands.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ATCommands"


# instance fields
.field private mCmds:[B

.field private mFlags:Z

.field private mName:Ljava/lang/String;

.field private mProcessor:I

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    iput-boolean p3, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    iput-boolean p3, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    iput p4, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 13

    instance-of v0, p1, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getCmdBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v5

    const/4 v8, 0x2

    if-lt v7, v8, :cond_a

    array-length v7, v6

    if-ge v7, v8, :cond_2

    goto :goto_3

    :cond_2
    aget-object v7, v5, v0

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v8, v6, v0

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    array-length v10, v7

    if-le v9, v10, :cond_3

    array-length v9, v7

    goto :goto_0

    :cond_3
    array-length v9, v8

    :goto_0
    move v10, v1

    :goto_1
    if-ge v10, v9, :cond_8

    :try_start_0
    aget-object v11, v7, v10

    const-string v12, "*"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-boolean v11, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    if-nez v11, :cond_4

    invoke-virtual {v2}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getFlags()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    new-instance v11, Ljava/lang/Integer;

    aget-object v12, v8, v10

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ltz v11, :cond_5

    new-instance v11, Ljava/lang/Integer;

    aget-object v12, v8, v10

    invoke-direct {v11, v12}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0x9

    if-gt v11, v12, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    aget-object v11, v7, v10

    aget-object v12, v8, v10

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v11, :cond_7

    return v1

    :cond_7
    goto :goto_2

    :catch_0
    move-exception v11

    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_8
    array-length v10, v7

    array-length v11, v8

    if-eq v10, v11, :cond_9

    return v1

    :cond_9
    return v0

    :cond_a
    :goto_3
    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_b

    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "=*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_b
    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "=*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_c
    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    return v0

    :cond_d
    return v1
.end method

.method public getCmdBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    return-object v0
.end method

.method public getFlags()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setCmdBytes([B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    return-void
.end method

.method public setFlags(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    return-void
.end method
