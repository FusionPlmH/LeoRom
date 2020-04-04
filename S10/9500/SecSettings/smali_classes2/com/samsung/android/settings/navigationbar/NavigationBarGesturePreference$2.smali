.class Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;
.super Ljava/lang/Object;
.source "NavigationBarGesturePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const/16 v1, 0x1d3e

    const/16 v2, 0x1d2e

    const v3, 0x7f0a0347

    const v4, 0x7f0a0343

    const/4 v5, 0x0

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_1

    const v6, 0x7f0a0642

    if-eq v0, v6, :cond_1

    const v3, 0x7f0a0759

    if-eq v0, v3, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "navigation_bar_gesture_while_hidden"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-wide/16 v3, 0x0

    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    goto :goto_2

    :cond_1
    if-ne v0, v4, :cond_2

    const/4 v3, 0x2

    :goto_0
    goto :goto_1

    :cond_2
    if-ne v0, v3, :cond_3

    const/4 v3, 0x3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    :goto_1
    if-eqz p2, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "any_screen_enabled"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "one_handed_op_wakeup_type"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$400(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-static {v1, v3}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->access$500(Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;I)V

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference$2;->this$0:Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;

    invoke-virtual {v4}, Lcom/samsung/android/settings/navigationbar/NavigationBarGesturePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "navigation_bar_gesture_while_hidden"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    int-to-long v4, v3

    invoke-static {v2, v1, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    :cond_5
    :goto_2
    return-void
.end method
