.class public Lcom/samsung/android/settings/inappnotification/InAppNotificationService;
.super Landroid/app/IntentService;
.source "InAppNotificationService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "InAppNotificationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private createPendingIntent(Landroid/content/Context;Lcom/samsung/android/settings/inappnotification/InAppNotificationData;)Landroid/app/PendingIntent;
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "InAppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pendingintent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    const/4 v4, 0x2

    invoke-virtual {p2, v4}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "fromNoti"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v4, 0x34000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-static {p1, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private handleActionNotification(Lcom/samsung/android/settings/inappnotification/InAppNotificationData;)V
    .locals 32

    move-object/from16 v0, p1

    if-eqz v0, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/inappnotification/InAppNotificationService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    const-string v3, "InAppService"

    const-string v5, "received channel id is null, so we should return this request."

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v8, "InAppService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "delete channel = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  before create : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v7}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_1
    const-string v8, "NoSound"

    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v8, :cond_2

    const-string v8, "InAppService"

    const-string v11, "No Sound channel"

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Landroid/app/NotificationChannel;

    invoke-direct {v8, v4, v6, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v11}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    goto :goto_0

    :cond_2
    new-instance v8, Landroid/app/NotificationChannel;

    invoke-direct {v8, v4, v6, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    :goto_0
    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v8, v11}, Landroid/app/NotificationChannel;->setLightColor(I)V

    :cond_3
    invoke-virtual {v8, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v13

    if-ne v13, v5, :cond_4

    move v13, v5

    goto :goto_1

    :cond_4
    move v13, v3

    :goto_1
    invoke-virtual {v8, v13}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/16 v14, 0xd

    invoke-virtual {v0, v14}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xe

    invoke-virtual {v0, v15}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v14, :cond_5

    if-eqz v15, :cond_5

    new-instance v3, Landroid/app/NotificationChannelGroup;

    invoke-direct {v3, v14, v15}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    invoke-virtual {v8, v14}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, v1, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v16

    if-eqz v16, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    goto :goto_2

    :cond_6
    const v9, 0x7f0f0002

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    :goto_2
    const/16 v9, 0xb

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v5

    if-lez v5, :cond_7

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    :cond_7
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    :cond_8
    const/4 v12, 0x6

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x7

    move/from16 v17, v5

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v5

    if-nez v9, :cond_9

    if-eqz v5, :cond_c

    :cond_9
    new-instance v12, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v12}, Landroid/app/Notification$BigTextStyle;-><init>()V

    if-eqz v9, :cond_a

    invoke-virtual {v12, v9}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v12, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_b
    invoke-virtual {v3, v12}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_c
    const/16 v12, 0xa

    invoke-virtual {v0, v12}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v18, v5

    const/16 v5, 0x9

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v5

    move-object/from16 v19, v6

    const/4 v6, 0x1

    if-ne v5, v6, :cond_d

    const/4 v5, 0x1

    goto :goto_3

    :cond_d
    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v6

    move/from16 v20, v5

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v5

    move-object/from16 v21, v7

    const/16 v7, 0x8

    move-object/from16 v22, v8

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v8

    const/4 v7, 0x1

    if-ne v8, v7, :cond_e

    const/4 v7, 0x1

    goto :goto_4

    :cond_e
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v3, v5, v6, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-object/from16 v8, p0

    move/from16 v23, v5

    invoke-direct {v8, v1, v0}, Lcom/samsung/android/settings/inappnotification/InAppNotificationService;->createPendingIntent(Landroid/content/Context;Lcom/samsung/android/settings/inappnotification/InAppNotificationData;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-object/from16 v24, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    move-object/from16 v25, v5

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move/from16 v26, v6

    const-string v6, "android.substName"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    goto :goto_5

    :cond_f
    move-object/from16 v25, v5

    move/from16 v26, v6

    :goto_5
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v5

    if-lez v5, :cond_10

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    :cond_10
    const-string v6, "NoSound"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    :cond_11
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getActions()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_12

    const/16 v16, 0x0

    :goto_6
    move/from16 v27, v16

    move-object/from16 v28, v1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v29, v4

    move/from16 v4, v27

    if-ge v4, v1, :cond_13

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$Action;

    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    add-int/lit8 v16, v4, 0x1

    move-object/from16 v1, v28

    move-object/from16 v4, v29

    goto :goto_6

    :cond_12
    move-object/from16 v28, v1

    move-object/from16 v29, v4

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v1

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    move-object/from16 v30, v3

    iget v3, v4, Landroid/app/Notification;->flags:I

    move/from16 v31, v5

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getIntegerData(I)I

    move-result v5

    or-int/2addr v3, v5

    iput v3, v4, Landroid/app/Notification;->flags:I

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->getStringData(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_7

    :cond_14
    move-object/from16 v8, p0

    :goto_7
    return-void
.end method

.method private parseData(Landroid/content/Intent;)Lcom/samsung/android/settings/inappnotification/InAppNotificationData;
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;

    invoke-direct {v0}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/inappnotification/InAppNotificationData;->setData(Landroid/content/Intent;)V

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.settings.action.INAPP_NOTI_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/inappnotification/InAppNotificationService;->parseData(Landroid/content/Intent;)Lcom/samsung/android/settings/inappnotification/InAppNotificationData;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/inappnotification/InAppNotificationService;->handleActionNotification(Lcom/samsung/android/settings/inappnotification/InAppNotificationData;)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    const/4 v0, 0x2

    return v0
.end method
