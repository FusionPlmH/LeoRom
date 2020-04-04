.class Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;
.super Ljava/lang/Object;
.source "SecPreferenceConfig.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->access$000(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setUpdateButtonVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;

    invoke-static {v0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->access$100(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;)V

    const v0, 0x88b8

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1$1;-><init>(Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig$1;->this$0:Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/softwareinfo/SecPreferenceConfig;->setUpdateButtonVisibility(I)V

    :goto_0
    return-void
.end method
