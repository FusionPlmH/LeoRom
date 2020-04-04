.class Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;
.super Ljava/lang/Object;
.source "NewModePreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iput p2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/NewModePreview;->getCurrentScreenMode(Landroid/content/ContentResolver;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->getPositionFromValue(J)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget v3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->setChecked(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "blue_light_filter"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_2

    const-string v3, "ModePreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick() position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isBlueLightFilterOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " currentValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    if-eq v3, v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    iget v4, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    invoke-static {v3, v4}, Lcom/samsung/android/settings/display/NewModePreview;->access$600(Lcom/samsung/android/settings/display/NewModePreview;I)V

    :cond_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v5, v5, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mListItems:Ljava/util/List;

    iget v6, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$ScreenModeList;->getValue()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v7, v7, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v7}, Lcom/samsung/android/settings/display/NewModePreview;->access$700(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/LinearLayout;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v4, v4, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "screen_mode_automatic_setting"

    invoke-static {v4, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_mode_setting"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v3}, Lcom/samsung/android/settings/display/NewModePreview;->access$700(Lcom/samsung/android/settings/display/NewModePreview;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "screen_mode_automatic_setting"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_mode_setting"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-virtual {v3}, Lcom/samsung/android/settings/display/NewModePreview;->getMetricsCategory()I

    move-result v3

    const/16 v4, 0x107a

    iget v6, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->val$position:I

    int-to-long v6, v6

    invoke-static {v3, v4, v6, v7}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const-string v3, "ModePreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClick setScreenMode : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter$1;->this$1:Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/display/NewModePreview$ScreenModeAdapter;->this$0:Lcom/samsung/android/settings/display/NewModePreview;

    invoke-static {v3, v5}, Lcom/samsung/android/settings/display/NewModePreview;->access$800(Lcom/samsung/android/settings/display/NewModePreview;I)V

    return-void
.end method
