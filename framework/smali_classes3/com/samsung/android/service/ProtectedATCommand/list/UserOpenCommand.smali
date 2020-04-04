.class public Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;
.super Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
.source "UserOpenCommand.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->mContext:Landroid/content/Context;

    const/16 v0, 0xa1

    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->addATCommands()V
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

    const-string v0, "AT+ENGMODES=8,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=0,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=0,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=0,4"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=0,6"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=0,9"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=1,5"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=3,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=3,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=3,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=3,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=4,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DISPTEST=4,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+KEY=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+KEYHOLD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TOUCH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEITEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEMTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=1,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=1,6"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=3,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=4,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=4,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=1,7"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=1,8"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=2,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=3,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=3,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=3,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=3,4"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BTIDTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WIFIIDRW=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FUELGAIC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=3,3,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=3,3,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=3,3,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKSTEST=3,3,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EMEMTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HMACMISM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IFPMICCN=0,0,5,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IFPMICCN=0,0,5,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FACTOLOG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,0,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,1,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,1,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,1,0,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,1,0,4"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,1,0,5"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,1,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,1,2,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,1,2,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,1,2,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,2,2,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,2,2,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,3,2,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,3,3,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,9,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,9,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=1,2,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCAMPARA=0,6,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCAMPARA=1,0,0,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UARTSWIT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FCBTTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BTLETEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FCEPTEST=0,0,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FCEPTEST=0,0,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,0,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,0,5"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=0,1,5"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FAILHIST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RAPPLIST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RAMSIZEC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SECUREBT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WPROTECT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+POWRESET=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WIFITEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PAYMENTS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FIRMVERS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=0,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=0,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=0,4"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=0,5"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=0,6"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=1,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=1,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=1,6"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=1,9"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EWRITECK=3,6"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SYSSCOPE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FLCRFCAL=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FLCRFCAL=0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FLCRFCAL=1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FLCRFCAL=2,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FLCRFCAL=2,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FLCRFCAL=3,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FLCRFCAL=4,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FLCRFCAL=4,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FPSENSOR=1,2,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FPSENSOR=1,3,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BAROMETE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWDLMODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+KSTRINGB=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IDCHIPTT=0,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IDCHIPTT=0,2,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IDCHIPTT=0,2,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IDCHIPTT=1,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UENCRYPT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GPSSTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCMTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SENSORHB=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ACSENSOR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GYROSCOP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GEOMAGSS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRMOSENS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UVSENSOR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HAICTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEBUGLVC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WCOLORID=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GRIPSENS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CONTROLN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TSPPTEST=0,6,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TSPPTEST=0,6,5"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TSPPTEST=3,2,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TSPPTEST=3,6,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TSPPTEST=3,7,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LEDLAMPT=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LEDLAMPT=0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LEDLAMPT=0,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LEDLAMPT=0,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LEDLAMPT=0,4"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COUNTRST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AIRPMODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWPARAMD=1,0,2,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+USERDATA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COFPDATA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+OQCSBFTT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ACTTDATA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PROXIMIT=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PROXIMIT=0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PROXIMIT=1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RGBPDISP=0,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NEEDCMDT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+UBCTTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+USBDEBUG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCAMTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SYSDUMP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,1,0,7"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,1,3,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,1,3,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,1,5,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,4,1,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,5,1,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=2,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+Dumpctrl=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GETDOTESTNV"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HEADINFO=1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+Headinfo=1,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCAMPARA=0,3,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCAMPARA=0,5,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCAMPARA=0,6,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SETDOTESTNV"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SETTESTNV=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ACLTESTT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AIRPLANEVALUE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AMBSSYNC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ASDIVTES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "ATE"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "ATE0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "ATE1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "ATI"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "ATI1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "ATQ0E0V1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "ATZ"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AUTOTUNE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BAKUPCHK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATGETLEVEL?=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BTVALUE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CALRM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CBCAST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CBLKFTDF=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CBLTH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CCALD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CCLGS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CDCONT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CDUR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CDVOL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CEMAIL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CFUN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGMI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGMM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGMR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGSN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CIMI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CIMSG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CKPD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CLOGIN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMGF=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMGS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMGW=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMSG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMSS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CNPAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CNUM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPICTR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPRMTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CRST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSHM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSMCT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSYNC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTACT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTASK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTBCPS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTMRV=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CTSA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CVCMD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CVRCD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CWAP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVCONINFO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DTCPTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DUMPCTRL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+EFSSYNCC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FENRIRCN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FUS?"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GET_COUNT_IMAGE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GET_COUNT_VIDEO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GETFULLHISTNV=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GETFULLTESTNV=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GETPEDOCOUNT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GETTESTNV=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GMM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GPSVALUE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GSN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ICCCINFO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMSVAL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LCDOFFCMD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOGERASE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MGRTCASS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MICSD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MITSRFTS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSOAKEYS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCTESTSCRIPT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCVALUE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NSRI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PVKASLDR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+REACTIVE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RECENTKEY=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RTCCTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCMMONIT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCODCHAN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SECUREOS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SETFULLTESTNV=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SIMDETEC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SIMSTATE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SIZECHECK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SOCFIOTK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SUDDLMOD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SVCIFPGM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+URDEVICE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+USBMODEM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WHO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WIFIVALUE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SETENGLISH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+KEYROTARY=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COPS?"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COPS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGTFT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CCFC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CCWA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CDV=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CEER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CEMODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGACT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGATT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGCMOD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGDATA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGDCONT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGDSCONT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGEQMIN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGEQOS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGEQREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGTFT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHLD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHUP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CLCC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CLCK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMEC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMEE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMGD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMGF=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMGS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMGW=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMOD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMSS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPIN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPMS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPWD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CREG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CRSM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSCA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSCS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSIM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSMP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSMS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CUSD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CVHU=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CVMOD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VTS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+XDATACHANNEL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "ATA"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "ATD"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "ATH"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "CHLD"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT#CGSEND=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$QCDGEN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT^ATDVIDEO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$QCMIP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$QCMIPEP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$QCMIPHA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$QCMIPMASPI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$QCMIPMHSS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$QCMIPMASS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$QCMIPMHSPI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$QCMIPNAI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$QCMIPPHA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$QCMIPRT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$QCMIPSHA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$QCMIPT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$QCMRUC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$CRM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGSMS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ENGMODES=0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ENGMODES=1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ENGMODES=2,2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MGRTCASS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HEADINFO=1,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HEADINFO=1,4"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HEADINFO=1,5"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FCFMTEST=0,0,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FCFMTEST=0,0,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FCFMTEST=0,1,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FCFMTEST=1,0,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SPKTEST=3,3,4"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,1,0,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CAMETEST=0,9,3,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=3,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=3,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOOPTEST=3,0,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=1,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BATTTEST=1,4"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=0,4"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=1,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIGHTEST=1,4"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RSTVERIF=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PROXIMIT=0,6"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PROXIMIT=0,7"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TSPPTEST=3,4,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TSPPTEST=3,5,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVICEPN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ATSCTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ETHERNET=1,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ETHERNET=1,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SECUREPK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKUTIL=0,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKUTIL=1,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BGLUCOSE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CONTROLN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SKUCODEC=1,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SKUCODEC=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,0,0,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,4,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=0,4,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=1,0,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=1,0,0,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZIGBTEST=2,0,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZWAVTEST=0,0,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZWAVTEST=0,0,0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZWAVTEST=0,4,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ZWAVTEST=1,1,5,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VOLTECON=0,0,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VOLTECON=1,0,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IFPMICCN=0,0,3,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IFPMICCN=0,0,4,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IFPMICCN=0,0,7,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RAPPLIST=1,0,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HOPATHCK=1,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MIPITEST=0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MIPITEST=1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+OBDTTEST=0,0,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+OBDTTEST=1,0,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHIPIDTT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AIRCMDAP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SEECTEST=0,0,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SEECTEST=0,0,2,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DIDTESTT=1,0,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NEEDCMDT=0,0,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFEVTAIT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+POPUPDIS=2,0,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RGBPDISP=0,0,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFANTSWC=0,1,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HCISNOOP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BLOBSIGN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPLDUCFG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PRXDRXCK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+KEYTMODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TOUTMODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LDUCCSUM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WRAPKEYT=0,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ARPCHECK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SVCDEVSC=1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CESP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSDH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSCB=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSAS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CRES=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMGL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CNMA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMGC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMMS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CBST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPAS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGQREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CNMI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CMGR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPOL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GMR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GMI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPBS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPBR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPBW=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CLIP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CLIR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CBKLT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGSMS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$ARMEE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$ARME=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "ATV1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "ATX4"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PACSP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$CSQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$CREG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT$CCLK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT*CNTI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RSRP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RSRQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RSCP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ECNO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CEINFO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NCELL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCELL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CCHC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CCHO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGLA=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CCLK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CEREQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGCONTRDP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGEQOSRDP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGEREP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGPADDR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGSCONTRDP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGTFTRDP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CIND=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+COPN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPLS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CRM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CSTF=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GCAP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CLAC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CEREG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WS46=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CGPIAF=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CESQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VZWAPNE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VZWRSRP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VZWRSRQ=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/UserOpenCommand;->putAtCommands(Ljava/lang/String;I)V

    return-void
.end method
