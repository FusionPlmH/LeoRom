.class public final Lcom/android/internal/telephony/SmsApplication;
.super Ljava/lang/Object;
.source "SmsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;,
        Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_PACKAGE_NAME:Ljava/lang/String; = "com.android.bluetooth"

.field private static final COREAPPS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.coreapps"

.field private static final DEBUG_MULTIUSER:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "SmsApplication"

.field private static final MMS_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms.service"

.field private static final NEW_SEC_SMS_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.messaging"

.field private static final NSRI_PACKAGE_NAME:Ljava/lang/String; = "com.tion.securitysms"

.field private static final PHONE_PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final SCHEME_MMS:Ljava/lang/String; = "mms"

.field private static final SCHEME_MMSTO:Ljava/lang/String; = "mmsto"

.field private static final SCHEME_SMS:Ljava/lang/String; = "sms"

.field private static final SCHEME_SMSTO:Ljava/lang/String; = "smsto"

.field private static final SEC_SMS_PACKAGE_NAME:Ljava/lang/String; = "com.android.mms"

.field private static final TELEPHONY_PROVIDER_PACKAGE_NAME:Ljava/lang/String; = "com.android.providers.telephony"

.field private static mPendingDeliveryIntent:Landroid/app/PendingIntent;

.field private static sPackageNamePattern:[Ljava/lang/String;

.field private static sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->mPendingDeliveryIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$800(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    return-void
.end method

.method private static assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SmsApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " does not have system signature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0xf

    invoke-virtual {p2, v4, v3, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v5, "SmsApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not have OP_WRITE_SMS:  (fixing)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v4, v5, p3, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "SmsApplication"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V
    .locals 2

    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/AppOpsManager;->setUidMode(III)V

    return-void
.end method

.method private static configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V
    .locals 1

    const-string/jumbo v0, "sms"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    const-string/jumbo v0, "smsto"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    const-string/jumbo v0, "mms"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    const-string/jumbo v0, "mmsto"

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/SmsApplication;->replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V

    return-void
.end method

.method private static getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 12

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "SmsApplication"

    const-string v2, "getApplication: context is null!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v2

    const/16 v3, 0x3e9

    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "cmc_device_type"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "ATT"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_1
    if-eqz p1, :cond_3

    const-string v4, "appops"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "com.android.phone"

    invoke-static {p0, v5, v4, v6}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string v6, "com.android.bluetooth"

    invoke-static {p0, v5, v4, v6}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string v6, "com.android.mms.service"

    invoke-static {p0, v5, v4, v6}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string v6, "com.android.providers.telephony"

    invoke-static {p0, v5, v4, v6}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    invoke-static {v4, v3}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.samsung.android.messaging"

    invoke-static {p0, v5, v4, v3}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    :cond_2
    const-string v3, "SmsApplication"

    const-string v6, "Assign writesms permission to special system apps for specific tablets"

    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    return-object v0

    :cond_4
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "sms_default_application"

    invoke-static {v2, v4, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    :cond_5
    const/4 v5, 0x0

    if-eqz p1, :cond_9

    if-nez v4, :cond_9

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040291

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v8

    if-eqz v8, :cond_8

    move v8, v5

    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    const-string v9, "com.samsung.android.messaging"

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v10

    aget-object v10, v10, v8

    check-cast v10, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v10, v10, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v9

    aget-object v9, v9, v8

    move-object v4, v9

    check-cast v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    goto :goto_1

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_7
    :goto_1
    if-nez v4, :cond_8

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v8

    aget-object v8, v8, v5

    move-object v4, v8

    check-cast v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    :cond_8
    if-eqz v4, :cond_9

    iget-object v8, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v8, p0, p2}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V

    :cond_9
    if-eqz v4, :cond_e

    const-string v6, "appops"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager;

    if-nez p1, :cond_a

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$700(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    if-ne v7, v8, :cond_d

    :cond_a
    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$700(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v7

    iget-object v8, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/16 v9, 0xf

    invoke-virtual {v6, v9, v7, v8}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_d

    const-string v8, "SmsApplication"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " lost OP_WRITE_SMS: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_b

    const-string v11, " (fixing)"

    goto :goto_2

    :cond_b
    const-string v11, " (no permission to fix)"

    :goto_2
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_c

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$700(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v8

    iget-object v10, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v9, v8, v10, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_3

    :cond_c
    const/4 v4, 0x0

    :cond_d
    :goto_3
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$300(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5, v7, p2}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    const-string v7, "com.android.phone"

    invoke-static {p0, v5, v6, v7}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string v7, "com.android.bluetooth"

    invoke-static {p0, v5, v6, v7}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string v7, "com.android.mms.service"

    invoke-static {p0, v5, v6, v7}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string v7, "com.android.providers.telephony"

    invoke-static {p0, v5, v6, v7}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    invoke-static {v6, v3}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V

    :cond_e
    return-object v4
.end method

.method public static getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private static getApplicationCollectionInternal(Landroid/content/Context;I)Ljava/util/Collection;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;"
        }
    .end annotation

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v6, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v9, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.permission.BROADCAST_SMS"

    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v11, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v10, v11}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;-><init>(Ljava/lang/String;I)V

    iget-object v11, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v0, v11}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$002(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v6, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v11, "SmsApplication"

    const-string v12, "Error getting applicationName"

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.provider.Telephony.WAP_PUSH_DELIVER"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "application/vnd.wap.mms-message"

    const/4 v7, 0x0

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0, v4, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v10, :cond_4

    goto :goto_2

    :cond_4
    const-string v11, "android.permission.BROADCAST_WAP_PUSH"

    iget-object v12, v10, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_2

    :cond_5
    iget-object v11, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v12, :cond_6

    iget-object v13, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v12, v13}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$102(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    goto :goto_2

    :cond_7
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.RESPOND_VIA_MESSAGE"

    const-string/jumbo v10, "smsto"

    const-string v11, ""

    invoke-static {v10, v11, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v8

    invoke-virtual {v2, v0, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v11, :cond_8

    goto :goto_3

    :cond_8
    const-string v12, "android.permission.SEND_RESPOND_VIA_MESSAGE"

    iget-object v13, v11, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    goto :goto_3

    :cond_9
    iget-object v12, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v13, :cond_a

    iget-object v14, v11, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$202(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    :cond_a
    goto :goto_3

    :cond_b
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.SENDTO"

    const-string/jumbo v11, "smsto"

    const-string v12, ""

    invoke-static {v11, v12, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v9, v10, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v0, v9

    invoke-virtual {v2, v0, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v11, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v11, :cond_c

    goto :goto_4

    :cond_c
    iget-object v12, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v13, :cond_d

    iget-object v14, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$302(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    :cond_d
    goto :goto_4

    :cond_e
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    nop

    invoke-virtual {v2, v0, v4, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v12, :cond_f

    goto :goto_5

    :cond_f
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v14, :cond_10

    iget-object v15, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v14, v15}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$402(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    :cond_10
    goto :goto_5

    :cond_11
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.provider.action.EXTERNAL_PROVIDER_CHANGE"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v10

    nop

    invoke-virtual {v2, v0, v4, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v13, :cond_12

    goto :goto_6

    :cond_12
    iget-object v14, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v15, :cond_13

    iget-object v4, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v15, v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$502(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    :cond_13
    nop

    const/4 v4, 0x0

    goto :goto_6

    :cond_14
    new-instance v4, Landroid/content/Intent;

    const-string v11, "android.provider.Telephony.SIM_FULL"

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    nop

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_17

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v13, :cond_15

    goto :goto_7

    :cond_15
    iget-object v14, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v15, :cond_16

    move-object/from16 v16, v0

    iget-object v0, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v15, v0}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$602(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_8

    :cond_16
    move-object/from16 v16, v0

    :goto_8
    move-object/from16 v0, v16

    goto :goto_7

    :cond_17
    move-object/from16 v16, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v12, :cond_18

    goto :goto_9

    :cond_18
    iget-object v13, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v14, :cond_19

    invoke-virtual {v14}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->isComplete()Z

    move-result v15

    if-nez v15, :cond_19

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    goto :goto_9

    :cond_1a
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method private static getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v3, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getDefaultExternalTelephonyProviderChangedApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 8

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$500(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$500(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    :cond_0
    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 8

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$100(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    :cond_0
    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static getDefaultRespondViaMessageApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 8

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$200(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    :cond_0
    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static getDefaultSendToApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 8

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$300(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    :cond_0
    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static getDefaultSimFullApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 8

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$600(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$600(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    :cond_0
    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public static getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;
    .locals 8

    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplication(Landroid/content/Context;ZI)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$000(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v5

    :cond_0
    nop

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private static getDefaultSmsApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getEnableSecSms(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    :try_start_0
    const-string v3, "com.android.mms"

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    :try_start_1
    const-string v3, "com.samsung.android.messaging"

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v1, 0x1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    return v1
.end method

.method private static getIncomingUserId(Landroid/content/Context;)I
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_0

    return v0

    :cond_0
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    return v2
.end method

.method public static getPendingDeliveryIntent()Landroid/app/PendingIntent;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->mPendingDeliveryIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public static getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .locals 2

    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v1

    return-object v1
.end method

.method public static initPendingDeliveryIntent()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->mPendingDeliveryIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static initSmsPackageMonitor(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->sSmsPackageMonitor:Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/SmsApplication$SmsPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public static isDefaultSmsApplication(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "com.android.bluetooth"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    return v2

    :cond_3
    invoke-static {p0}, Lcom/android/internal/telephony/SmsApplication;->getEnableSecSms(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "com.samsung.android.coreapps"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v2, "SmsApplication"

    const-string/jumbo v3, "shouldWriteMessageForPackage is true for none SECSMS app model."

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    const/4 v3, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/16 v5, 0xfa2

    if-eq v4, v5, :cond_5

    move v4, v2

    goto :goto_0

    :cond_5
    move v4, v0

    :goto_0
    move v3, v4

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->isShouldNotWriteMessage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v3, :cond_8

    return v0

    :cond_8
    return v2
.end method

.method public static isShouldNotWriteMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->sPackageNamePattern:[Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SmsApplication;->sPackageNamePattern:[Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SmsApplication;->sPackageNamePattern:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v0, "SmsApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is matched"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportHuxAvs"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p1}, Lcom/android/internal/telephony/SmsApplication;->isVzwAuthorizedApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_3
    const-string v0, "SmsApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No PackageName Pattern : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private static isVzwAuthorizedApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    :try_start_0
    const-string v3, "content://com.verizon.vzwavs.provider/apis"

    const-string v4, "content://com.verizon.vzwavs.mvs.provider/apis"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    array-length v9, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v10, 0x0

    move-object v11, v1

    move v1, v10

    :goto_0
    if-ge v1, v9, :cond_1

    :try_start_1
    aget-object v3, v8, v1

    move-object v12, v3

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v11, v3

    if-eqz v11, :cond_0

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "VZWSMS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz v11, :cond_2

    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v3

    move-object v11, v1

    move-object v1, v3

    goto :goto_5

    :catch_1
    move-exception v3

    move-object v11, v1

    move-object v1, v3

    :goto_3
    :try_start_2
    const-string v3, "SmsApplication"

    const-string/jumbo v4, "isVzwAuthorizedApp|exception while querying avs"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    :goto_4
    return v0

    :catchall_1
    move-exception v1

    :goto_5
    if-eqz v11, :cond_3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private static replacePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;ILjava/lang/String;)V
    .locals 11

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {p3, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v1, 0x10040

    invoke-virtual {p0, v0, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v9, v2, [Landroid/content/ComponentName;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    move-object v10, v3

    const-string v3, "android.intent.action.SENDTO"

    invoke-virtual {v10, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v10, v3}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v10, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const v5, 0x208000

    move-object v3, p0

    move-object v4, v10

    move-object v6, v9

    move-object v7, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/PackageManager;->replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    return-void
.end method

.method public static setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V
    .locals 9

    if-nez p1, :cond_0

    const-string v0, "SmsApplication"

    const-string v1, "context in DefaultApplication is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string v2, "content://com.sec.knox.provider2/ApplicationPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x2

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v7, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "isChangeSmsDefaultAppAllowed"

    const/4 v8, 0x0

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "isChangeSmsDefaultAppAllowed"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v4

    :catch_0
    move-exception v4

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const-string v4, "SmsApplication"

    const-string v5, "Block setDefaultApplication by admin"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz p1, :cond_5

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    :cond_4
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getIncomingUserId(Landroid/content/Context;)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_1
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_2

    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_5
    const-string v0, "SmsApplication"

    const-string v1, "context in DefaultApplication is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private static setDefaultApplicationInternal(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 13

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sms_default_application"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-static {v2, v0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, p0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationForPackage(Ljava/util/Collection;Ljava/lang/String;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string v5, "appops"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager;

    const/4 v6, 0x1

    const/16 v7, 0xf

    const/4 v8, 0x0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v1, v0, v8, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v7, v10, v0, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    const-string v10, "SmsApplication"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Old SMS package not found: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const-string v9, "SmsApplication"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "update the default app to : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " oldPackageName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.samsung.intent.action.SMS_BIG_DATA_INFO"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "feature"

    const-string/jumbo v11, "sdac"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "nsda"

    iget-object v11, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v10, "osda"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "sms_default_application"

    iget-object v12, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v10, v11, v12, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$300(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v10, p2}, Lcom/android/internal/telephony/SmsApplication;->configurePreferredActivity(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$700(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)I

    move-result v10

    iget-object v11, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v10, v11, v8}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    const-string v7, "com.android.phone"

    invoke-static {p1, v1, v5, v7}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string v7, "com.android.bluetooth"

    invoke-static {p1, v1, v5, v7}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string v7, "com.android.mms.service"

    invoke-static {p1, v1, v5, v7}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const-string v7, "com.android.providers.telephony"

    invoke-static {p1, v1, v5, v7}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemApp(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/AppOpsManager;Ljava/lang/String;)V

    const/16 v7, 0x3e9

    invoke-static {v5, v7}, Lcom/android/internal/telephony/SmsApplication;->assignWriteSmsPermissionToSystemUid(Landroid/app/AppOpsManager;I)V

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$400(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$400(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v11, "android.provider.extra.IS_DEFAULT_SMS_APP"

    invoke-virtual {v7, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$400(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v8, Landroid/content/ComponentName;

    iget-object v10, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->access$400(Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v10, "android.provider.extra.IS_DEFAULT_SMS_APP"

    invoke-virtual {v7, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_4
    const/16 v6, 0x10a

    iget-object v7, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static setPendingDeliveryIntent(Landroid/app/PendingIntent;)V
    .locals 0

    sput-object p0, Lcom/android/internal/telephony/SmsApplication;->mPendingDeliveryIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public static shouldWriteMessageForPackage(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    const-string v0, "SmsApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "shouldWriteMessageForPackage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->isDefaultSmsApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method
