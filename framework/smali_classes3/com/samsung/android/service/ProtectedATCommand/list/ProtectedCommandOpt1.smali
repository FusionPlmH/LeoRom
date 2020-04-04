.class public Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;
.super Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
.source "ProtectedCommandOpt1.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->mContext:Landroid/content/Context;

    const/16 v0, 0xa3

    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->addATCommands()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected addATCommands()V
    .locals 2

    const-string v0, "AT+ENGMODES=8,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FUNCTEST=0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IFPMICCN=0,0,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IFPMICCN=0,0,2,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWATD=1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWATD=0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ACTIVATE=0,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HEADINFO=1,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FUNCTEST=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VIBRTEST=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VIBRTEST=0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,0,9"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,1,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,1,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BARCODEE=0,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BARCODEE=0,2,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CONNTEST=3,0,2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt1;->putAtCommands(Ljava/lang/String;I)V

    return-void
.end method
