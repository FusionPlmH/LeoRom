.class public Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;
.super Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
.source "ProtectedCommandOpt2.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->mContext:Landroid/content/Context;

    const/16 v0, 0xa4

    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->addATCommands()V
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

    const-string v0, "AT+ENGMODES=8,0,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AKSEEDNO=0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AKSEEDNO=1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AOTKEYWR=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AOTKEYWR=2,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BTIDTEST=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPRMTEST=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=1,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=1,1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,3,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,4,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,5,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DEVROOTK=2,6,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DTCPTEST=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ETHERNET=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ETHERNET=2,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,3,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,4,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HDCPTEST=3,5,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEICERT=1,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEICERT=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=1,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,3,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,4,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=2,5,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEITEST=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEITEST=3,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEITEST=4,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEITEST=5,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKCODE=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=1,0\u00a0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=1,2"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=2,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=2,2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEIDAUTH=0,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEIDAUTH=0,1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEIDAUTH=1,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEIDAUTH=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSLSECUR=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SECUREOS=2,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SERIALNO=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SIMLOCKU=0,0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SOCFIOTK=2,0,0,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WIFIIDRW=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DETALOCK=1,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DETALOCK=2,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LVOFLOCK=1,*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LAUNCH_PKG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GET_COUNT_IMAGE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GET_COUNT_VIDEO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GET_COUNT_AUDIO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GETCTSIM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GETCTDUT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEMERASE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SDSCRIPT=0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+GETPEODCOUNT=0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HRMTEST=0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PAYMT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PAYSTART=1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSTTON"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSTOFF"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCTON"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NFCOFF"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BARCTEST=0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AEAS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+WCRTTEST=0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RDSMSG"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ASKPEDOCOUNT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ASK_YUDO_RUNCOUNT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ASK_AK_DONG_RUNCOUNT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SCREENTURNON=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+OBJECTOUCH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+OBJECTDOUBLETOUCH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TOUCHXY=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MAKEDUMPFILE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ProtectedCommandOpt2;->putAtCommands(Ljava/lang/String;I)V

    return-void
.end method
