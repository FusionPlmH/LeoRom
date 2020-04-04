.class public Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;
.super Ljava/lang/Object;
.source "SecDashboardRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;,
        Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$LazyHolder;
    }
.end annotation


# static fields
.field private static final DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->init(Landroid/content/Context;)V

    :cond_0
    if-eqz p0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->initForPowerSaving(Landroid/content/Context;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$LazyHolder;->INSTANCE:Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;

    return-object v0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 5
    
    const-string v0, "group1"
	
new-instance v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v1}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    const/16 v2, 0x960

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "leo_personalized_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    const/16 v2, 0x8fc

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "leo_ota_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "group2"


    new-instance v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v1}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b031a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "samsung_dex_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0318

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "connections_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b032b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v3, "t_roaming_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0327

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "gigalte_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0320

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "operator_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "group2"

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b032a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "notification_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0325

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "app_notifications_1depth"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "group3"

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b031b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "display_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b032d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v3, "wallpapers_themes_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0322

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "lockscreen_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "group4"

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0314

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "biometrics_and_security_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b032c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v3, "t_security_skt_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0317

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "cloud_account_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b031c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "docomoservice_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0313

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "au_settings_menu"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b031e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "google_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b032f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v3, "workspace_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "group5"

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0310

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "header_useful_feature"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "group6"

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b030c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "digital_wellbeing_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0323

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "maintenance_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0312

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "application_manager_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "group7"

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b031d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "general_device_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b030f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "accessibility_settings2"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "group8"

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0328

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v3, "system_update"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b031f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "online_help"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b030e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "about_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0319

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "development_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static initForPowerSaving(Landroid/content/Context;)V
    .locals 4

    const-string v0, "group1"

    new-instance v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v1}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b032e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v3, "wifi_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0315

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "bluetooth_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0311

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "airplane_mode"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0324

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "mobile_networks"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b030a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string/jumbo v3, "vzw_provision_volte"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0321

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "location_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "group2"

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0329

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "notification_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0316

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "display_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "group3"

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b030b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "battery_settings"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0326

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "accessibility_settings2"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    invoke-direct {v2}, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;-><init>()V

    move-object v1, v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b030d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->priority:I

    iput-object v0, v1, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;->groupName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    const-string v3, "key_vzw_emergency_alert"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getMenuOrderInfo(Ljava/lang/String;Z)Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;
    .locals 1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->POWER_SAVING_DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry;->DASHBOARD_ORDERING_INFO_MAP:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/dashboard/SecDashboardRegistry$OrderInfo;

    return-object v0
.end method
