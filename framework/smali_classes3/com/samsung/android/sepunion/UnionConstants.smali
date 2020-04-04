.class public final Lcom/samsung/android/sepunion/UnionConstants;
.super Ljava/lang/Object;
.source "UnionConstants.java"


# static fields
.field public static final BUNDLE_KEY_COMPONENT:Ljava/lang/String; = "component"

.field public static final BUNDLE_KEY_COMPONENT_LIST:Ljava/lang/String; = "component_list"

.field public static final BUNDLE_KEY_PACKAGE_LIST:Ljava/lang/String; = "package_list"

.field public static final BUNDLE_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final BUNDLE_KEY_PACKAGE_STATE:Ljava/lang/String; = "package_state"

.field public static final BUNDLE_KEY_RESUMED:Ljava/lang/String; = "is_resumed"

.field public static final CUSTOM_EVENT_ACTIVITY_STATE:Ljava/lang/String; = "monitor_activity_state"

.field public static final CUSTOM_EVENT_CALL_STATE:Ljava/lang/String; = "monitor_call_state"

.field public static final CUSTOM_EVENT_PACKAGE_STATE:Ljava/lang/String; = "monitor_package_state"

.field public static final EXTRA_KEY_ACTION_ORIGIN:Ljava/lang/String; = "action_origin"

.field public static final EXTRA_KEY_CALL_STATE:Ljava/lang/String; = "call_state"

.field public static final EXTRA_KEY_COMPONENT_NAME:Ljava/lang/String; = "component"

.field public static final EXTRA_KEY_IS_RESUMED:Ljava/lang/String; = "is_resumed"

.field public static final EXTRA_KEY_NOTIFY_FOR_DESCENDANTS:Ljava/lang/String; = "notify_for_descendants"

.field public static final EXTRA_KEY_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final EXTRA_KEY_PACKAGE_STATE:Ljava/lang/String; = "package_state"

.field public static final EXTRA_KEY_PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final EXTRA_KEY_URI:Ljava/lang/String; = "uri"

.field public static final LOG_TAG_COVER:Ljava/lang/String; = "CoverManager_"

.field public static final PACKAGE_STATE_ADDED:Ljava/lang/String; = "package_added"

.field public static final PACKAGE_STATE_MODIFIED:Ljava/lang/String; = "package_modified"

.field public static final PACKAGE_STATE_REMOVED:Ljava/lang/String; = "package_removed"

.field public static final PATH_LOG_FILE:Ljava/lang/String; = "/data/log/sepunion/"

.field public static final SERVICE_COVER:Ljava/lang/String; = "cover"

.field public static final SERVICE_DEVICE_INFO:Ljava/lang/String; = "semeventdelegator"

.field public static final SERVICE_DUMP:Ljava/lang/String; = "union_dump"

.field public static final SERVICE_EXCLUSIVE_TASK:Ljava/lang/String; = "exclusivetask"

.field public static final SERVICE_FRIENDS:Ljava/lang/String; = "friends"

.field public static final SERVICE_GOOD_CATCH:Ljava/lang/String; = "goodcatch"

.field public static final SERVICE_PLUGIN:Ljava/lang/String; = "plugin"

.field public static final SERVICE_SHORTCUT:Ljava/lang/String; = "execute"

.field public static final SERVICE_START_AUTO:I = 0x0

.field public static final SERVICE_START_MANUAL:I = 0x1

.field public static final sClassPathForManager:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sClassPathForService:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final sServiceStartType:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForManager:Landroid/util/ArrayMap;

    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForManager:Landroid/util/ArrayMap;

    const-string/jumbo v1, "semeventdelegator"

    const-string v2, "com.samsung.android.sepunion.SemEventDelegationManager"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForManager:Landroid/util/ArrayMap;

    const-string/jumbo v1, "plugin"

    const-string v2, "com.samsung.android.sepunion.SemPluginManager"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForManager:Landroid/util/ArrayMap;

    const-string v1, "execute"

    const-string v2, "com.samsung.android.app.SemExecutableManager"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_EXCLUSIVE_TASK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForManager:Landroid/util/ArrayMap;

    const-string v1, "exclusivetask"

    const-string v2, "com.samsung.android.sepunion.ExclusiveTaskManager"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForManager:Landroid/util/ArrayMap;

    const-string v1, "goodcatch"

    const-string v2, "com.samsung.android.sepunion.SemGoodCatchManager"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForManager:Landroid/util/ArrayMap;

    const-string/jumbo v1, "union_dump"

    const-string v2, "com.samsung.android.sepunion.SemCustomDumpManager"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForService:Landroid/util/ArrayMap;

    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForService:Landroid/util/ArrayMap;

    const-string/jumbo v1, "semeventdelegator"

    const-string v2, "com.android.server.sepunion.SemDeviceInfoManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForService:Landroid/util/ArrayMap;

    const-string/jumbo v1, "plugin"

    const-string v2, "com.android.server.sepunion.SemPluginManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForService:Landroid/util/ArrayMap;

    const-string v1, "execute"

    const-string v2, "com.android.server.sepunion.SemShortcutManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_EXCLUSIVE_TASK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForService:Landroid/util/ArrayMap;

    const-string v1, "exclusivetask"

    const-string v2, "com.android.server.sepunion.ExclusiveTaskManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sClassPathForService:Landroid/util/ArrayMap;

    const-string v1, "goodcatch"

    const-string v2, "com.android.server.sepunion.SemGoodCatchService"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sServiceStartType:Landroid/util/ArrayMap;

    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sServiceStartType:Landroid/util/ArrayMap;

    const-string/jumbo v1, "semeventdelegator"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sServiceStartType:Landroid/util/ArrayMap;

    const-string/jumbo v1, "plugin"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sServiceStartType:Landroid/util/ArrayMap;

    const-string v1, "execute"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_ACCESSIBILITY_SUPPORT_MANAGE_EXCLUSIVE_TASK"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sServiceStartType:Landroid/util/ArrayMap;

    const-string v1, "exclusivetask"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v0, Lcom/samsung/android/sepunion/UnionConstants;->sServiceStartType:Landroid/util/ArrayMap;

    const-string v1, "goodcatch"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
