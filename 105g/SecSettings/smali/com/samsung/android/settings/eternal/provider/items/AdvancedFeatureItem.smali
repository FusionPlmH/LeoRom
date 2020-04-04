.class public Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;
.super Ljava/lang/Object;
.source "AdvancedFeatureItem.java"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AdvancedFeatureItem"

    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene;
    .locals 7

    new-instance v0, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    const/4 v4, -0x1

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x1

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "/Settings/Advanced/DirectCall"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v5, "/Settings/Advanced/SwipeToCallOrSendMessage"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x6

    goto :goto_0

    :sswitch_2
    const-string v5, "/Settings/Advanced/SmartCapture"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v6

    goto :goto_0

    :sswitch_3
    const-string v5, "/Settings/Advanced/PalmSwipeToCapture"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :sswitch_4
    const-string v5, "/Settings/Advanced/SmartAlert"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :sswitch_5
    const-string v5, "/Settings/Advanced/SmartStay"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v2

    goto :goto_0

    :sswitch_6
    const-string v5, "/Settings/Advanced/EasyMute"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x5

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    const-string v4, "AdvancedFeatureItem"

    goto/16 :goto_1

    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    sget v4, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v5, 0x138e4

    if-lt v4, v5, :cond_2

    const-string/jumbo v4, "swipe_to_call_message"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v3, v4

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_2

    :pswitch_1
    const-string v4, "easy_mute"

    invoke-static {p1, v4}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "motion_merged_mute_pause"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v3, v4

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string v4, "palmTouch"

    const-string/jumbo v5, "surface_palm_touch"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string/jumbo v4, "turnOver"

    const-string v5, "motion_overturn"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_2

    :pswitch_2
    const-string/jumbo v4, "smart_alert"

    invoke-static {p1, v4}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "motion_pick_up"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v3, v4

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_2

    :pswitch_3
    const-string v4, "direct_call"

    invoke-static {p1, v4}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "motion_pick_up_to_call_out"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v3, v4

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_2

    :pswitch_4
    const-string v4, "palm_swipe_to_capture"

    invoke-static {p1, v4}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "surface_palm_swipe"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v3, v4

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_2

    :pswitch_5
    const-string v4, "com.samsung.android.app.scrollcapture"

    invoke-static {p1, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "com.samsung.android.app.smartcapture"

    invoke-static {p1, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v4, "enable_smart_capture"

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v3, v4

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_2

    :pswitch_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isT4RModel()Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "intelligent_sleep_mode"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    move v3, v4

    invoke-virtual {v0, v3}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(I)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_2

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown key : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v4

    const-string v5, "AdvancedFeatureItem"

    invoke-virtual {v4}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    aget-object v2, v6, v2

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {v0}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5facb6d5 -> :sswitch_6
        -0x5da9ee2e -> :sswitch_5
        -0x589512fd -> :sswitch_4
        -0x51680a0d -> :sswitch_3
        -0x2ff922d3 -> :sswitch_2
        -0xdb8c327 -> :sswitch_1
        0x220821d7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene;
    .locals 8

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Lcom/samsung/android/lib/episode/Scene;->getValue()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v2, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "/Settings/Advanced/DirectCall"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :sswitch_1
    const-string v5, "/Settings/Advanced/SwipeToCallOrSendMessage"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string v5, "/Settings/Advanced/SmartCapture"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :sswitch_3
    const-string v5, "/Settings/Advanced/PalmSwipeToCapture"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_4
    const-string v5, "/Settings/Advanced/SmartAlert"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v5, "/Settings/Advanced/SmartStay"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    :sswitch_6
    const-string v5, "/Settings/Advanced/EasyMute"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x5

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v5, 0x138e4

    if-lt v3, v5, :cond_1

    const-string/jumbo v3, "swipe_to_call_message"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_1
    const-string v3, "errorType"

    const-string v5, "FEATURE"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_2

    :pswitch_1
    const-string v3, "easy_mute"

    invoke-static {p1, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "motion_merged_mute_pause"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "palmTouch"

    invoke-virtual {p3, v3}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "turnOver"

    invoke-virtual {p3, v5}, Lcom/samsung/android/lib/episode/Scene;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "surface_palm_touch"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "motion_overturn"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    goto/16 :goto_2

    :cond_4
    const-string v3, "errorType"

    const-string v5, "FEATURE"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_2

    :pswitch_2
    const-string/jumbo v3, "smart_alert"

    invoke-static {p1, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "motion_pick_up"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :cond_5
    const-string v3, "errorType"

    const-string v5, "FEATURE"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_2

    :pswitch_3
    const-string v3, "direct_call"

    invoke-static {p1, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "motion_pick_up_to_call_out"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    const-string v3, "errorType"

    const-string v5, "FEATURE"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_2

    :pswitch_4
    const-string v3, "palm_swipe_to_capture"

    invoke-static {p1, v3}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "surface_palm_swipe"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    const-string v3, "errorType"

    const-string v5, "FEATURE"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_2

    :pswitch_5
    const-string v3, "com.samsung.android.app.scrollcapture"

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "com.samsung.android.app.smartcapture"

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_1

    :cond_8
    const-string v3, "errorType"

    const-string v5, "FEATURE"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_2

    :cond_9
    :goto_1
    const-string v3, "enable_smart_capture"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :pswitch_6
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isT4RModel()Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "intelligent_sleep_mode"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_a
    const-string v3, "errorType"

    const-string v5, "FEATURE"

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/lib/episode/Scene$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v3

    const-string v5, "AdvancedFeatureItem"

    invoke-virtual {v3}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    aget-object v4, v6, v4

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-virtual {v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->build()Lcom/samsung/android/lib/episode/Scene;

    move-result-object v3

    return-object v3

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5facb6d5 -> :sswitch_6
        -0x5da9ee2e -> :sswitch_5
        -0x589512fd -> :sswitch_4
        -0x51680a0d -> :sswitch_3
        -0x2ff922d3 -> :sswitch_2
        -0xdb8c327 -> :sswitch_1
        0x220821d7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
