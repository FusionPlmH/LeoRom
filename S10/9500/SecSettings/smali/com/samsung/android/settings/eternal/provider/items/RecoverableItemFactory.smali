.class public Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;
.super Ljava/lang/Object;
.source "RecoverableItemFactory.java"


# static fields
.field private static mRecoverableItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/settings/eternal/provider/items/Recoverable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->mRecoverableItemMap:Ljava/util/HashMap;

    return-void
.end method

.method public static getItem(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/settings/eternal/provider/items/Recoverable;
    .locals 4

    sget-object v0, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->mRecoverableItemMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/eternal/provider/items/Recoverable;

    if-nez v0, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "Notifications"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v2, "General"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_2
    const-string v2, "Security"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "Accessibility"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v2, "Sound"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v2, "Advanced"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v2, "Connections"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_7
    const-string v2, "Display"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_8
    const-string v2, "LockScreen"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string v2, "Accounts"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    const-string v1, "RecoverableItemFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown submodule : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_0
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/AccountsItem;

    invoke-direct {v1}, Lcom/samsung/android/settings/eternal/provider/items/AccountsItem;-><init>()V

    move-object v0, v1

    goto :goto_1

    :pswitch_1
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;

    invoke-direct {v1}, Lcom/samsung/android/settings/eternal/provider/items/GeneralItem;-><init>()V

    move-object v0, v1

    goto :goto_1

    :pswitch_2
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/eternal/provider/items/AccessibilityItem;-><init>(Landroid/content/Context;)V

    move-object v0, v1

    goto :goto_1

    :pswitch_3
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/NotificationsItem;

    invoke-direct {v1}, Lcom/samsung/android/settings/eternal/provider/items/NotificationsItem;-><init>()V

    move-object v0, v1

    goto :goto_1

    :pswitch_4
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;

    invoke-direct {v1}, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;-><init>()V

    move-object v0, v1

    goto :goto_1

    :pswitch_5
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;

    invoke-direct {v1}, Lcom/samsung/android/settings/eternal/provider/items/AdvancedFeatureItem;-><init>()V

    move-object v0, v1

    goto :goto_1

    :pswitch_6
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/SecurityItem;

    invoke-direct {v1}, Lcom/samsung/android/settings/eternal/provider/items/SecurityItem;-><init>()V

    move-object v0, v1

    goto :goto_1

    :pswitch_7
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;

    invoke-direct {v1}, Lcom/samsung/android/settings/eternal/provider/items/LockScreenItem;-><init>()V

    move-object v0, v1

    goto :goto_1

    :pswitch_8
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;

    invoke-direct {v1}, Lcom/samsung/android/settings/eternal/provider/items/SoundItem;-><init>()V

    move-object v0, v1

    goto :goto_1

    :pswitch_9
    new-instance v1, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;

    invoke-direct {v1}, Lcom/samsung/android/settings/eternal/provider/items/DisplayItem;-><init>()V

    move-object v0, v1

    nop

    :goto_1
    if-eqz v0, :cond_1

    sget-object v1, Lcom/samsung/android/settings/eternal/provider/items/RecoverableItemFactory;->mRecoverableItemMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b87dffa -> :sswitch_9
        -0x54ec7e69 -> :sswitch_8
        -0x39224f5e -> :sswitch_7
        -0x35cafacb -> :sswitch_6
        -0x26fe33be -> :sswitch_5
        0x4c5d8ef -> :sswitch_4
        0x22eaf12e -> :sswitch_3
        0x3c6cdb60 -> :sswitch_2
        0x5e71a0c8 -> :sswitch_1
        0x7b75c4c8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
