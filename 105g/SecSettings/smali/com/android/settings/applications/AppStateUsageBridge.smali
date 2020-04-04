.class public Lcom/android/settings/applications/AppStateUsageBridge;
.super Lcom/android/settings/applications/AppStateAppOpsBridge;
.source "AppStateUsageBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateUsageBridge$UsageState;
    }
.end annotation


# static fields
.field public static final FILTER_APP_USAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private static final PM_PERMISSION:[Ljava/lang/String;

.field private static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.permission.PACKAGE_USAGE_STATS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppStateUsageBridge;->PM_PERMISSION:[Ljava/lang/String;

    new-instance v0, Lcom/android/settings/applications/AppStateUsageBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateUsageBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 6

    sget-object v5, Lcom/android/settings/applications/AppStateUsageBridge;->PM_PERMISSION:[Ljava/lang/String;

    const/16 v4, 0x2b

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.containeragent"

    const-string v2, "com.samsung.knox.securefolder"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/applications/AppStateUsageBridge;->list:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/settings/applications/AppStateUsageBridge;->list:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getUsageInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateUsageBridge$UsageState;
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/AppStateAppOpsBridge;->getPermissionInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    return-object v1
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/applications/AppStateUsageBridge;->getUsageInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
