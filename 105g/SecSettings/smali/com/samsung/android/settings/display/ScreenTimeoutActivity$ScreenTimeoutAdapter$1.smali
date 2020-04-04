.class Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;
.super Ljava/lang/Object;
.source "ScreenTimeoutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iput p2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->setChecked(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v0, v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    iget v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->access$100(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->access$200(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "timeout_dex"

    iget-object v3, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->mListItems:Ljava/util/List;

    iget v4, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->val$position:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;

    invoke-virtual {v3}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$ScreenTimeoutList;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->setDeXSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->access$300(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/16 v1, 0x1074

    iget-object v2, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v2, v2, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-static {v2, v0}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->access$400(Lcom/samsung/android/settings/display/ScreenTimeoutActivity;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter$1;->this$1:Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/display/ScreenTimeoutActivity$ScreenTimeoutAdapter;->this$0:Lcom/samsung/android/settings/display/ScreenTimeoutActivity;

    invoke-virtual {v1}, Lcom/samsung/android/settings/display/ScreenTimeoutActivity;->finish()V

    return-void
.end method
