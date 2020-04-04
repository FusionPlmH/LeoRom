.class Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;
.super Ljava/lang/Object;
.source "SecLockscreenNotificationApplist.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->initNotificationViewStylePreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

.field final synthetic val$viewStyleOption:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;[Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    iput-object p2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->val$viewStyleOption:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->access$302(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->access$400(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen_minimizing_notification"

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->access$300(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->access$500(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)Landroid/support/v7/preference/DropDownPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->val$viewStyleOption:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v2}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->access$300(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->getMetricsCategory()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1170

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->val$viewStyleOption:[Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->access$300(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)I

    move-result v3

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist$3;->this$0:Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->access$300(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;->access$600(Lcom/samsung/android/settings/lockscreen/SecLockscreenNotificationApplist;I)V

    const/4 v0, 0x1

    return v0
.end method
