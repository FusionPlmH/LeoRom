.class public final Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;
.super Landroid/support/v14/preference/PreferenceFragment;
.source "BluetoothControlHistory.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;
    }
.end annotation


# static fields
.field private static CLAUSE_ONLY_3RD_PARTY_APP:Ljava/lang/String;

.field private static final DBG:Z


# instance fields
.field private mApplicationCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private mDateFormat:Ljava/text/DateFormat;

.field private mDescription:Landroid/support/v7/preference/Preference;

.field private mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mNoItemPreference:Landroid/support/v7/preference/Preference;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field private mScreenId:Ljava/lang/String;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->DBG:Z

    const-string v0, "caller_name!= \'com.android.bluetooth\' AND caller_name!= \'com.android.nfc\' AND caller_name!= \'com.android.settings\' AND caller_name!= \'com.android.systemui\' AND caller_name!= \'com.samsung.android.easysetup\' AND caller_name!= \'com.samsung.android.oneconnect\' AND caller_name!= \'com.sec.android.easysettings\' AND caller_name!= \'com.sec.android.emergencymode.service\' AND caller_name!= \'com.samsung.android.bixby.agent\'"

    sput-object v0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->CLAUSE_ONLY_3RD_PARTY_APP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTitleView:Landroid/widget/TextView;

    return-object p1
.end method

.method private addApplicationPreferences()V
    .locals 14

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    const-string v0, "content://com.samsung.bt.btservice/btservice"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    move-object v7, v1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    sget-object v4, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->CLAUSE_ONLY_3RD_PARTY_APP:Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "timestamp DESC"

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v7, v1

    if-nez v7, :cond_1

    const-string v1, "BluetoothControlHistory"

    const-string v2, "addApplicationPreferences :: query return null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    const-string v1, "BluetoothControlHistory"

    const-string v2, "addApplicationPreferences :: will be cursor close"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    const-string v1, "BluetoothControlHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addApplicationPreferences :: cursor count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Columns : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "caller_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "last_event"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "timestamp"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    new-instance v6, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;

    invoke-direct {v6, v4, v5, v8, v9}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;-><init>(Ljava/lang/String;IJ)V

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->createApplicationPreference(Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v11, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v11, v10}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    :cond_2
    const-string v11, "BluetoothControlHistory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addApplicationPreferences :: Can\'t get Application Information about : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v7, :cond_4

    :goto_2
    const-string v1, "BluetoothControlHistory"

    const-string v2, "addApplicationPreferences :: will be cursor close"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_6

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "BluetoothControlHistory"

    const-string v3, "addApplicationPreferences :: Occurs IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ltz v1, :cond_7

    const/16 v2, 0xa

    if-gt v1, v2, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    goto :goto_5

    :cond_5
    const/16 v2, 0x14

    if-gt v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1206a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1206a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1212af

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12086b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-nez v1, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->addNoApplicationsPreference()V

    :cond_8
    return-void

    :goto_6
    if-eqz v7, :cond_9

    const-string v2, "BluetoothControlHistory"

    const-string v3, "addApplicationPreferences :: will be cursor close"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v1
.end method

.method private addNoApplicationsPreference()V
    .locals 2

    const-string v0, "BluetoothControlHistory"

    const-string v1, "addNoApplicationsPreference :: Does not found Bluetooth control application"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->seslSetLastOutlineStrokeEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mNoItemPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method private createApplicationPreference(Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;)Landroid/support/v7/preference/Preference;
    .locals 8

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothControlHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createApplicationPreference :: package name is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x0

    move-object v3, v2

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getLastEvent()I

    move-result v5

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getLastEventTime()J

    move-result-wide v6

    invoke-direct {p0, v5, v6, v7}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getBtControlHistory(IJ)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v3, v5

    if-nez v3, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    :cond_1
    nop

    new-instance v2, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0d0217

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setLayoutResource(I)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-object v2

    :catch_0
    move-exception v4

    const-string v5, "BluetoothControlHistory"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createApplicationPreference :: Occurs NameNotFoundException about "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory$ControlAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method private getBtControlHistory(IJ)Ljava/lang/String;
    .locals 7

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BluetoothControlHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBtControlSummary :: event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTimeFormat:Ljava/text/DateFormat;

    const-string v0, ""

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/util/Date;->setTime(J)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " \u200e "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v3, "BluetoothControlHistory"

    const-string v4, "getBtControlSummary :: Does not have on/off history"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f1213cc

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-virtual {v5, v6, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f1213cb

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-virtual {v5, v6, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private refreshApplicationPreferences()V
    .locals 2

    const-string v0, "BluetoothControlHistory"

    const-string v1, "refreshApplicationPreferences :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mNoItemPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->addApplicationPreferences()V

    return-void
.end method


# virtual methods
.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "action_bar"

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    goto :goto_0

    :cond_0
    const-string v1, "BluetoothControlHistory"

    const-string v2, "onActivityCreated() :: toolbar is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "right_pane_toolbar"

    const-string v3, "id"

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Landroid/widget/TextView;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTitleView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    goto :goto_3

    :cond_4
    const-string v1, "BluetoothControlHistory"

    const-string v2, "onActivityCreated() :: toolbar is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    :cond_0
    const-string v0, "BluetoothControlHistory"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBluetoothStateChanged :: Bluetooth State change to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", it will update list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->refreshApplicationPreferences()V

    :cond_1
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f1500a5

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    const-string v0, "applications_list"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->seslSetSubheaderRoundedBg(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mApplicationCategory:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    const-string v0, "description"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mDescription:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mDescription:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->seslSetSubheaderRoundedBg(I)V

    const-string v0, "noitem"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mNoItemPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mNoItemPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->seslSetSubheaderRoundedBg(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1212b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreenId:Ljava/lang/String;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onDestroyView()V

    const-string v0, "BluetoothControlHistory"

    const-string v1, "onDestroyView::"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mTitleView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "BluetoothControlHistory"

    const-string v1, "onDestroyView:: mTitleView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12089c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothControlHistory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceTreeClick :: Launch Application info about"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12089b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "package"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const-class v3, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v6, 0x7f120187

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v5, v1

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v2, 0x0

    return v2
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v14/preference/PreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mLocalManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->refreshApplicationPreferences()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothControlHistory;->mScreenId:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "BluetoothControlHistory"

    const-string v1, "onCreate() :: mLocalManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method
