.class Lcom/sec/tima_keychain/TimaKeychain$UksAlias;
.super Ljava/lang/Object;
.source "TimaKeychain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/tima_keychain/TimaKeychain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UksAlias"
.end annotation


# static fields
.field private static final LEFT_BRAKET:Ljava/lang/String; = " ["

.field private static final RIGHT_BRAKET:Ljava/lang/String; = "] "


# instance fields
.field private creator:Ljava/lang/String;

.field private isCCM:Z

.field private longAlias:Ljava/lang/String;

.field private shortAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->longAlias:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->creator:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->isCCM:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->shortAlias:Ljava/lang/String;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_3

    :cond_0
    iput-object p1, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->longAlias:Ljava/lang/String;

    const-string v1, "::"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->creator:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->creator:Ljava/lang/String;

    const-string/jumbo v3, "u0_system_server"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->creator:Ljava/lang/String;

    const-string v3, "_com.samsung.knox.keychain"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->isCCM:Z

    const-string v0, "::"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->shortAlias:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iput-object p1, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->shortAlias:Ljava/lang/String;

    :goto_2
    const-string v0, "TIMAKeyChain"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created new uks alias: creator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->creator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", alias = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->shortAlias:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isCCM = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->isCCM:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public display()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->isCCM:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->shortAlias:Ljava/lang/String;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->shortAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->creator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreator()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->creator:Ljava/lang/String;

    return-object v0
.end method

.method public getLongAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->longAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getShortAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->shortAlias:Ljava/lang/String;

    return-object v0
.end method

.method public isCCM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/tima_keychain/TimaKeychain$UksAlias;->isCCM:Z

    return v0
.end method
