.class Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$14;
.super Ljava/lang/Object;
.source "MotionAndGestureSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->maketurnOffUniversalPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$14;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->isSupportExclusiveTaskManagerService()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$14;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/UsefulfeatureUtils;->turnOffUniversalSwitch(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$14;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->access$2900(Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_palm_swipe"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings$14;->this$0:Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/MotionAndGestureSettings;->getMetricsCategory()I

    move-result v0

    const/16 v1, 0x1112

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    return-void
.end method
