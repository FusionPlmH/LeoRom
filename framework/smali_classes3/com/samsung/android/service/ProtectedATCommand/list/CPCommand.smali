.class public Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;
.super Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;
.source "CPCommand.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ICmdList;-><init>()V

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->mContext:Landroid/content/Context;

    const/16 v0, 0xa2

    iput v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->addATCommands()V
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

    const-string v0, "AT+ENGMODES=8,0,3"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+VERSNAME=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CALIDATE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FACTORST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MSLSECUR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+TEMPTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SYSSLEEP=0,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SYSSLEEP=0,1"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SYSSLEEP=0,4"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+DETALOCK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKREAD=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MAXPOWER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SIMDETEC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MODECHAN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEICERT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEISIGN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AKSEEDNO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PRODCODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+BANSELCT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SIMLOCKU=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKCODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+HWINDICK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LIFETIME=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CHNSELCT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+MEIDAUTH=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FAILDUMP=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SERIALNO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+READRSSI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+NAMCHECK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PRLVERIF=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RECONDIT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+ERITTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SVCBANDB=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PARALLEL=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PRECONFG=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+OBDMTEST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+AOTKEYWR=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+APCHIPTT=1,2,0"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LVOFLOCK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LOCKINFO=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SWVER=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEINUM=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+IMEILIST=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+FEEDBACK=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFBKOFFC=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SECNRSSI=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CALLCONN=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+SKT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+LTPUT=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFNVCHKS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+RFBYCODE=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+PROVCASS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    const-string v0, "AT+CPMGCASS=*"

    iget v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->cmdType:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/service/ProtectedATCommand/list/CPCommand;->putAtCommands(Ljava/lang/String;I)V

    return-void
.end method
