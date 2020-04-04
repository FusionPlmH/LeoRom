.class Lcom/samsung/android/settings/display/AutoBrightness$1;
.super Landroid/database/ContentObserver;
.source "AutoBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/AutoBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/AutoBrightness;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/AutoBrightness;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/AutoBrightness$1;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness$1;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AutoBrightness;->access$000(Lcom/samsung/android/settings/display/AutoBrightness;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/display/AutoBrightness$1;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-static {v0}, Lcom/samsung/android/settings/display/AutoBrightness;->access$100(Lcom/samsung/android/settings/display/AutoBrightness;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/AutoBrightness$1;->this$0:Lcom/samsung/android/settings/display/AutoBrightness;

    invoke-static {v1}, Lcom/samsung/android/settings/display/AutoBrightness;->access$000(Lcom/samsung/android/settings/display/AutoBrightness;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    const/16 v1, 0x1cf6

    if-eqz v0, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :cond_2
    return-void
.end method
