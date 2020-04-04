.class public Lcom/kt/wifiapi/GWSScanResult;
.super Ljava/lang/Object;
.source "GWSScanResult.java"


# static fields
.field private static final DBG:Z


# instance fields
.field public BSSID:Ljava/lang/String;

.field public BSSLoadElement:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public capabilities:Ljava/lang/String;

.field public frequency:I

.field public level:I

.field public vendorSpecificContents:Ljava/lang/String;

.field public vendorSpecificOUI:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/kt/wifiapi/GWSScanResult;->DBG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    iput-object p2, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSID:Ljava/lang/String;

    iput-object p3, p0, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    iput p4, p0, Lcom/kt/wifiapi/GWSScanResult;->level:I

    iput p5, p0, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    iput-object p6, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSLoadElement:Ljava/lang/String;

    iput-object p7, p0, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificOUI:Ljava/lang/String;

    iput-object p8, p0, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificContents:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<none>"

    sget-boolean v2, Lcom/kt/wifiapi/GWSScanResult;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "SSID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->SSID:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", BSSID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSID:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSID:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v2, ", capabilities: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    if-nez v2, :cond_3

    move-object v2, v1

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->capabilities:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", level: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/kt/wifiapi/GWSScanResult;->level:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", frequency: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/kt/wifiapi/GWSScanResult;->frequency:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ", BSSLoadElement: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->BSSLoadElement:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", vendorSpecificOUI: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificOUI:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", vendorSpecificContents: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/kt/wifiapi/GWSScanResult;->vendorSpecificContents:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
