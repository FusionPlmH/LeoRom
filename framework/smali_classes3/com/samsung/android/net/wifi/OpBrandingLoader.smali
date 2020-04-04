.class public Lcom/samsung/android/net/wifi/OpBrandingLoader;
.super Ljava/lang/Object;
.source "OpBrandingLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;
    }
.end annotation


# static fields
.field private static final KSC5601:Ljava/lang/String; = "ksc5601"

.field private static final mOpBrandingFileName:Ljava/lang/String; = "/data/misc/wifi/.opbranding.info"

.field private static sInstance:Lcom/samsung/android/net/wifi/OpBrandingLoader;


# instance fields
.field private final mCharacterSet:Ljava/lang/String;

.field private final mEapMethodString:Ljava/lang/String;

.field private final mMenuStatusForHotspot20:Ljava/lang/String;

.field private final mRemovableDefaultAp:Z

.field private final mSupportVzwEapAka:Z

.field private final mVendor:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->sInstance:Lcom/samsung/android/net/wifi/OpBrandingLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->Unknown:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getVendorFromFile()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v0

    :cond_0
    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->Unknown:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    if-eq v0, v1, :cond_1

    iput-object v0, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mVendor:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lcom/samsung/android/net/wifi/OpBrandingLoader$1;->$SwitchMap$com$samsung$android$net$wifi$OpBrandingLoader$Vendor:[I

    invoke-virtual {v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_1
    const-string/jumbo v3, "ksc5601"

    const-string v5, "DEFAULT_ON,MENU_ON"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v3, "ksc5601"

    const-string v5, "DEFAULT_OFF,MENU_ON"

    const-string v4, "AKA"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v3, "ksc5601"

    const-string v5, "DEFAULT_ON,MENU_ON"

    goto :goto_0

    :pswitch_4
    const/4 v1, 0x1

    const-string/jumbo v3, "ksc5601"

    const-string v5, "DEFAULT_ON,MENU_OFF"

    nop

    :goto_0
    iput-object v3, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mCharacterSet:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mEapMethodString:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mSupportVzwEapAka:Z

    iput-boolean v1, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mRemovableDefaultAp:Z

    iput-object v5, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mMenuStatusForHotspot20:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getVendorFromCsc()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mVendor:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mSupportVzwEapAka:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_ConfigEncodingCharSet"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mCharacterSet:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_ConfigMenuStatusForHotspot20"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mMenuStatusForHotspot20:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_RemovableDefaultAP"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mRemovableDefaultAp:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_ConfigAuthMsgDisplayPolicy"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mEapMethodString:Ljava/lang/String;

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/net/wifi/OpBrandingLoader;
    .locals 2

    const-class v0, Lcom/samsung/android/net/wifi/OpBrandingLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader;->sInstance:Lcom/samsung/android/net/wifi/OpBrandingLoader;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/net/wifi/OpBrandingLoader;

    invoke-direct {v1}, Lcom/samsung/android/net/wifi/OpBrandingLoader;-><init>()V

    sput-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader;->sInstance:Lcom/samsung/android/net/wifi/OpBrandingLoader;

    :cond_0
    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader;->sInstance:Lcom/samsung/android/net/wifi/OpBrandingLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getVendorFrom(Ljava/lang/String;)Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->Unknown:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->valueOf(Ljava/lang/String;)Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    return-object v0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->Unknown:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    return-object v2

    :cond_0
    sget-object v0, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->Unknown:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    return-object v0
.end method

.method private getVendorFromCsc()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getVendorFrom(Ljava/lang/String;)Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v1

    return-object v1
.end method

.method private getVendorFromFile()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;
    .locals 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/.opbranding.info"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    :cond_0
    :goto_1
    throw v3

    :catch_2
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    invoke-direct {p0, v1}, Lcom/samsung/android/net/wifi/OpBrandingLoader;->getVendorFrom(Ljava/lang/String;)Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    move-result-object v3

    return-object v3

    :cond_2
    sget-object v1, Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;->Unknown:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    return-object v1
.end method


# virtual methods
.method public getEapAuthMessagePolicy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mEapMethodString:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuStatusForPasspoint()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mMenuStatusForHotspot20:Ljava/lang/String;

    return-object v0
.end method

.method public getOpBranding()Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mVendor:Lcom/samsung/android/net/wifi/OpBrandingLoader$Vendor;

    return-object v0
.end method

.method public getSupportCharacterSet()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mCharacterSet:Ljava/lang/String;

    return-object v0
.end method

.method public isSupportEapAka()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mSupportVzwEapAka:Z

    return v0
.end method

.method public isSupportRemovableDefaultAp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/net/wifi/OpBrandingLoader;->mRemovableDefaultAp:Z

    return v0
.end method

.method public writeVendorToFile(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/misc/wifi/.opbranding.info"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v2

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    :cond_1
    :goto_1
    throw v2

    :catch_2
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
