.class Lcom/samsung/android/settings/display/NewModePreview$5;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/NewModePreview;->showBluelightfilterDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/NewModePreview;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/NewModePreview;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iput p2, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v0}, Lcom/samsung/android/settings/display/NewModePreview;->access$300(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blue_light_filter"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.samsung.android.bluelightfilter"

    const-string v4, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v1}, Lcom/samsung/android/settings/display/NewModePreview;->access$300(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v1}, Lcom/samsung/android/settings/display/NewModePreview;->access$900(Lcom/samsung/android/settings/display/NewModePreview;)Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->val$position:I

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeItems;->getValueByPosition(I)I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v4}, Lcom/samsung/android/settings/display/NewModePreview;->access$700(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/NewModePreview;->access$300(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "screen_mode_automatic_setting"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/NewModePreview;->access$300(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "screen_mode_setting"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/NewModePreview;->access$700(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/NewModePreview;->access$300(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_mode_automatic_setting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v2}, Lcom/samsung/android/settings/display/NewModePreview;->access$300(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_mode_setting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/NewModePreview;->getMetricsCategory()I

    move-result v2

    const/16 v3, 0x107a

    iget v4, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->val$position:I

    int-to-long v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const-string v2, "ModePreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick setScreenMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$5;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/display/NewModePreview;->access$800(Lcom/samsung/android/settings/display/NewModePreview;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
