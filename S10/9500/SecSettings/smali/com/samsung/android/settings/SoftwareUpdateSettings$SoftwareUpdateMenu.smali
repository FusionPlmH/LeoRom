.class abstract enum Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;
.super Ljava/lang/Enum;
.source "SoftwareUpdateSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/SoftwareUpdateSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "SoftwareUpdateMenu"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

.field public static final enum AUTO_DOWNLOAD_OVER_WIFI:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

.field public static final enum DOWNLOAD_AND_INSTALL:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

.field public static final enum LAST_UPDATE:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

.field public static final enum SOFTWARE_UPDATE_TITLE:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

.field public static final enum UICC_UNLOCK:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

.field public static final enum UPDATE_PRL:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

.field public static final enum UPDATE_PROFILE:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu$1;

    const-string v1, "SOFTWARE_UPDATE_TITLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->SOFTWARE_UPDATE_TITLE:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu$2;

    const-string v1, "DOWNLOAD_AND_INSTALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->DOWNLOAD_AND_INSTALL:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu$3;

    const-string v1, "AUTO_DOWNLOAD_OVER_WIFI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->AUTO_DOWNLOAD_OVER_WIFI:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu$4;

    const-string v1, "LAST_UPDATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->LAST_UPDATE:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu$5;

    const-string v1, "UPDATE_PROFILE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->UPDATE_PROFILE:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu$6;

    const-string v1, "UPDATE_PRL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->UPDATE_PRL:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu$7;

    const-string v1, "UICC_UNLOCK"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->UICC_UNLOCK:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    sget-object v1, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->SOFTWARE_UPDATE_TITLE:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->DOWNLOAD_AND_INSTALL:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->AUTO_DOWNLOAD_OVER_WIFI:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->LAST_UPDATE:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->UPDATE_PROFILE:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->UPDATE_PRL:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->UICC_UNLOCK:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    aput-object v1, v0, v8

    sput-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->$VALUES:[Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/samsung/android/settings/SoftwareUpdateSettings$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;
    .locals 1

    const-class v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->$VALUES:[Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v0}, [Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    return-object v0
.end method


# virtual methods
.method abstract getKey()Ljava/lang/String;
.end method

.method getScreenTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->SOFTWARE_UPDATE_TITLE:Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchIndexableRaw(Landroid/content/Context;)Lcom/android/settings/search/SearchIndexableRaw;
    .locals 2

    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->getKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->getScreenTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->getTitleId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->getSummaryOn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->getSummaryOff(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    return-object v0
.end method

.method getSummaryOff(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getSummaryOn(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings$SoftwareUpdateMenu;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method abstract getTitleId()I
.end method

.method shouldEnable(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
