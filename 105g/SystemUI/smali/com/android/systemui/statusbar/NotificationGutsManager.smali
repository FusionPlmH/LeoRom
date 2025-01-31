.class public Lcom/android/systemui/statusbar/NotificationGutsManager;
.super Ljava/lang/Object;
.source "NotificationGutsManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationGutsManager$Callback;,
        Lcom/android/systemui/statusbar/NotificationGutsManager$OnSettingsClickListener;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

.field private final mContext:Landroid/content/Context;

.field protected mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

.field private mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mKeyToRemoveOnGutsClosed:Ljava/lang/String;

.field private mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mOnSettingsClickListener:Lcom/android/systemui/statusbar/NotificationGutsManager$OnSettingsClickListener;

.field protected mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mContext:Landroid/content/Context;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationGutsManager;)Landroid/view/accessibility/AccessibilityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationGutsManager;)Lcom/android/systemui/statusbar/NotificationListContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    return-object p1
.end method

.method private initializeAppOpsInfo(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/AppOpsInfo;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$SVmBqwAI-Qj-0Ek93ajMSfetUyg;

    invoke-direct {v4, p0, v0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$SVmBqwAI-Qj-0Ek93ajMSfetUyg;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {p2, v3, v4, v1, v5}, Lcom/android/systemui/statusbar/AppOpsInfo;->bindGuts(Landroid/content/pm/PackageManager;Lcom/android/systemui/statusbar/AppOpsInfo$OnSettingsClickListener;Landroid/service/notification/StatusBarNotification;Landroid/util/ArraySet;)V

    :cond_0
    return-void
.end method

.method private initializeAppOpsInfo(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/SecAppOpsInfo;)V
    .locals 6

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$dev0j1AYb1hn8pBUyNm3e6W30co;

    invoke-direct {v4, p0, v0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$dev0j1AYb1hn8pBUyNm3e6W30co;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->mActiveAppOps:Landroid/util/ArraySet;

    invoke-virtual {p2, v3, v4, v1, v5}, Lcom/android/systemui/statusbar/SecAppOpsInfo;->bindGuts(Landroid/content/pm/PackageManager;Lcom/android/systemui/statusbar/SecAppOpsInfo$OnSettingsClickListener;Landroid/service/notification/StatusBarNotification;Landroid/util/ArraySet;)V

    :cond_0
    return-void
.end method

.method private initializeSnoozeView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationSnooze;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationListContainer;->getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/NotificationSnooze;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->snoozeCriteria:Ljava/util/List;

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/NotificationSnooze;->setSnoozeOptions(Ljava/util/List;)V

    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$cVmDFdPRr0bMQ_wKyHQ8UdoctmE;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$cVmDFdPRr0bMQ_wKyHQ8UdoctmE;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setHeightChangedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;)V

    return-void
.end method

.method private initializeSnoozeView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/SecNotificationSnooze;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1129"

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationListContainer;->getSwipeActionHelper()Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->setSnoozeListener(Lcom/android/systemui/plugins/statusbar/NotificationSwipeActionHelper;)V

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->setStatusBarNotification(Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->snoozeCriteria:Ljava/util/List;

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/SecNotificationSnooze;->setSnoozeOptions(Ljava/util/List;)V

    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$ijhVS9Nm9A-0QhXo3WaU3kzJAwk;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$ijhVS9Nm9A-0QhXo3WaU3kzJAwk;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setHeightChangedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnHeightChangedListener;)V

    return-void
.end method

.method public static synthetic lambda$bindGuts$0(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onGutsClosed()V

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/NotificationGuts;->willBeRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/NotificationListContainer;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    const/4 v1, 0x0

    if-ne v0, p3, :cond_1

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    :cond_1
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->getLatestRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/NotificationEntryManager;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :cond_2
    return-void
.end method

.method public static synthetic lambda$initializeAppOpsInfo$3(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;Ljava/lang/String;ILandroid/util/ArraySet;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x542

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    invoke-virtual {p0, p4, p5, p6, p2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->startAppOpsSettingsActivity(Ljava/lang/String;ILandroid/util/ArraySet;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public static synthetic lambda$initializeAppOpsInfo$4(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;Ljava/lang/String;ILandroid/util/ArraySet;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x542

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    invoke-virtual {p0, p4, p5, p6, p2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->startAppOpsSettingsActivity(Ljava/lang/String;ILandroid/util/ArraySet;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method static synthetic lambda$initializeNotificationInfo$10(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1134"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$initializeNotificationInfo$11(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/SecNotificationInfo;Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1128"

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/android/systemui/statusbar/NotificationGutsManager;->saveAndCloseNotificationMenu(Lcom/android/systemui/statusbar/NotificationInfo;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->setChosenImportance(Z)V

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/SecNotificationInfo;->saveImportanceChanged()V

    return-void
.end method

.method public static synthetic lambda$initializeNotificationInfo$12(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;Landroid/app/NotificationChannel;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/NotificationGutsManager$OnSettingsClickListener;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationGutsManager$OnSettingsClickListener;->onClick(Ljava/lang/String;)V

    invoke-direct {p0, p3, p7, p6, p4}, Lcom/android/systemui/statusbar/NotificationGutsManager;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public static synthetic lambda$initializeNotificationInfo$5(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    invoke-interface {v0, p5, v1, p3}, Lcom/android/systemui/statusbar/NotificationPresenter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public static synthetic lambda$initializeNotificationInfo$6(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;Landroid/app/NotificationChannel;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/NotificationGutsManager$OnSettingsClickListener;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationGutsManager$OnSettingsClickListener;->onClick(Ljava/lang/String;)V

    invoke-direct {p0, p3, p7, p6, p4}, Lcom/android/systemui/statusbar/NotificationGutsManager;->startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public static synthetic lambda$initializeNotificationInfo$7(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0xce

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v1

    invoke-interface {v0, p5, v1, p3}, Lcom/android/systemui/statusbar/NotificationPresenter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public static synthetic lambda$initializeNotificationInfo$8(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/SecNotificationInfo;Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1135"

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p4}, Lcom/android/systemui/statusbar/NotificationGutsManager;->saveAndCloseNotificationMenu(Lcom/android/systemui/statusbar/NotificationInfo;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/SecNotificationInfo;->setChosenImportance(Z)V

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/SecNotificationInfo;->saveImportanceChanged()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseImmediately(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/NotificationPresenter;->updateNotificationViews()V

    return-void
.end method

.method public static synthetic lambda$initializeNotificationInfo$9(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/statusbar/NotificationGutsManager;->saveAndCloseNotificationMenu(Lcom/android/systemui/statusbar/NotificationInfo;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$initializeSnoozeView$1(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShown()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/NotificationListContainer;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    return-void
.end method

.method public static synthetic lambda$initializeSnoozeView$2(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isShown()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/android/systemui/statusbar/NotificationListContainer;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    return-void
.end method

.method private saveAndCloseNotificationMenu(Lcom/android/systemui/statusbar/NotificationInfo;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V
    .locals 15

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/NotificationGuts;->resetFalsingCheck()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [I

    move-object/from16 v3, p2

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen([I)V

    move-object/from16 v4, p4

    invoke-virtual {v4, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/2addr v6, v0

    const/4 v0, 0x0

    aget v7, v2, v0

    aget v0, v1, v0

    sub-int/2addr v7, v0

    add-int v0, v7, v5

    const/4 v7, 0x1

    aget v8, v2, v7

    aget v7, v1, v7

    sub-int/2addr v8, v7

    add-int v7, v8, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x1

    move-object v8, p0

    move v12, v0

    move v13, v7

    invoke-virtual/range {v8 .. v14}, Lcom/android/systemui/statusbar/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    return-void
.end method

.method private startAppNotificationSettingsActivity(Ljava/lang/String;ILandroid/app/NotificationChannel;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_0

    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1, v0, p2, p4}, Lcom/android/systemui/statusbar/NotificationPresenter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method


# virtual methods
.method public bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mGutsMenuItem:Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    return-void
.end method

.method public bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->inflateGuts()V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setGutsView(Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5BbQHmFW6nuVeiAwlAjRPvwSbrU;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$5BbQHmFW6nuVeiAwlAjRPvwSbrU;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setClosedListener(Lcom/android/systemui/statusbar/NotificationGuts$OnGutsClosedListener;)V

    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;->getGutsView()Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/android/systemui/statusbar/SecNotificationSnooze;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/SecNotificationSnooze;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->initializeSnoozeView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/SecNotificationSnooze;)V

    goto :goto_0

    :cond_0
    instance-of v2, v1, Lcom/android/systemui/statusbar/SecAppOpsInfo;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/SecAppOpsInfo;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->initializeAppOpsInfo(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/SecAppOpsInfo;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/android/systemui/statusbar/SecNotificationInfo;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/SecNotificationInfo;

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->initializeNotificationInfo(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/SecNotificationInfo;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/android/systemui/statusbar/NotificationSnooze;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/NotificationSnooze;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->initializeSnoozeView(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationSnooze;)V

    goto :goto_0

    :cond_3
    instance-of v2, v1, Lcom/android/systemui/statusbar/AppOpsInfo;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/AppOpsInfo;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->initializeAppOpsInfo(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/AppOpsInfo;)V

    goto :goto_0

    :cond_4
    instance-of v2, v1, Lcom/android/systemui/statusbar/NotificationInfo;

    if-eqz v2, :cond_5

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/statusbar/NotificationInfo;

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/NotificationGutsManager;->initializeNotificationInfo(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationInfo;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public closeAndSaveGuts(ZZZIIZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    move v2, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/NotificationGuts;->closeControls(ZZIIZ)V

    :cond_0
    if-eqz p6, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationListContainer;->resetExposedMenuView(ZZ)V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string v0, "NotificationGutsManager state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mKeyToRemoveOnGutsClosed: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getExposedGuts()Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method public getKeyToRemoveOnGutsClosed()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    return-object v0
.end method

.method initializeNotificationInfo(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationInfo;)V
    .locals 26
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v15

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v22

    const/4 v0, 0x0

    invoke-virtual {v15}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v14

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationGutsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v23

    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v24

    new-instance v13, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$p0tfoU_O9dyvaD-RWa3JNcjCmKA;

    move-object/from16 v12, p1

    invoke-direct {v13, v7, v8, v15, v12}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$p0tfoU_O9dyvaD-RWa3JNcjCmKA;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v25

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v14, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$VHpHm3taxS-p14DEbBymLUXyFe8;

    move-object v1, v0

    move-object v2, v7

    move-object v3, v8

    move-object v4, v15

    move-object/from16 v5, v22

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$VHpHm3taxS-p14DEbBymLUXyFe8;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :goto_1
    nop

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->channel:Landroid/app/NotificationChannel;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNumUniqueChannels()I

    move-result v2

    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationGutsManager;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIsNonblockable()Z

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->userSentiment:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_2
    move/from16 v21, v4

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :goto_3
    move-object/from16 v9, p2

    move-object/from16 v10, v23

    move-object/from16 v11, v24

    move-object/from16 v12, v22

    move-object v4, v13

    move-object v13, v0

    move-object v5, v14

    move v14, v2

    move-object v2, v15

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v18, v4

    move/from16 v20, v25

    :try_start_1
    invoke-virtual/range {v9 .. v21}, Lcom/android/systemui/statusbar/NotificationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/NotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;ZZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v4, v13

    move-object v5, v14

    move-object v2, v15

    :goto_4
    const-string v3, "NotificationGutsManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method initializeNotificationInfo(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/SecNotificationInfo;)V
    .locals 35
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v15, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v13

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v26

    const/4 v0, 0x0

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationGutsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPackageManagerForUser(Landroid/content/Context;I)Landroid/content/pm/PackageManager;

    move-result-object v27

    const-string v1, "notification"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v28

    new-instance v11, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$Nrjnp3PK-GuwVF2lMhyk5Esg3Vw;

    invoke-direct {v11, v7, v14, v13, v8}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$Nrjnp3PK-GuwVF2lMhyk5Esg3Vw;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    new-instance v10, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$QKStbbg4DzAadphqp4mUMs6eZ3w;

    invoke-direct {v10, v7, v8, v14, v15}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$QKStbbg4DzAadphqp4mUMs6eZ3w;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/SecNotificationInfo;)V

    new-instance v9, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$JATqA6kI2urKhjkAVeywyY63V88;

    invoke-direct {v9, v7, v8, v14}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$JATqA6kI2urKhjkAVeywyY63V88;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)V

    new-instance v6, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$BmVCQk2aLzFezY0e0bIohmrWE7c;

    invoke-direct {v6, v8, v9}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$BmVCQk2aLzFezY0e0bIohmrWE7c;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View$OnClickListener;)V

    new-instance v5, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$Yx_pRdN0CPdqwVavfEoixUINYRA;

    invoke-direct {v5, v7, v8, v14, v15}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$Yx_pRdN0CPdqwVavfEoixUINYRA;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Lcom/android/systemui/statusbar/SecNotificationInfo;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isBlockingHelperShowing()Z

    move-result v29

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/android/systemui/statusbar/NotificationGutsManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    move-object/from16 v30, v5

    move-object/from16 v31, v6

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$Fbut2UsDx5AcjwakWWbjVITEXcQ;

    move-object v1, v0

    move-object v2, v7

    move-object v3, v14

    move-object v4, v13

    move-object/from16 v30, v5

    move-object/from16 v5, v26

    move-object/from16 v31, v6

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationGutsManager$Fbut2UsDx5AcjwakWWbjVITEXcQ;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :goto_1
    nop

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->channel:Landroid/app/NotificationChannel;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNumUniqueChannels()I

    move-result v2

    iget-object v3, v7, Lcom/android/systemui/statusbar/NotificationGutsManager;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIsNonblockable()Z

    move-result v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->userSentiment:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    :goto_2
    move/from16 v25, v4

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :goto_3
    move-object v4, v9

    move-object v9, v15

    move-object v5, v10

    move-object/from16 v10, v27

    move-object v6, v11

    move-object/from16 v11, v28

    move-object/from16 v32, v12

    move-object/from16 v12, v26

    move-object/from16 v33, v13

    move-object v13, v0

    move-object/from16 v34, v14

    move v14, v2

    move-object/from16 v15, v33

    move-object/from16 v16, v3

    move-object/from16 v17, v1

    move-object/from16 v18, v6

    move-object/from16 v19, v30

    move-object/from16 v20, v4

    move-object/from16 v21, v31

    move-object/from16 v22, v5

    move/from16 v24, v29

    :try_start_1
    invoke-virtual/range {v9 .. v25}, Lcom/android/systemui/statusbar/SecNotificationInfo;->bindNotification(Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Ljava/lang/String;Landroid/app/NotificationChannel;ILandroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/SecNotificationInfo$OnSettingsClickListener;Lcom/android/systemui/statusbar/SecNotificationInfo$OnAppSettingsClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;ZZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v4, v9

    move-object v5, v10

    move-object v6, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move-object/from16 v34, v14

    :goto_4
    const-string v2, "NotificationGutsManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method public onDensityOrFontScaleChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationGutsManager;->setExposedGuts(Lcom/android/systemui/statusbar/NotificationGuts;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method openGuts(Landroid/view/View;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)Z
    .locals 11

    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "NotificationGutsManager"

    const-string v2, "Trying to show notification guts, but not attached to window"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isDark()Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    return v1

    :cond_3
    instance-of v2, p4, Lcom/android/systemui/statusbar/NotificationMenuRow$NotificationFreeformMenuItem;

    const/4 v10, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFreeFormClicked(Z)V

    return v1

    :cond_4
    invoke-virtual {p0, v0, p4}, Lcom/android/systemui/statusbar/NotificationGutsManager;->bindGuts(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v3, 0xcc

    invoke-virtual {v1, v3}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    new-instance v1, Lcom/android/systemui/statusbar/NotificationGutsManager$1;

    move-object v3, v1

    move-object v4, p0

    move-object v5, v0

    move-object v6, v2

    move v7, p2

    move v8, p3

    move-object v9, p4

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/NotificationGutsManager$1;-><init>(Lcom/android/systemui/statusbar/NotificationGutsManager;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;IILcom/android/systemui/plugins/statusbar/NotificationMenuRowPlugin$MenuItem;)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->post(Ljava/lang/Runnable;)Z

    return v10
.end method

.method public setExposedGuts(Lcom/android/systemui/statusbar/NotificationGuts;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mNotificationGutsExposed:Lcom/android/systemui/statusbar/NotificationGuts;

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method

.method public setKeyToRemoveOnGutsClosed(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mKeyToRemoveOnGutsClosed:Ljava/lang/String;

    return-void
.end method

.method public setUpWithPresenter(Lcom/android/systemui/statusbar/NotificationPresenter;Lcom/android/systemui/statusbar/NotificationEntryManager;Lcom/android/systemui/statusbar/NotificationListContainer;Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;Lcom/android/systemui/statusbar/NotificationGutsManager$OnSettingsClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mEntryManager:Lcom/android/systemui/statusbar/NotificationEntryManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mListContainer:Lcom/android/systemui/statusbar/NotificationListContainer;

    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mCheckSaveListener:Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;

    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mOnSettingsClickListener:Lcom/android/systemui/statusbar/NotificationGutsManager$OnSettingsClickListener;

    return-void
.end method

.method protected startAppOpsSettingsActivity(Ljava/lang/String;ILandroid/util/ArraySet;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/16 v0, 0x18

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-static {v2, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1, v0, p2, p4}, Lcom/android/systemui/statusbar/NotificationPresenter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1, v0, p2, p4}, Lcom/android/systemui/statusbar/NotificationPresenter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1, v0, p2, p4}, Lcom/android/systemui/statusbar/NotificationPresenter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    invoke-static {v2, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationGutsManager;->mPresenter:Lcom/android/systemui/statusbar/NotificationPresenter;

    invoke-interface {v1, v0, p2, p4}, Lcom/android/systemui/statusbar/NotificationPresenter;->startNotificationGutsIntent(Landroid/content/Intent;ILcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :goto_0
    return-void
.end method
