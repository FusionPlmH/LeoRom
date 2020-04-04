.class public Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;
.super Ljava/lang/Object;
.source "LockScreenItem.java"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# instance fields
.field private final FACE_WIDGET_DEFAULT_ORDER:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Eternal/LockScreenItem"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->TAG:Ljava/lang/String;

    const-string v0, "servicebox_music;servicebox_calendar;servicebox_alarm"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;->FACE_WIDGET_DEFAULT_ORDER:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene;
    .locals 17

    move-object/from16 v1, p2

    new-instance v0, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v0, v1}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v5, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "/Settings/LockScreen/FaceWidgetPosition"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "/Settings/LockScreen/RoamingClockHomeCity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "/Settings/LockScreen/FaceWidget"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "/Settings/LockScreen/AutoReverseTextColor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_4
    const-string v0, "/Settings/LockScreen/RoamingClock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto :goto_1

    :sswitch_5
    const-string v0, "/Settings/LockScreen/NotificationIconOnly"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_6
    const-string v0, "/Settings/LockScreen/ShowNotification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string v0, "/Settings/LockScreen/Transparency"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_8
    const-string v0, "/Settings/LockScreen/HideContent"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_9
    const-string v0, "/Settings/LockScreen/RoamingClockPosition"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v5

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const-string v0, "notification_text_color_inversion"

    invoke-static {v3, v0, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    :pswitch_1
    const-string v0, "lock_noticard_opacity"

    const/16 v4, 0x2d

    invoke-static {v3, v0, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    :pswitch_2
    const-string v0, "lockscreen_minimizing_notification"

    invoke-static {v3, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    :pswitch_3
    const-string v0, "lock_screen_allow_private_notifications"

    invoke-static {v3, v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    :pswitch_4
    const-string v0, "lock_screen_show_notifications"

    invoke-static {v3, v0, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    :pswitch_5
    const-string v0, "face_widgets_option"

    invoke-static {v3, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_8

    :pswitch_6
    const-string v0, "face_widget_order"

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "servicebox_music;servicebox_calendar;servicebox_alarm"

    goto :goto_2

    :cond_1
    move-object v0, v8

    :goto_2
    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v0, ";"

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v0, 0x0

    move v10, v0

    move v0, v7

    :goto_3
    move v11, v0

    array-length v0, v9

    if-ge v11, v0, :cond_6

    aget-object v12, v9, v11

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v13, -0x55117438

    if-eq v0, v13, :cond_4

    const v13, -0x54640064

    if-eq v0, v13, :cond_3

    const v13, 0x21ca6267

    if-eq v0, v13, :cond_2

    goto :goto_4

    :cond_2
    const-string v0, "servicebox_calendar"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    goto :goto_5

    :cond_3
    const-string v0, "servicebox_music"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v7

    goto :goto_5

    :cond_4
    const-string v0, "servicebox_alarm"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v5

    :goto_5
    packed-switch v0, :pswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add_info_"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "."

    const-string v14, "_"

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :pswitch_7
    const-string v0, "nextAlarm"

    const-string v13, "add_info_alarm"

    invoke-static {v3, v13, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v0, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_7

    :pswitch_8
    const-string/jumbo v0, "todaySchedule"

    const-string v13, "add_info_today_schedule"

    invoke-static {v3, v13, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v0, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_7

    :pswitch_9
    const-string v0, "musicController"

    const-string v13, "add_info_music_control"

    invoke-static {v3, v13, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v0, v13}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_7

    :goto_6
    move-object v13, v0

    add-int/lit8 v10, v10, 0x1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "faceWidget_Item_"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v13, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v0, v14}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    const-string v14, "Eternal/LockScreenItem"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no item in face widget. Item : "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    add-int/lit8 v0, v11, 0x1

    goto/16 :goto_3

    :cond_6
    const-string v0, "facewidget_item_cnt"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_8

    :pswitch_a
    const-string v0, "homecity_timezone"

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_8

    :pswitch_b
    const-string v0, "roaming_clock_option"

    invoke-static {v3, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_8

    :pswitch_c
    const-string v0, "dualclock_menu_settings"

    invoke-static {v3, v0, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    nop

    :goto_8
    invoke-virtual {v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v0

    return-object v0

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x771ea347 -> :sswitch_9
        -0x710e2284 -> :sswitch_8
        -0x25f91cad -> :sswitch_7
        -0x2538b8fd -> :sswitch_6
        -0x23b5d535 -> :sswitch_5
        0x6c2cf70 -> :sswitch_4
        0x27316a3e -> :sswitch_3
        0x2b8a7dbc -> :sswitch_2
        0x3f4c3e7a -> :sswitch_1
        0x7e6bff05 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene;
    .locals 17

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/lib/episode/Scene;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    return-object v5

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_AOD_LOCK_SHARE_INFO"

    invoke-virtual {v4, v6}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v9, 0x1

    const/4 v10, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v6, "/Settings/LockScreen/FaceWidgetPosition"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_1
    const-string v6, "/Settings/LockScreen/RoamingClockHomeCity"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_2
    const-string v6, "/Settings/LockScreen/FaceWidget"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_3
    const-string v6, "/Settings/LockScreen/AutoReverseTextColor"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x9

    goto :goto_1

    :sswitch_4
    const-string v6, "/Settings/LockScreen/RoamingClock"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :sswitch_5
    const-string v6, "/Settings/LockScreen/NotificationIconOnly"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x7

    goto :goto_1

    :sswitch_6
    const-string v6, "/Settings/LockScreen/ShowNotification"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_7
    const-string v6, "/Settings/LockScreen/Transparency"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x8

    goto :goto_1

    :sswitch_8
    const-string v6, "/Settings/LockScreen/HideContent"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x6

    goto :goto_1

    :sswitch_9
    const-string v6, "/Settings/LockScreen/RoamingClockPosition"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v9

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v10

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    const-string v6, "notification_text_color_inversion"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_1
    const-string v6, "lock_noticard_opacity"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_2
    const-string v6, "lockscreen_minimizing_notification"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_3
    const-string v6, "lock_screen_allow_private_notifications"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_4
    const-string v6, "lock_screen_show_notifications"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_5
    if-nez v4, :cond_2

    const-string v6, "Eternal/LockScreenItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Device not support face widget - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "face_widgets_option"

    if-gt v6, v9, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    invoke-static {v2, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_6
    if-nez v4, :cond_4

    const-string v6, "Eternal/LockScreenItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Device not support face widget - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_4
    const-string v6, "face_widget_order"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "facewidget_item_cnt"

    invoke-virtual {v1, v6, v10}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result v6

    const-string v11, ";"

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    :goto_3
    array-length v13, v11

    if-ge v12, v13, :cond_c

    const/4 v13, -0x1

    aget-object v14, v11, v12

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v15

    const v7, -0x55117438

    if-eq v15, v7, :cond_7

    const v7, -0x54640064

    if-eq v15, v7, :cond_6

    const v7, 0x21ca6267

    if-eq v15, v7, :cond_5

    goto :goto_4

    :cond_5
    const-string v7, "servicebox_calendar"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v9

    goto :goto_5

    :cond_6
    const-string v7, "servicebox_music"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    goto :goto_5

    :cond_7
    const-string v7, "servicebox_alarm"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x2

    goto :goto_5

    :cond_8
    :goto_4
    move v7, v10

    :goto_5
    packed-switch v7, :pswitch_data_1

    if-ge v6, v9, :cond_9

    goto :goto_7

    :pswitch_7
    const-string v7, "nextAlarm"

    invoke-virtual {v1, v7, v10}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v10, :cond_b

    const-string v13, "add_info_alarm"

    invoke-static {v2, v13, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    :pswitch_8
    const-string/jumbo v7, "todaySchedule"

    invoke-virtual {v1, v7, v10}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v10, :cond_b

    const-string v13, "add_info_today_schedule"

    invoke-static {v2, v13, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    :pswitch_9
    const-string v7, "musicController"

    invoke-virtual {v1, v7, v10}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v10, :cond_b

    const-string v13, "add_info_music_control"

    invoke-static {v2, v13, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_7

    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "add_info_"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "."

    const-string v8, "_"

    invoke-virtual {v14, v15, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move v8, v9

    :goto_6
    if-gt v8, v6, :cond_b

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "faceWidget_Item_"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9, v10}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result v13

    if-eq v13, v10, :cond_a

    invoke-static {v2, v7, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    add-int/lit8 v12, v12, 0x1

    const/4 v9, 0x1

    goto/16 :goto_3

    :cond_c
    goto :goto_8

    :pswitch_a
    const-string v6, "homecity_timezone"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    :pswitch_b
    const-string v6, "roaming_clock_option"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :pswitch_c
    const-string v6, "dualclock_menu_settings"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    nop

    :goto_8
    return-object v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x771ea347 -> :sswitch_9
        -0x710e2284 -> :sswitch_8
        -0x25f91cad -> :sswitch_7
        -0x2538b8fd -> :sswitch_6
        -0x23b5d535 -> :sswitch_5
        0x6c2cf70 -> :sswitch_4
        0x27316a3e -> :sswitch_3
        0x2b8a7dbc -> :sswitch_2
        0x3f4c3e7a -> :sswitch_1
        0x7e6bff05 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
